package com.google.android.gms.internal.p002firebaseauthapi;

import com.ironsource.C3510b4;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzax<E> extends zzaq<E> {
    private final transient E zza;

    zzax(E e) {
        this.zza = (E) zzu.zza(e);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzag, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.zza.equals(obj);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaq, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaq, com.google.android.gms.internal.p002firebaseauthapi.zzag, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return C3510b4.j.d + this.zza.toString() + C3510b4.j.e;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzag
    final int zza(Object[] objArr, int i) {
        objArr[i] = this.zza;
        return i + 1;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaq, com.google.android.gms.internal.p002firebaseauthapi.zzag
    public final zzah<E> zzc() {
        return zzah.zza(this.zza);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzag
    /* JADX INFO: renamed from: zzd */
    public final zzba<E> iterator() {
        return new zzap(this.zza);
    }
}
