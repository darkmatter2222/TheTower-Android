package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Vm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class AbstractC1963Vm {
    public static int A00(@CheckForNull List<?> list, Object obj) {
        if (list instanceof RandomAccess) {
            return A02(list, obj);
        }
        ListIterator<?> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            if (A6.A01(obj, listIterator.next())) {
                return listIterator.previousIndex();
            }
        }
        return -1;
    }

    public static int A01(@CheckForNull List<?> list, Object obj) {
        if (list instanceof RandomAccess) {
            return A03(list, obj);
        }
        ListIterator<?> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            if (A6.A01(obj, listIterator.previous())) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    public static int A02(@CheckForNull List<?> list, Object obj) {
        int size = list.size();
        if (obj == null) {
            for (int i = 0; i < size; i++) {
                if (list.get(i) == null) {
                    return i;
                }
            }
            return -1;
        }
        for (int i2 = 0; i2 < size; i2++) {
            if (obj.equals(list.get(i2))) {
                return i2;
            }
        }
        return -1;
    }

    public static int A03(@CheckForNull List<?> list, Object obj) {
        if (obj == null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                if (list.get(size) == null) {
                    return size;
                }
            }
            return -1;
        }
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            if (obj.equals(list.get(size2))) {
                return size2;
            }
        }
        return -1;
    }

    public static <E> ArrayList<E> A04() {
        return new ArrayList<>();
    }

    public static <E> ArrayList<E> A05(Iterator<? extends E> it) {
        ArrayList<E> arrayListA04 = A04();
        AbstractC1964Vn.A0A(arrayListA04, it);
        return arrayListA04;
    }

    public static boolean A06(@CheckForNull List<?> list, Object obj) {
        if (obj == AbstractC1995Wu.A04(list)) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        List list2 = (List) obj;
        int size = list.size();
        if (size != list2.size()) {
            return false;
        }
        if (!(list instanceof RandomAccess) || !(list2 instanceof RandomAccess)) {
            return AbstractC1964Vn.A0F(list.iterator(), list2.iterator());
        }
        for (int i = 0; i < size; i++) {
            if (!A6.A01(list.get(i), list2.get(i))) {
                return false;
            }
        }
        return true;
    }
}
