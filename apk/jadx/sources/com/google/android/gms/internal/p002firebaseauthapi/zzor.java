package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzor extends zzcs {
    private final zzcx zza;

    public zzor(zzcx zzcxVar) {
        this.zza = zzcxVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzor)) {
            return false;
        }
        zzcx zzcxVar = ((zzor) obj).zza;
        return this.zza.zza().equals(zzcxVar.zza()) && this.zza.zzc().equals(zzcxVar.zzc()) && this.zza.zzb().equals(zzcxVar.zzb());
    }

    public final int hashCode() {
        return Objects.hash(this.zza.zzc(), this.zza.zzb(), this.zza.zza());
    }

    public final String toString() {
        return String.format("(typeUrl=%s, outputPrefixType=%s)", this.zza.zzc(), this.zza.zza());
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzcs
    public final boolean zza() {
        return !this.zza.zza().equals(zzcv.zzd);
    }

    public final zzcx zzb() {
        return this.zza;
    }
}
