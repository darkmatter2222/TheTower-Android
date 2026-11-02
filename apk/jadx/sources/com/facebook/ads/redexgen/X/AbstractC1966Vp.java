package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.common.collect.ParametricNullness;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Vp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class AbstractC1966Vp {
    @ParametricNullness
    public static <T> T A00(@ParametricNullness Iterable<? extends T> iterable, T t) {
        return (T) AbstractC1964Vn.A06(iterable.iterator(), t);
    }

    public static <T> void A01(List<T> list, InterfaceC1994Wt<? super T> interfaceC1994Wt, int i, int i2) {
        for (int size = list.size() - 1; size > i2; size--) {
            if (interfaceC1994Wt.A4d(list.get(size))) {
                list.remove(size);
            }
        }
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            list.remove(i3);
        }
    }

    public static <T> boolean A02(Iterable<T> iterable, InterfaceC1994Wt<? super T> interfaceC1994Wt) {
        return AbstractC1964Vn.A0B(iterable.iterator(), interfaceC1994Wt);
    }

    public static <T> boolean A03(Iterable<T> iterable, InterfaceC1994Wt<? super T> interfaceC1994Wt) {
        return ((iterable instanceof RandomAccess) && (iterable instanceof List)) ? A04((List) iterable, (InterfaceC1994Wt) AbstractC1995Wu.A04(interfaceC1994Wt)) : AbstractC1964Vn.A0C(iterable.iterator(), interfaceC1994Wt);
    }

    public static <T> boolean A04(List<T> list, InterfaceC1994Wt<? super T> interfaceC1994Wt) {
        int i = 0;
        int i2 = 0;
        while (i < list.size()) {
            T t = list.get(i);
            if (!interfaceC1994Wt.A4d(t)) {
                if (i > i2) {
                    try {
                        list.set(i2, t);
                    } catch (IllegalArgumentException unused) {
                        A01(list, interfaceC1994Wt, i2, i);
                        return true;
                    } catch (UnsupportedOperationException unused2) {
                        A01(list, interfaceC1994Wt, i2, i);
                        return true;
                    }
                }
                i2++;
            }
            i++;
        }
        list.subList(i2, list.size()).clear();
        return i != i2;
    }
}
