package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.FirebaseError;
import com.google.firebase.auth.PhoneAuthCredential;
import com.google.firebase.auth.internal.zzad;
import com.google.firebase.auth.internal.zzj;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzadr extends zzafn<Void, zzj> {
    private final PhoneAuthCredential zzv;
    private final String zzw;

    public zzadr(PhoneAuthCredential phoneAuthCredential, String str) {
        super(2);
        Preconditions.checkNotNull(phoneAuthCredential, "credential cannot be null");
        phoneAuthCredential.zza(false);
        this.zzv = phoneAuthCredential;
        this.zzw = str;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzafz
    public final String zza() {
        return "reauthenticateWithPhoneCredential";
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzafz
    public final void zza(TaskCompletionSource taskCompletionSource, zzaet zzaetVar) {
        this.zzg = new zzafu(this, taskCompletionSource);
        zzaetVar.zza(this.zzv, this.zzw, this.zzb);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzafn
    public final void zzb() {
        zzad zzadVarZza = zzacv.zza(this.zzc, this.zzk);
        if (!this.zzd.getUid().equalsIgnoreCase(zzadVarZza.getUid())) {
            zza(new Status(FirebaseError.ERROR_USER_MISMATCH));
        } else {
            ((zzj) this.zze).zza(this.zzj, zzadVarZza);
            zzb(null);
        }
    }
}
