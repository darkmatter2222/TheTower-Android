package com.google.android.gms.internal.games_v2;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgs extends zzgm {
    static final zzgm zza = new zzgs(new Object[0], 0);
    final transient Object[] zzb;
    private final transient int zzc;

    zzgs(Object[] objArr, int i) {
        this.zzb = objArr;
        this.zzc = i;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzfz.zza(i, this.zzc, FirebaseAnalytics.Param.INDEX);
        return Objects.requireNonNull(this.zzb[i]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.games_v2.zzgi
    final Object[] zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.games_v2.zzgi
    final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.games_v2.zzgi
    final int zzd() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.games_v2.zzgm, com.google.android.gms.internal.games_v2.zzgi
    final int zze(Object[] objArr, int i) {
        Object[] objArr2 = this.zzb;
        int i2 = this.zzc;
        System.arraycopy(objArr2, 0, objArr, 0, i2);
        return i2;
    }
}
