package com.google.android.gms.internal.games_v2;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgj extends zzgg {
    public zzgj() {
        super(4);
    }

    public final zzgj zzb(Object obj) {
        obj.getClass();
        int length = this.zza.length;
        int iZza = zzgg.zza(length, this.zzb + 1);
        if (iZza > length || this.zzc) {
            this.zza = Arrays.copyOf(this.zza, iZza);
            this.zzc = false;
        }
        Object[] objArr = this.zza;
        int i = this.zzb;
        this.zzb = i + 1;
        objArr[i] = obj;
        return this;
    }

    public final zzgm zzc() {
        this.zzc = true;
        return zzgm.zzj(this.zza, this.zzb);
    }
}
