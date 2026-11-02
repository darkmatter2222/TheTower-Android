package com.google.crypto.tink.integration.android;

import android.content.Context;
import android.preference.PreferenceManager;
import android.util.Log;
import com.google.crypto.tink.Aead;
import com.google.crypto.tink.BinaryKeysetReader;
import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.KeyTemplate;
import com.google.crypto.tink.KeysetHandle;
import com.google.crypto.tink.KeysetManager;
import com.google.crypto.tink.KeysetWriter;
import com.google.crypto.tink.LegacyKeysetSerialization;
import com.google.crypto.tink.TinkProtoParametersFormat;
import com.google.crypto.tink.subtle.Hex;
import java.io.CharConversionException;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.KeyStoreException;
import java.security.ProviderException;

/* JADX INFO: loaded from: classes3.dex */
public final class AndroidKeysetManager {
    private static final String TAG = "AndroidKeysetManager";
    private static final Object lock = new Object();
    private KeysetManager keysetManager;
    private final Aead masterAead;
    private final KeysetWriter writer;

    public static final class Builder {
        private KeysetManager keysetManager;
        private Context context = null;
        private String keysetName = null;
        private String prefFileName = null;
        private String masterKeyUri = null;
        private Aead masterAead = null;
        private boolean useKeystore = true;
        private KeyTemplate keyTemplate = null;
        private com.google.crypto.tink.proto.KeyTemplate keyTemplateProto = null;

        private KeysetManager generateKeysetAndWriteToPrefs() throws GeneralSecurityException, IOException {
            KeyTemplate keyTemplate = this.keyTemplate;
            if (keyTemplate == null) {
                throw new GeneralSecurityException("cannot read or generate keyset");
            }
            KeysetHandle keysetHandleGenerateNew = KeysetHandle.generateNew(keyTemplate);
            AndroidKeysetManager.write(keysetHandleGenerateNew, new SharedPrefKeysetWriter(this.context, this.keysetName, this.prefFileName), this.masterAead);
            return KeysetManager.withKeysetHandle(keysetHandleGenerateNew);
        }

        private static byte[] readKeysetFromPrefs(Context context, String str, String str2) throws IOException {
            if (str == null) {
                throw new IllegalArgumentException("keysetName cannot be null");
            }
            Context applicationContext = context.getApplicationContext();
            try {
                String string = (str2 == null ? PreferenceManager.getDefaultSharedPreferences(applicationContext) : applicationContext.getSharedPreferences(str2, 0)).getString(str, null);
                if (string == null) {
                    return null;
                }
                return Hex.decode(string);
            } catch (ClassCastException | IllegalArgumentException unused) {
                throw new CharConversionException(String.format("can't read keyset; the pref value %s is not a valid hex string", str));
            }
        }

        private KeysetManager readKeysetInCleartext(byte[] bArr) throws GeneralSecurityException, IOException {
            return KeysetManager.withKeysetHandle(LegacyKeysetSerialization.parseKeyset(BinaryKeysetReader.withBytes(bArr), InsecureSecretKeyAccess.get()));
        }

        private KeysetManager readMasterkeyDecryptAndParseKeyset(byte[] bArr) throws GeneralSecurityException, IOException {
            try {
                this.masterAead = new AndroidKeystoreKmsClient().getAead(this.masterKeyUri);
                try {
                    return KeysetManager.withKeysetHandle(LegacyKeysetSerialization.parseEncryptedKeyset(BinaryKeysetReader.withBytes(bArr), this.masterAead, new byte[0]));
                } catch (IOException | GeneralSecurityException e) {
                    try {
                        return readKeysetInCleartext(bArr);
                    } catch (IOException unused) {
                        throw e;
                    }
                }
            } catch (GeneralSecurityException | ProviderException e2) {
                try {
                    KeysetManager keysetInCleartext = readKeysetInCleartext(bArr);
                    Log.w(AndroidKeysetManager.TAG, "cannot use Android Keystore, it'll be disabled", e2);
                    return keysetInCleartext;
                } catch (IOException unused2) {
                    throw e2;
                }
            }
        }

        private Aead readOrGenerateNewMasterKey() throws GeneralSecurityException {
            if (!AndroidKeysetManager.isAtLeastM()) {
                Log.w(AndroidKeysetManager.TAG, "Android Keystore requires at least Android M");
                return null;
            }
            AndroidKeystoreKmsClient androidKeystoreKmsClient = new AndroidKeystoreKmsClient();
            try {
                boolean zGenerateKeyIfNotExist = AndroidKeystoreKmsClient.generateKeyIfNotExist(this.masterKeyUri);
                try {
                    return androidKeystoreKmsClient.getAead(this.masterKeyUri);
                } catch (GeneralSecurityException | ProviderException e) {
                    if (!zGenerateKeyIfNotExist) {
                        throw new KeyStoreException(String.format("the master key %s exists but is unusable", this.masterKeyUri), e);
                    }
                    Log.w(AndroidKeysetManager.TAG, "cannot use Android Keystore, it'll be disabled", e);
                    return null;
                }
            } catch (GeneralSecurityException | ProviderException e2) {
                Log.w(AndroidKeysetManager.TAG, "cannot use Android Keystore, it'll be disabled", e2);
                return null;
            }
        }

        public synchronized AndroidKeysetManager build() throws GeneralSecurityException, IOException {
            AndroidKeysetManager androidKeysetManager;
            if (this.keysetName == null) {
                throw new IllegalArgumentException("keysetName cannot be null");
            }
            com.google.crypto.tink.proto.KeyTemplate keyTemplate = this.keyTemplateProto;
            if (keyTemplate != null && this.keyTemplate == null) {
                this.keyTemplate = KeyTemplate.createFrom(TinkProtoParametersFormat.parse(keyTemplate.toByteArray()));
            }
            synchronized (AndroidKeysetManager.lock) {
                byte[] keysetFromPrefs = readKeysetFromPrefs(this.context, this.keysetName, this.prefFileName);
                if (keysetFromPrefs == null) {
                    if (this.masterKeyUri != null) {
                        this.masterAead = readOrGenerateNewMasterKey();
                    }
                    this.keysetManager = generateKeysetAndWriteToPrefs();
                } else if (this.masterKeyUri == null || !AndroidKeysetManager.isAtLeastM()) {
                    this.keysetManager = readKeysetInCleartext(keysetFromPrefs);
                } else {
                    this.keysetManager = readMasterkeyDecryptAndParseKeyset(keysetFromPrefs);
                }
                androidKeysetManager = new AndroidKeysetManager(this);
            }
            return androidKeysetManager;
        }

        @Deprecated
        public Builder doNotUseKeystore() {
            this.masterKeyUri = null;
            this.useKeystore = false;
            return this;
        }

        public Builder withKeyTemplate(KeyTemplate keyTemplate) {
            this.keyTemplate = keyTemplate;
            return this;
        }

        public Builder withKeyTemplate(com.google.crypto.tink.proto.KeyTemplate keyTemplate) {
            this.keyTemplateProto = keyTemplate;
            return this;
        }

        public Builder withMasterKeyUri(String str) {
            if (!str.startsWith(AndroidKeystoreKmsClient.PREFIX)) {
                throw new IllegalArgumentException("key URI must start with android-keystore://");
            }
            if (!this.useKeystore) {
                throw new IllegalArgumentException("cannot call withMasterKeyUri() after calling doNotUseKeystore()");
            }
            this.masterKeyUri = str;
            return this;
        }

        public Builder withSharedPref(Context context, String str, String str2) throws IOException {
            if (context == null) {
                throw new IllegalArgumentException("need an Android context");
            }
            if (str == null) {
                throw new IllegalArgumentException("need a keyset name");
            }
            this.context = context;
            this.keysetName = str;
            this.prefFileName = str2;
            return this;
        }
    }

    private AndroidKeysetManager(Builder builder) {
        this.writer = new SharedPrefKeysetWriter(builder.context, builder.keysetName, builder.prefFileName);
        this.masterAead = builder.masterAead;
        this.keysetManager = builder.keysetManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isAtLeastM() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void write(KeysetHandle keysetHandle, KeysetWriter keysetWriter, Aead aead) throws GeneralSecurityException {
        try {
            if (aead != null) {
                LegacyKeysetSerialization.serializeEncryptedKeyset(keysetHandle, keysetWriter, aead, new byte[0]);
            } else {
                LegacyKeysetSerialization.serializeKeyset(keysetHandle, keysetWriter, InsecureSecretKeyAccess.get());
            }
        } catch (IOException e) {
            throw new GeneralSecurityException(e);
        }
    }

    public synchronized AndroidKeysetManager add(KeyTemplate keyTemplate) throws GeneralSecurityException {
        KeysetManager keysetManagerAdd = this.keysetManager.add(keyTemplate);
        this.keysetManager = keysetManagerAdd;
        write(keysetManagerAdd.getKeysetHandle(), this.writer, this.masterAead);
        return this;
    }

    public synchronized AndroidKeysetManager add(com.google.crypto.tink.proto.KeyTemplate keyTemplate) throws GeneralSecurityException {
        KeysetManager keysetManagerAdd = this.keysetManager.add(keyTemplate);
        this.keysetManager = keysetManagerAdd;
        write(keysetManagerAdd.getKeysetHandle(), this.writer, this.masterAead);
        return this;
    }

    public synchronized AndroidKeysetManager delete(int i) throws GeneralSecurityException {
        KeysetManager keysetManagerDelete = this.keysetManager.delete(i);
        this.keysetManager = keysetManagerDelete;
        write(keysetManagerDelete.getKeysetHandle(), this.writer, this.masterAead);
        return this;
    }

    public synchronized AndroidKeysetManager destroy(int i) throws GeneralSecurityException {
        KeysetManager keysetManagerDestroy = this.keysetManager.destroy(i);
        this.keysetManager = keysetManagerDestroy;
        write(keysetManagerDestroy.getKeysetHandle(), this.writer, this.masterAead);
        return this;
    }

    public synchronized AndroidKeysetManager disable(int i) throws GeneralSecurityException {
        KeysetManager keysetManagerDisable = this.keysetManager.disable(i);
        this.keysetManager = keysetManagerDisable;
        write(keysetManagerDisable.getKeysetHandle(), this.writer, this.masterAead);
        return this;
    }

    public synchronized AndroidKeysetManager enable(int i) throws GeneralSecurityException {
        KeysetManager keysetManagerEnable = this.keysetManager.enable(i);
        this.keysetManager = keysetManagerEnable;
        write(keysetManagerEnable.getKeysetHandle(), this.writer, this.masterAead);
        return this;
    }

    public synchronized KeysetHandle getKeysetHandle() throws GeneralSecurityException {
        return this.keysetManager.getKeysetHandle();
    }

    public synchronized boolean isUsingKeystore() {
        return this.masterAead != null;
    }

    @Deprecated
    public synchronized AndroidKeysetManager promote(int i) throws GeneralSecurityException {
        return setPrimary(i);
    }

    @Deprecated
    public synchronized AndroidKeysetManager rotate(com.google.crypto.tink.proto.KeyTemplate keyTemplate) throws GeneralSecurityException {
        KeysetManager keysetManagerRotate = this.keysetManager.rotate(keyTemplate);
        this.keysetManager = keysetManagerRotate;
        write(keysetManagerRotate.getKeysetHandle(), this.writer, this.masterAead);
        return this;
    }

    public synchronized AndroidKeysetManager setPrimary(int i) throws GeneralSecurityException {
        KeysetManager primary = this.keysetManager.setPrimary(i);
        this.keysetManager = primary;
        write(primary.getKeysetHandle(), this.writer, this.masterAead);
        return this;
    }
}
