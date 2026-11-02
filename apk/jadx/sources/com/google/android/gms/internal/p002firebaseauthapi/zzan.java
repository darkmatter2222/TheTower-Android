package com.google.android.gms.internal.p002firebaseauthapi;

import com.ironsource.C3510b4;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzan {
    private final Object zza;
    private final Object zzb;
    private final Object zzc;

    zzan(Object obj, Object obj2, Object obj3) {
        this.zza = obj;
        this.zzb = obj2;
        this.zzc = obj3;
    }

    final IllegalArgumentException zza() {
        return new IllegalArgumentException("Multiple entries with same key: " + String.valueOf(this.zza) + C3510b4.j.b + String.valueOf(this.zzb) + " and " + String.valueOf(this.zza) + C3510b4.j.b + String.valueOf(this.zzc));
    }
}
