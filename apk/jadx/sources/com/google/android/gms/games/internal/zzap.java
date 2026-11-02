package com.google.android.gms.games.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzap {
    private static final zzap zza = new zzap();
    private volatile boolean zzb = false;

    zzap() {
    }

    public static zzap zza() {
        return zza;
    }

    public final boolean zzb() {
        return this.zzb;
    }

    public final void zzc() {
        this.zzb = true;
    }
}
