package com.google.crypto.tink.signature.internal;

import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.PublicKeySign;
import com.google.crypto.tink.internal.KeyManagerRegistry;
import com.google.crypto.tink.internal.LegacyProtoKey;
import com.google.crypto.tink.internal.ProtoKeySerialization;
import com.google.crypto.tink.subtle.Bytes;
import com.google.errorprone.annotations.Immutable;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public final class LegacyFullSign implements PublicKeySign {
    private final byte[] messageSuffix;
    private final byte[] outputPrefix;
    private final PublicKeySign rawSigner;

    private LegacyFullSign(PublicKeySign publicKeySign, byte[] bArr, byte[] bArr2) {
        this.rawSigner = publicKeySign;
        this.outputPrefix = bArr;
        this.messageSuffix = bArr2;
    }

    public static PublicKeySign create(LegacyProtoKey legacyProtoKey) throws GeneralSecurityException {
        ProtoKeySerialization serialization = legacyProtoKey.getSerialization(InsecureSecretKeyAccess.get());
        return new LegacyFullSign((PublicKeySign) KeyManagerRegistry.globalInstance().getKeyManager(serialization.getTypeUrl(), PublicKeySign.class).getPrimitive(serialization.getValue()), LegacyFullVerify.getOutputPrefix(serialization), LegacyFullVerify.getMessageSuffix(serialization));
    }

    @Override // com.google.crypto.tink.PublicKeySign
    public byte[] sign(byte[] bArr) throws GeneralSecurityException {
        byte[] bArr2 = this.messageSuffix;
        byte[] bArrSign = bArr2.length == 0 ? this.rawSigner.sign(bArr) : this.rawSigner.sign(Bytes.concat(bArr, bArr2));
        byte[] bArr3 = this.outputPrefix;
        return bArr3.length == 0 ? bArrSign : Bytes.concat(bArr3, bArrSign);
    }
}
