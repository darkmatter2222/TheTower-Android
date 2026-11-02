package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzafc {
    final zzafj zza;
    private final String zzb;

    public zzafc(String str, zzafj zzafjVar) {
        this.zzb = str;
        this.zza = zzafjVar;
    }

    final String zza(String str, String str2) {
        return this.zzb + str + "?key=" + str2;
    }
}
