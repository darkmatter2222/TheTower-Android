package com.google.crypto.tink;

import com.google.crypto.tink.internal.LegacyProtoParameters;
import com.google.crypto.tink.internal.MutableSerializationRegistry;
import com.google.crypto.tink.internal.ProtoParametersSerialization;
import com.google.crypto.tink.shaded.protobuf.ExtensionRegistryLite;
import java.io.IOException;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public final class TinkProtoParametersFormat {
    private TinkProtoParametersFormat() {
    }

    public static Parameters parse(byte[] bArr) throws GeneralSecurityException {
        try {
            return MutableSerializationRegistry.globalInstance().parseParametersWithLegacyFallback(ProtoParametersSerialization.checkedCreate(com.google.crypto.tink.proto.KeyTemplate.parseFrom(bArr, ExtensionRegistryLite.getEmptyRegistry())));
        } catch (IOException e) {
            throw new GeneralSecurityException("Failed to parse proto", e);
        }
    }

    public static byte[] serialize(Parameters parameters) throws GeneralSecurityException {
        return parameters instanceof LegacyProtoParameters ? ((LegacyProtoParameters) parameters).getSerialization().getKeyTemplate().toByteArray() : ((ProtoParametersSerialization) MutableSerializationRegistry.globalInstance().serializeParameters(parameters, ProtoParametersSerialization.class)).getKeyTemplate().toByteArray();
    }
}
