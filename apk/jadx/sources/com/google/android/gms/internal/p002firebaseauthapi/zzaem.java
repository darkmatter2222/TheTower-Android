package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.internal.zzj;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaem extends zzafn<Void, zzj> {
    private final String zzv;

    public zzaem(String str) {
        super(2);
        this.zzv = Preconditions.checkNotEmpty(str, "email cannot be null or empty");
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzafz
    public final String zza() {
        return "updateEmail";
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzafz
    public final void zza(TaskCompletionSource taskCompletionSource, zzaet zzaetVar) {
        this.zzg = new zzafu(this, taskCompletionSource);
        zzaetVar.zzb(this.zzd.zze(), this.zzv, this.zzb);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzafn
    public final void zzb() {
        ((zzj) this.zze).zza(this.zzj, zzacv.zza(this.zzc, this.zzk));
        zzb(null);
    }
}
