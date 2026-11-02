package com.google.android.gms.internal.p002firebaseauthapi;

import java.io.Serializable;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbk extends zzbc implements Serializable {
    static final zzbf zza = new zzbk(0);
    private final int zzb;

    static {
        new zzbk(zzbh.zza);
    }

    private zzbk(int i) {
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zzbk) && this.zzb == ((zzbk) obj).zzb;
    }

    public final int hashCode() {
        return getClass().hashCode() ^ this.zzb;
    }

    public final String toString() {
        return "Hashing.murmur3_128(" + this.zzb + ")";
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzbf
    public final zzbi zza() {
        return new zzbj(this.zzb);
    }
}
