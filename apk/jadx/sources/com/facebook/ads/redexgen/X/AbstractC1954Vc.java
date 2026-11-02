package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.common.collect.ParametricNullness;
import java.util.Comparator;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Vc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class AbstractC1954Vc<T> implements Comparator<T> {
    public static <C extends Comparable> AbstractC1954Vc<C> A03() {
        return C9Y.A01;
    }

    public static <T> AbstractC1954Vc<T> A04(Comparator<T> comparator) {
        return comparator instanceof AbstractC1954Vc ? (AbstractC1954Vc) comparator : new C14209r(comparator);
    }

    public final <F> AbstractC1954Vc<F> A05(InterfaceC1998Wy<F, ? extends T> interfaceC1998Wy) {
        return new C14259w(interfaceC1998Wy, this);
    }

    public <S extends T> AbstractC1954Vc<S> A06() {
        return new C9V(this);
    }

    @Override // java.util.Comparator
    public abstract int compare(@ParametricNullness T t, @ParametricNullness T t2);
}
