package com.google.crypto.tink.streamingaead.internal;

import com.google.crypto.tink.Key;
import com.google.crypto.tink.Parameters;
import com.google.crypto.tink.SecretKeyAccess;
import com.google.crypto.tink.internal.KeyParser;
import com.google.crypto.tink.internal.KeySerializer;
import com.google.crypto.tink.internal.MutableSerializationRegistry;
import com.google.crypto.tink.internal.ParametersParser;
import com.google.crypto.tink.internal.ParametersSerializer;
import com.google.crypto.tink.internal.ProtoKeySerialization;
import com.google.crypto.tink.internal.ProtoParametersSerialization;
import com.google.crypto.tink.internal.Serialization;
import com.google.crypto.tink.internal.Util;
import com.google.crypto.tink.proto.AesGcmHkdfStreamingKeyFormat;
import com.google.crypto.tink.proto.AesGcmHkdfStreamingParams;
import com.google.crypto.tink.proto.HashType;
import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.proto.KeyTemplate;
import com.google.crypto.tink.proto.OutputPrefixType;
import com.google.crypto.tink.shaded.protobuf.ByteString;
import com.google.crypto.tink.shaded.protobuf.ExtensionRegistryLite;
import com.google.crypto.tink.shaded.protobuf.InvalidProtocolBufferException;
import com.google.crypto.tink.streamingaead.AesGcmHkdfStreamingKey;
import com.google.crypto.tink.streamingaead.AesGcmHkdfStreamingParameters;
import com.google.crypto.tink.util.Bytes;
import com.google.crypto.tink.util.SecretBytes;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class AesGcmHkdfStreamingProtoSerialization {
    private static final KeyParser<ProtoKeySerialization> KEY_PARSER;
    private static final KeySerializer<AesGcmHkdfStreamingKey, ProtoKeySerialization> KEY_SERIALIZER;
    private static final ParametersParser<ProtoParametersSerialization> PARAMETERS_PARSER;
    private static final ParametersSerializer<AesGcmHkdfStreamingParameters, ProtoParametersSerialization> PARAMETERS_SERIALIZER;
    private static final String TYPE_URL = "type.googleapis.com/google.crypto.tink.AesGcmHkdfStreamingKey";
    private static final Bytes TYPE_URL_BYTES;

    /* JADX INFO: renamed from: com.google.crypto.tink.streamingaead.internal.AesGcmHkdfStreamingProtoSerialization$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$crypto$tink$proto$HashType;

        static {
            int[] iArr = new int[HashType.values().length];
            $SwitchMap$com$google$crypto$tink$proto$HashType = iArr;
            try {
                iArr[HashType.SHA1.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$crypto$tink$proto$HashType[HashType.SHA256.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$crypto$tink$proto$HashType[HashType.SHA512.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static {
        Bytes bytesFromPrintableAscii = Util.toBytesFromPrintableAscii(TYPE_URL);
        TYPE_URL_BYTES = bytesFromPrintableAscii;
        PARAMETERS_SERIALIZER = ParametersSerializer.create(new ParametersSerializer.ParametersSerializationFunction() { // from class: com.google.crypto.tink.streamingaead.internal.AesGcmHkdfStreamingProtoSerialization$$ExternalSyntheticLambda0
            @Override // com.google.crypto.tink.internal.ParametersSerializer.ParametersSerializationFunction
            public final Serialization serializeParameters(Parameters parameters) {
                return AesGcmHkdfStreamingProtoSerialization.serializeParameters((AesGcmHkdfStreamingParameters) parameters);
            }
        }, AesGcmHkdfStreamingParameters.class, ProtoParametersSerialization.class);
        PARAMETERS_PARSER = ParametersParser.create(new ParametersParser.ParametersParsingFunction() { // from class: com.google.crypto.tink.streamingaead.internal.AesGcmHkdfStreamingProtoSerialization$$ExternalSyntheticLambda1
            @Override // com.google.crypto.tink.internal.ParametersParser.ParametersParsingFunction
            public final Parameters parseParameters(Serialization serialization) {
                return AesGcmHkdfStreamingProtoSerialization.parseParameters((ProtoParametersSerialization) serialization);
            }
        }, bytesFromPrintableAscii, ProtoParametersSerialization.class);
        KEY_SERIALIZER = KeySerializer.create(new KeySerializer.KeySerializationFunction() { // from class: com.google.crypto.tink.streamingaead.internal.AesGcmHkdfStreamingProtoSerialization$$ExternalSyntheticLambda2
            @Override // com.google.crypto.tink.internal.KeySerializer.KeySerializationFunction
            public final Serialization serializeKey(Key key, SecretKeyAccess secretKeyAccess) {
                return AesGcmHkdfStreamingProtoSerialization.serializeKey((AesGcmHkdfStreamingKey) key, secretKeyAccess);
            }
        }, AesGcmHkdfStreamingKey.class, ProtoKeySerialization.class);
        KEY_PARSER = KeyParser.create(new KeyParser.KeyParsingFunction() { // from class: com.google.crypto.tink.streamingaead.internal.AesGcmHkdfStreamingProtoSerialization$$ExternalSyntheticLambda3
            @Override // com.google.crypto.tink.internal.KeyParser.KeyParsingFunction
            public final Key parseKey(Serialization serialization, SecretKeyAccess secretKeyAccess) {
                return AesGcmHkdfStreamingProtoSerialization.parseKey((ProtoKeySerialization) serialization, secretKeyAccess);
            }
        }, bytesFromPrintableAscii, ProtoKeySerialization.class);
    }

    private AesGcmHkdfStreamingProtoSerialization() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AesGcmHkdfStreamingKey parseKey(ProtoKeySerialization protoKeySerialization, @Nullable SecretKeyAccess secretKeyAccess) throws GeneralSecurityException {
        if (!protoKeySerialization.getTypeUrl().equals(TYPE_URL)) {
            throw new IllegalArgumentException("Wrong type URL in call to AesGcmHkdfStreamingParameters.parseParameters");
        }
        try {
            com.google.crypto.tink.proto.AesGcmHkdfStreamingKey from = com.google.crypto.tink.proto.AesGcmHkdfStreamingKey.parseFrom(protoKeySerialization.getValue(), ExtensionRegistryLite.getEmptyRegistry());
            if (from.getVersion() == 0) {
                return AesGcmHkdfStreamingKey.create(toParametersObject(from.getParams(), from.getKeyValue().size()), SecretBytes.copyFrom(from.getKeyValue().toByteArray(), SecretKeyAccess.requireAccess(secretKeyAccess)));
            }
            throw new GeneralSecurityException("Only version 0 keys are accepted");
        } catch (InvalidProtocolBufferException unused) {
            throw new GeneralSecurityException("Parsing AesGcmHkdfStreamingKey failed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AesGcmHkdfStreamingParameters parseParameters(ProtoParametersSerialization protoParametersSerialization) throws GeneralSecurityException {
        if (!protoParametersSerialization.getKeyTemplate().getTypeUrl().equals(TYPE_URL)) {
            throw new IllegalArgumentException("Wrong type URL in call to AesGcmHkdfStreamingParameters.parseParameters: " + protoParametersSerialization.getKeyTemplate().getTypeUrl());
        }
        try {
            AesGcmHkdfStreamingKeyFormat from = AesGcmHkdfStreamingKeyFormat.parseFrom(protoParametersSerialization.getKeyTemplate().getValue(), ExtensionRegistryLite.getEmptyRegistry());
            if (from.getVersion() == 0) {
                return toParametersObject(from.getParams(), from.getKeySize());
            }
            throw new GeneralSecurityException("Only version 0 parameters are accepted");
        } catch (InvalidProtocolBufferException e) {
            throw new GeneralSecurityException("Parsing AesGcmHkdfStreamingParameters failed: ", e);
        }
    }

    public static void register() throws GeneralSecurityException {
        register(MutableSerializationRegistry.globalInstance());
    }

    public static void register(MutableSerializationRegistry mutableSerializationRegistry) throws GeneralSecurityException {
        mutableSerializationRegistry.registerParametersSerializer(PARAMETERS_SERIALIZER);
        mutableSerializationRegistry.registerParametersParser(PARAMETERS_PARSER);
        mutableSerializationRegistry.registerKeySerializer(KEY_SERIALIZER);
        mutableSerializationRegistry.registerKeyParser(KEY_PARSER);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ProtoKeySerialization serializeKey(AesGcmHkdfStreamingKey aesGcmHkdfStreamingKey, @Nullable SecretKeyAccess secretKeyAccess) throws GeneralSecurityException {
        return ProtoKeySerialization.create(TYPE_URL, ((com.google.crypto.tink.proto.AesGcmHkdfStreamingKey) com.google.crypto.tink.proto.AesGcmHkdfStreamingKey.newBuilder().setKeyValue(ByteString.copyFrom(aesGcmHkdfStreamingKey.getInitialKeyMaterial().toByteArray(SecretKeyAccess.requireAccess(secretKeyAccess)))).setParams(toProtoParams(aesGcmHkdfStreamingKey.getParameters())).build()).toByteString(), KeyData.KeyMaterialType.SYMMETRIC, OutputPrefixType.RAW, aesGcmHkdfStreamingKey.getIdRequirementOrNull());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ProtoParametersSerialization serializeParameters(AesGcmHkdfStreamingParameters aesGcmHkdfStreamingParameters) throws GeneralSecurityException {
        return ProtoParametersSerialization.create((KeyTemplate) KeyTemplate.newBuilder().setTypeUrl(TYPE_URL).setValue(((AesGcmHkdfStreamingKeyFormat) AesGcmHkdfStreamingKeyFormat.newBuilder().setKeySize(aesGcmHkdfStreamingParameters.getKeySizeBytes()).setParams(toProtoParams(aesGcmHkdfStreamingParameters)).build()).toByteString()).setOutputPrefixType(OutputPrefixType.RAW).build());
    }

    private static AesGcmHkdfStreamingParameters.HashType toHashType(HashType hashType) throws GeneralSecurityException {
        int i = AnonymousClass1.$SwitchMap$com$google$crypto$tink$proto$HashType[hashType.ordinal()];
        if (i == 1) {
            return AesGcmHkdfStreamingParameters.HashType.SHA1;
        }
        if (i == 2) {
            return AesGcmHkdfStreamingParameters.HashType.SHA256;
        }
        if (i == 3) {
            return AesGcmHkdfStreamingParameters.HashType.SHA512;
        }
        throw new GeneralSecurityException("Unable to parse HashType: " + hashType.getNumber());
    }

    private static AesGcmHkdfStreamingParameters toParametersObject(AesGcmHkdfStreamingParams aesGcmHkdfStreamingParams, int i) throws GeneralSecurityException {
        return AesGcmHkdfStreamingParameters.builder().setKeySizeBytes(i).setDerivedAesGcmKeySizeBytes(aesGcmHkdfStreamingParams.getDerivedKeySize()).setCiphertextSegmentSizeBytes(aesGcmHkdfStreamingParams.getCiphertextSegmentSize()).setHkdfHashType(toHashType(aesGcmHkdfStreamingParams.getHkdfHashType())).build();
    }

    private static HashType toProtoHashType(AesGcmHkdfStreamingParameters.HashType hashType) throws GeneralSecurityException {
        if (AesGcmHkdfStreamingParameters.HashType.SHA1.equals(hashType)) {
            return HashType.SHA1;
        }
        if (AesGcmHkdfStreamingParameters.HashType.SHA256.equals(hashType)) {
            return HashType.SHA256;
        }
        if (AesGcmHkdfStreamingParameters.HashType.SHA512.equals(hashType)) {
            return HashType.SHA512;
        }
        throw new GeneralSecurityException("Unable to serialize HashType " + hashType);
    }

    private static AesGcmHkdfStreamingParams toProtoParams(AesGcmHkdfStreamingParameters aesGcmHkdfStreamingParameters) throws GeneralSecurityException {
        return (AesGcmHkdfStreamingParams) AesGcmHkdfStreamingParams.newBuilder().setCiphertextSegmentSize(aesGcmHkdfStreamingParameters.getCiphertextSegmentSizeBytes()).setDerivedKeySize(aesGcmHkdfStreamingParameters.getDerivedAesGcmKeySizeBytes()).setHkdfHashType(toProtoHashType(aesGcmHkdfStreamingParameters.getHkdfHashType())).build();
    }
}
