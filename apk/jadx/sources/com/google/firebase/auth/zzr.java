package com.google.firebase.auth;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.internal.zzbq;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzr extends zzbq<Void> {
    private final /* synthetic */ String zza;
    private final /* synthetic */ ActionCodeSettings zzb;
    private final /* synthetic */ FirebaseAuth zzc;

    zzr(FirebaseAuth firebaseAuth, String str, ActionCodeSettings actionCodeSettings) {
        this.zza = str;
        this.zzb = actionCodeSettings;
        Objects.requireNonNull(firebaseAuth);
        this.zzc = firebaseAuth;
    }

    @Override // com.google.firebase.auth.internal.zzbq
    public final Task<Void> zza(String str) {
        if (TextUtils.isEmpty(str)) {
            Log.i("FirebaseAuth", "Email link sign in for " + this.zza + " with empty reCAPTCHA token");
        } else {
            Log.i("FirebaseAuth", "Got reCAPTCHA token for email link sign in for " + this.zza);
        }
        return this.zzc.zzd.zzb(this.zzc.zzg, this.zza, this.zzb, this.zzc.zzm, str);
    }
}
