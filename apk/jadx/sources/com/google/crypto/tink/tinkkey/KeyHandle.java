package com.google.crypto.tink.tinkkey;

import com.google.crypto.tink.KeyManager;
import com.google.crypto.tink.KeyTemplate;
import com.google.crypto.tink.TinkProtoParametersFormat;
import com.google.crypto.tink.internal.KeyManagerRegistry;
import com.google.crypto.tink.internal.KeyTemplateProtoConverter;
import com.google.crypto.tink.internal.Util;
import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.shaded.protobuf.ExtensionRegistryLite;
import com.google.crypto.tink.shaded.protobuf.InvalidProtocolBufferException;
import com.google.crypto.tink.tinkkey.internal.ProtoKey;
import com.google.errorprone.annotations.Immutable;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class KeyHandle {
    private final int id;
    private final TinkKey key;
    private final KeyStatusType status;

    public enum KeyStatusType {
        ENABLED,
        DISABLED,
        DESTROYED
    }

    private KeyHandle(TinkKey tinkKey) {
        this.key = tinkKey;
        this.status = KeyStatusType.ENABLED;
        this.id = Util.randKeyId();
    }

    protected KeyHandle(TinkKey tinkKey, KeyStatusType keyStatusType, int i) {
        this.key = tinkKey;
        this.status = keyStatusType;
        this.id = i;
    }

    private void checkAccess(KeyAccess keyAccess) throws GeneralSecurityException {
        if (hasSecret() && !keyAccess.canAccessSecret()) {
            throw new GeneralSecurityException("No access");
        }
    }

    public static KeyHandle createFromKey(KeyData keyData, KeyTemplate.OutputPrefixType outputPrefixType) {
        return new KeyHandle(new ProtoKey(keyData, outputPrefixType));
    }

    public static KeyHandle createFromKey(TinkKey tinkKey, KeyAccess keyAccess) throws GeneralSecurityException {
        KeyHandle keyHandle = new KeyHandle(tinkKey);
        keyHandle.checkAccess(keyAccess);
        return keyHandle;
    }

    public static KeyHandle generateNew(KeyTemplate keyTemplate) throws GeneralSecurityException {
        return new KeyHandle(new ProtoKey(newKeyData(keyTemplate), KeyTemplateProtoConverter.getOutputPrefixType(keyTemplate)));
    }

    private static KeyData newKeyData(KeyTemplate keyTemplate) throws GeneralSecurityException {
        try {
            com.google.crypto.tink.proto.KeyTemplate from = com.google.crypto.tink.proto.KeyTemplate.parseFrom(TinkProtoParametersFormat.serialize(keyTemplate.toParameters()), ExtensionRegistryLite.getEmptyRegistry());
            KeyManager<?> untypedKeyManager = KeyManagerRegistry.globalInstance().getUntypedKeyManager(from.getTypeUrl());
            if (KeyManagerRegistry.globalInstance().isNewKeyAllowed(from.getTypeUrl())) {
                return untypedKeyManager.newKeyData(from.getValue());
            }
            throw new GeneralSecurityException("newKey-operation not permitted for key type " + from.getTypeUrl());
        } catch (InvalidProtocolBufferException e) {
            throw new GeneralSecurityException("Failed to parse serialized parameters", e);
        }
    }

    public int getId() {
        return this.id;
    }

    public TinkKey getKey(KeyAccess keyAccess) throws GeneralSecurityException {
        checkAccess(keyAccess);
        return this.key;
    }

    public KeyTemplate getKeyTemplate() {
        return this.key.getKeyTemplate();
    }

    public KeyStatusType getStatus() {
        return this.status;
    }

    public boolean hasSecret() {
        return this.key.hasSecret();
    }
}
