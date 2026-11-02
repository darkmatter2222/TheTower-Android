package com.google.android.gms.internal.p002firebaseauthapi;

import p005kotlin.text.Typography;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public enum zzwr implements zzalv {
    KEM_UNKNOWN(0),
    DHKEM_X25519_HKDF_SHA256(1),
    DHKEM_P256_HKDF_SHA256(2),
    DHKEM_P384_HKDF_SHA384(3),
    DHKEM_P521_HKDF_SHA512(4),
    X_WING(5),
    ML_KEM768(6),
    ML_KEM1024(7),
    UNRECOGNIZED(-1);

    private final int zzk;

    zzwr(int i) {
        this.zzk = i;
    }

    public static zzwr zza(int i) {
        switch (i) {
            case 0:
                return KEM_UNKNOWN;
            case 1:
                return DHKEM_X25519_HKDF_SHA256;
            case 2:
                return DHKEM_P256_HKDF_SHA256;
            case 3:
                return DHKEM_P384_HKDF_SHA384;
            case 4:
                return DHKEM_P521_HKDF_SHA512;
            case 5:
                return X_WING;
            case 6:
                return ML_KEM768;
            case 7:
                return ML_KEM1024;
            default:
                return null;
        }
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sb.append(getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(this)));
        if (this != UNRECOGNIZED) {
            sb.append(" number=").append(zza());
        }
        return sb.append(" name=").append(name()).append(Typography.greater).toString();
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzalv
    public final int zza() {
        return this == UNRECOGNIZED ? zzalw.zza() : this.zzk;
    }
}
