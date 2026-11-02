package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzans<K, V> implements Iterator<Map.Entry<K, V>> {
    private int zza;
    private Iterator<Map.Entry<K, V>> zzb;
    private final /* synthetic */ zzann zzc;

    private zzans(zzann zzannVar) {
        Objects.requireNonNull(zzannVar);
        this.zzc = zzannVar;
        this.zza = -1;
    }

    private final Iterator<Map.Entry<K, V>> zza() {
        if (this.zzb == null) {
            this.zzb = this.zzc.zzc.entrySet().iterator();
        }
        return this.zzb;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza + 1 < this.zzc.zzb || (!this.zzc.zzc.isEmpty() && zza().hasNext());
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        int i = this.zza + 1;
        this.zza = i;
        return i < this.zzc.zzb ? (zzanp) this.zzc.zza[this.zza] : zza().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.zzc.zzf();
        if (this.zza >= this.zzc.zzb) {
            zza().remove();
            return;
        }
        zzann zzannVar = this.zzc;
        int i = this.zza;
        this.zza = i - 1;
        zzannVar.zzb(i);
    }
}
