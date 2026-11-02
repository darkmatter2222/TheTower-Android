package com.google.crypto.tink;

import com.google.crypto.tink.proto.KeysetInfo;
import java.io.IOException;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public final class LegacyKeysetSerialization {
    private LegacyKeysetSerialization() {
    }

    public static KeysetInfo getKeysetInfo(KeysetHandle keysetHandle) {
        return keysetHandle.getKeysetInfo();
    }

    public static KeysetHandle parseEncryptedKeyset(KeysetReader keysetReader, Aead aead, byte[] bArr) throws GeneralSecurityException, IOException {
        return KeysetHandle.readWithAssociatedData(keysetReader, aead, bArr);
    }

    public static KeysetHandle parseKeyset(KeysetReader keysetReader, SecretKeyAccess secretKeyAccess) throws GeneralSecurityException, IOException {
        if (secretKeyAccess != null) {
            return CleartextKeysetHandle.read(keysetReader);
        }
        throw new NullPointerException("SecretKeyAccess cannot be null");
    }

    public static KeysetHandle parseKeysetWithoutSecret(KeysetReader keysetReader) throws GeneralSecurityException, IOException {
        return KeysetHandle.readNoSecret(keysetReader);
    }

    public static void serializeEncryptedKeyset(KeysetHandle keysetHandle, KeysetWriter keysetWriter, Aead aead, byte[] bArr) throws GeneralSecurityException, IOException {
        keysetHandle.writeWithAssociatedData(keysetWriter, aead, bArr);
    }

    public static void serializeKeyset(KeysetHandle keysetHandle, KeysetWriter keysetWriter, SecretKeyAccess secretKeyAccess) throws IOException {
        if (secretKeyAccess == null) {
            throw new NullPointerException("SecretKeyAccess cannot be null");
        }
        CleartextKeysetHandle.write(keysetHandle, keysetWriter);
    }

    public static void serializeKeysetWithoutSecret(KeysetHandle keysetHandle, KeysetWriter keysetWriter) throws GeneralSecurityException, IOException {
        keysetHandle.writeNoSecret(keysetWriter);
    }
}
