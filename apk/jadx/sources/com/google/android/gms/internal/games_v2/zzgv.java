package com.google.android.gms.internal.games_v2;

import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgv extends zzgq {
    private final transient zzgp zza;
    private final transient zzgm zzb;

    zzgv(zzgp zzgpVar, zzgm zzgmVar) {
        this.zza = zzgpVar;
        this.zzb = zzgmVar;
    }

    @Override // com.google.android.gms.internal.games_v2.zzgi, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.zza.get(obj) != null;
    }

    @Override // com.google.android.gms.internal.games_v2.zzgq, com.google.android.gms.internal.games_v2.zzgi, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return this.zzb.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }

    @Override // com.google.android.gms.internal.games_v2.zzgq, com.google.android.gms.internal.games_v2.zzgi
    /* JADX INFO: renamed from: zza */
    public final zzgz iterator() {
        return this.zzb.listIterator(0);
    }

    @Override // com.google.android.gms.internal.games_v2.zzgi
    final int zze(Object[] objArr, int i) {
        return this.zzb.zze(objArr, 0);
    }
}
