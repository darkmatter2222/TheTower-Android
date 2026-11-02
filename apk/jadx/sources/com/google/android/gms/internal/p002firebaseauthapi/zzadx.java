package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.internal.zzj;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzadx extends zzafn<Void, zzj> {
    private final zzais zzv;

    public zzadx(String str) {
        super(9);
        this.zzv = new zzais(str);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzafz
    public final String zza() {
        return "setFirebaseUIVersion";
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzafz
    public final void zza(TaskCompletionSource taskCompletionSource, zzaet zzaetVar) {
        this.zzg = new zzafu(this, taskCompletionSource);
        zzaetVar.zza(this.zzv, this.zzb);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzafn
    public final void zzb() {
        zzb(null);
    }
}
