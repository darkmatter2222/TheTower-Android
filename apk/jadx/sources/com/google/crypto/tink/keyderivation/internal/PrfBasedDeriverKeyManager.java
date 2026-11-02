package com.google.crypto.tink.keyderivation.internal;

import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.Key;
import com.google.crypto.tink.KeyManager;
import com.google.crypto.tink.Parameters;
import com.google.crypto.tink.internal.KeyCreator;
import com.google.crypto.tink.internal.KeyManagerRegistry;
import com.google.crypto.tink.internal.MutableKeyCreationRegistry;
import com.google.crypto.tink.internal.MutablePrimitiveRegistry;
import com.google.crypto.tink.internal.MutableSerializationRegistry;
import com.google.crypto.tink.internal.PrimitiveConstructor;
import com.google.crypto.tink.internal.ProtoKeySerialization;
import com.google.crypto.tink.internal.ProtoParametersSerialization;
import com.google.crypto.tink.keyderivation.PrfBasedKeyDerivationKey;
import com.google.crypto.tink.keyderivation.PrfBasedKeyDerivationParameters;
import com.google.crypto.tink.prf.PrfKey;
import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.proto.KeyTemplate;
import com.google.crypto.tink.proto.OutputPrefixType;
import com.google.crypto.tink.proto.PrfBasedDeriverKey;
import com.google.crypto.tink.proto.PrfBasedDeriverKeyFormat;
import com.google.crypto.tink.shaded.protobuf.ByteString;
import com.google.crypto.tink.shaded.protobuf.ExtensionRegistryLite;
import com.google.crypto.tink.shaded.protobuf.InvalidProtocolBufferException;
import com.google.crypto.tink.shaded.protobuf.MessageLite;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class PrfBasedDeriverKeyManager implements KeyManager<Void> {
    private static final String TYPE_URL = "type.googleapis.com/google.crypto.tink.PrfBasedDeriverKey";
    private static final PrimitiveConstructor<PrfBasedKeyDerivationKey, KeyDeriver> PRIMITIVE_CONSTRUCTOR = PrimitiveConstructor.create(new PrimitiveConstructor.PrimitiveConstructionFunction() { // from class: com.google.crypto.tink.keyderivation.internal.PrfBasedDeriverKeyManager$$ExternalSyntheticLambda0
        @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
        public final Object constructPrimitive(Key key) {
            return PrfBasedKeyDeriver.create((PrfBasedKeyDerivationKey) key);
        }
    }, PrfBasedKeyDerivationKey.class, KeyDeriver.class);
    private static final KeyCreator<PrfBasedKeyDerivationParameters> KEY_CREATOR = new KeyCreator() { // from class: com.google.crypto.tink.keyderivation.internal.PrfBasedDeriverKeyManager$$ExternalSyntheticLambda1
        @Override // com.google.crypto.tink.internal.KeyCreator
        public final Key createKey(Parameters parameters, Integer num) {
            return PrfBasedDeriverKeyManager.createNewKey((PrfBasedKeyDerivationParameters) parameters, num);
        }
    };

    PrfBasedDeriverKeyManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PrfBasedKeyDerivationKey createNewKey(PrfBasedKeyDerivationParameters prfBasedKeyDerivationParameters, @Nullable Integer num) throws GeneralSecurityException {
        Key keyCreateKey = MutableKeyCreationRegistry.globalInstance().createKey(prfBasedKeyDerivationParameters.getPrfParameters(), null);
        if (keyCreateKey instanceof PrfKey) {
            return PrfBasedKeyDerivationKey.create(prfBasedKeyDerivationParameters, (PrfKey) keyCreateKey, num);
        }
        throw new GeneralSecurityException("Failed to create PrfKey from parameters" + prfBasedKeyDerivationParameters.getPrfParameters() + ", instead got " + keyCreateKey.getClass());
    }

    private static OutputPrefixType getOutputPrefixTypeFromSerializedKeyFormat(ByteString byteString) throws GeneralSecurityException {
        try {
            return PrfBasedDeriverKeyFormat.parseFrom(byteString, ExtensionRegistryLite.getEmptyRegistry()).getParams().getDerivedKeyTemplate().getOutputPrefixType();
        } catch (InvalidProtocolBufferException e) {
            throw new GeneralSecurityException("Unexpectedly failed to parse key format", e);
        }
    }

    public static void register(boolean z) throws GeneralSecurityException {
        KeyManagerRegistry.globalInstance().registerKeyManager(new PrfBasedDeriverKeyManager(), z);
        MutableKeyCreationRegistry.globalInstance().add(KEY_CREATOR, PrfBasedKeyDerivationParameters.class);
        MutablePrimitiveRegistry.globalInstance().registerPrimitiveConstructor(PRIMITIVE_CONSTRUCTOR);
        PrfBasedKeyDerivationKeyProtoSerialization.register();
    }

    @Override // com.google.crypto.tink.KeyManager
    public final boolean doesSupport(String str) {
        return str.equals(getKeyType());
    }

    @Override // com.google.crypto.tink.KeyManager
    public final String getKeyType() {
        return TYPE_URL;
    }

    @Override // com.google.crypto.tink.KeyManager
    public Void getPrimitive(ByteString byteString) throws GeneralSecurityException {
        throw new GeneralSecurityException("Cannot use the KeyManager to get a primitive for KeyDerivation");
    }

    @Override // com.google.crypto.tink.KeyManager
    public final Void getPrimitive(MessageLite messageLite) throws GeneralSecurityException {
        throw new GeneralSecurityException("Cannot use the KeyManager to get a primitive for KeyDerivation");
    }

    @Override // com.google.crypto.tink.KeyManager
    public final Class<Void> getPrimitiveClass() {
        return Void.class;
    }

    @Override // com.google.crypto.tink.KeyManager
    public int getVersion() {
        return 0;
    }

    @Override // com.google.crypto.tink.KeyManager
    public final MessageLite newKey(ByteString byteString) throws GeneralSecurityException {
        try {
            return PrfBasedDeriverKey.parseFrom(newKeyData(byteString).getValue(), ExtensionRegistryLite.getEmptyRegistry());
        } catch (InvalidProtocolBufferException unused) {
            throw new GeneralSecurityException("Unexpectedly failed to parse key");
        }
    }

    @Override // com.google.crypto.tink.KeyManager
    public final MessageLite newKey(MessageLite messageLite) throws GeneralSecurityException {
        return newKey(messageLite.toByteString());
    }

    @Override // com.google.crypto.tink.KeyManager
    public final KeyData newKeyData(ByteString byteString) throws GeneralSecurityException {
        OutputPrefixType outputPrefixTypeFromSerializedKeyFormat = getOutputPrefixTypeFromSerializedKeyFormat(byteString);
        ProtoKeySerialization protoKeySerialization = (ProtoKeySerialization) MutableSerializationRegistry.globalInstance().serializeKey(MutableKeyCreationRegistry.globalInstance().createKey(MutableSerializationRegistry.globalInstance().parseParameters(ProtoParametersSerialization.checkedCreate((KeyTemplate) KeyTemplate.newBuilder().setTypeUrl(TYPE_URL).setValue(byteString).setOutputPrefixType(outputPrefixTypeFromSerializedKeyFormat).build())), !outputPrefixTypeFromSerializedKeyFormat.equals(OutputPrefixType.RAW) ? 123 : null), ProtoKeySerialization.class, InsecureSecretKeyAccess.get());
        return (KeyData) KeyData.newBuilder().setTypeUrl(protoKeySerialization.getTypeUrl()).setValue(protoKeySerialization.getValue()).setKeyMaterialType(protoKeySerialization.getKeyMaterialType()).build();
    }
}
