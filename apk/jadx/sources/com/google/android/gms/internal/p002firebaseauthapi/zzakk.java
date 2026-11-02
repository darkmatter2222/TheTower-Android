package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzakk {
    private final zzaky zza;
    private final byte[] zzb;

    private zzakk(int i) {
        byte[] bArr = new byte[i];
        this.zzb = bArr;
        this.zza = new zzakx(bArr, 0, bArr.length);
    }

    public final zzakb zza() {
        this.zza.zzc();
        return new zzakm(this.zzb);
    }

    public final zzaky zzb() {
        return this.zza;
    }
}
