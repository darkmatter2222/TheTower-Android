package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.SignInMethodQueryResult;
import com.google.firebase.auth.internal.zzap;
import com.google.firebase.auth.internal.zzj;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzadb extends zzafn<SignInMethodQueryResult, zzj> {
    private final String zzv;
    private final String zzw;

    public zzadb(String str, String str2) {
        super(3);
        Preconditions.checkNotEmpty(str, "email cannot be null or empty");
        this.zzv = str;
        this.zzw = str2;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzafz
    public final String zza() {
        return "fetchSignInMethodsForEmail";
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzafz
    public final void zza(TaskCompletionSource taskCompletionSource, zzaet zzaetVar) {
        this.zzg = new zzafu(this, taskCompletionSource);
        zzaetVar.zze(this.zzv, this.zzw, this.zzb);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzafn
    public final void zzb() {
        zzb(new zzap(this.zzl.zza() == null ? zzah.zzg() : (List) Preconditions.checkNotNull(this.zzl.zza())));
    }
}
