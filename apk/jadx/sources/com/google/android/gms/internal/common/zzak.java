package com.google.android.gms.internal.common;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.11.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzak extends zzam {
    private final transient zzam zza;

    zzak(zzam zzamVar) {
        this.zza = zzamVar;
    }

    @Override // com.google.android.gms.internal.common.zzam, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return this.zza.contains(obj);
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzam zzamVar = this.zza;
        zzs.zzb(i, zzamVar.size(), FirebaseAnalytics.Param.INDEX);
        return zzamVar.get((zzamVar.size() - 1) - i);
    }

    @Override // com.google.android.gms.internal.common.zzam, java.util.List
    public final int indexOf(Object obj) {
        zzam zzamVar = this.zza;
        int iLastIndexOf = zzamVar.lastIndexOf(obj);
        if (iLastIndexOf >= 0) {
            return (zzamVar.size() - 1) - iLastIndexOf;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.common.zzam, java.util.List
    public final int lastIndexOf(Object obj) {
        zzam zzamVar = this.zza;
        int iIndexOf = zzamVar.indexOf(obj);
        if (iIndexOf >= 0) {
            return (zzamVar.size() - 1) - iIndexOf;
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.size();
    }

    @Override // com.google.android.gms.internal.common.zzam, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }

    @Override // com.google.android.gms.internal.common.zzah
    final boolean zzf() {
        return this.zza.zzf();
    }

    @Override // com.google.android.gms.internal.common.zzam
    public final zzam zzh() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.common.zzam
    /* JADX INFO: renamed from: zzi */
    public final zzam subList(int i, int i2) {
        zzam zzamVar = this.zza;
        zzs.zzd(i, i2, zzamVar.size());
        return zzamVar.subList(zzamVar.size() - i2, zzamVar.size() - i).zzh();
    }
}
