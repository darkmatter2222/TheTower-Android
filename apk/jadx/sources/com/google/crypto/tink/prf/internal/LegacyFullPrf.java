package com.google.crypto.tink.prf.internal;

import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.internal.KeyManagerRegistry;
import com.google.crypto.tink.internal.LegacyProtoKey;
import com.google.crypto.tink.internal.ProtoKeySerialization;
import com.google.crypto.tink.prf.Prf;
import com.google.errorprone.annotations.Immutable;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class LegacyFullPrf implements Prf {
    private final Prf rawPrf;

    private LegacyFullPrf(Prf prf) {
        this.rawPrf = prf;
    }

    public static Prf create(LegacyProtoKey legacyProtoKey) throws GeneralSecurityException {
        ProtoKeySerialization serialization = legacyProtoKey.getSerialization(InsecureSecretKeyAccess.get());
        return new LegacyFullPrf((Prf) KeyManagerRegistry.globalInstance().getKeyManager(serialization.getTypeUrl(), Prf.class).getPrimitive(serialization.getValue()));
    }

    @Override // com.google.crypto.tink.prf.Prf
    public byte[] compute(byte[] bArr, int i) throws GeneralSecurityException {
        return this.rawPrf.compute(bArr, i);
    }
}
