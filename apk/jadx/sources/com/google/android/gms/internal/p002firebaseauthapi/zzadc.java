package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.internal.zzat;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzadc extends zzafn<Void, zzat> {
    public zzadc() {
        super(5);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzafz
    public final String zza() {
        return "delete";
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzafz
    public final void zza(TaskCompletionSource taskCompletionSource, zzaet zzaetVar) {
        this.zzg = new zzafu(this, taskCompletionSource);
        zzaetVar.zza(this.zzd.zze(), this.zzb);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzafn
    public final void zzb() {
        ((zzat) this.zze).zza();
        zzb(null);
    }
}
