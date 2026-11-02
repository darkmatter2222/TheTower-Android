package com.google.android.gms.internal.games_v2;

import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzgq extends zzgi implements Set {
    private transient zzgm zza;

    zzgq() {
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this || obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                return size() == set.size() && containsAll(set);
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        return zzgy.zza(this);
    }

    @Override // com.google.android.gms.internal.games_v2.zzgi, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* JADX INFO: renamed from: zza */
    public abstract zzgz iterator();

    public final zzgm zzf() {
        zzgm zzgmVar = this.zza;
        if (zzgmVar != null) {
            return zzgmVar;
        }
        zzgm zzgmVarZzg = zzg();
        this.zza = zzgmVarZzg;
        return zzgmVarZzg;
    }

    zzgm zzg() {
        Object[] array = toArray();
        int i = zzgm.zzd;
        return zzgm.zzj(array, array.length);
    }
}
