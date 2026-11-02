package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaav {
    private final zzaau zza;

    private zzaav(zzaau zzaauVar) {
        this.zza = zzaauVar;
    }

    public static zzaav zza(int i) {
        return new zzaav(zzaau.zza(zzqm.zza(i)));
    }

    public static zzaav zza(byte[] bArr, zzdd zzddVar) {
        if (zzddVar != null) {
            return new zzaav(zzaau.zza(bArr));
        }
        throw new NullPointerException("SecretKeyAccess required");
    }

    public final int zza() {
        return this.zza.zza();
    }

    public final byte[] zza(zzdd zzddVar) {
        if (zzddVar != null) {
            return this.zza.zzb();
        }
        throw new NullPointerException("SecretKeyAccess required");
    }
}
