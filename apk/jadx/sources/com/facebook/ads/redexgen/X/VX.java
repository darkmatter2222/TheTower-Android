package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class VX {
    public static byte[] A00;
    public static String[] A01 = {"68wwMGwwuUFZ7g", "YuqMrs0q8bp4a12qikFmL3Ppo7qMUl3U", "tgXT0NDQP1B5LdYDzd7ljLMJZIXRCBfq", "JYvrHCuVxf2igyaT3pTroE58b5otJbLk", "k4SPxrqQauFxqAecpvPyvyDf59kAhf", "SefJ0DPWhaxjxk", "uhVLOlB5oqEr7Urqve8EGpxWAEvJEWcG", "2koSenUzO6vra0m8ZZVJjXkgvntAKCJF"};

    static {
        A08();
    }

    public static int A00(Set<?> set) {
        int i = 0;
        Iterator<?> it = set.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            String[] strArr = A01;
            if (strArr[7].charAt(27) == strArr[2].charAt(27)) {
                throw new RuntimeException();
            }
            A01[4] = "p1ZlUJQp6TLQJ3IHiykje0duJvjLZP";
            if (!zHasNext) {
                return i;
            }
            Object next = it.next();
            i = ~(~(i + (next != null ? next.hashCode() : 0)));
        }
    }

    public static <E> VY<E> A01(Set<? extends E> set, Set<? extends E> set2) {
        AbstractC1995Wu.A05(set, A04(10, 4, 44));
        AbstractC1995Wu.A05(set2, A04(14, 4, 15));
        return new C9U(set, set2);
    }

    public static <E> VY<E> A02(Set<E> set, Set<?> set2) {
        AbstractC1995Wu.A05(set, A04(10, 4, 44));
        AbstractC1995Wu.A05(set2, A04(14, 4, 15));
        return new C9T(set, set2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> SortedSet<E> A03(SortedSet<E> sortedSet, InterfaceC1994Wt<? super E> interfaceC1994Wt) {
        if (!(sortedSet instanceof C9S)) {
            return new C4Q((SortedSet) AbstractC1995Wu.A04(sortedSet), (InterfaceC1994Wt) AbstractC1995Wu.A04(interfaceC1994Wt));
        }
        C9S c9s = (C9S) sortedSet;
        return new C4Q((SortedSet) c9s.A01, AbstractC1988Wn.A00(c9s.A00, interfaceC1994Wt));
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 20);
        }
        return new String(bArrCopyOfRange);
    }

    public static <E> HashSet<E> A05() {
        return new HashSet<>();
    }

    public static <E> HashSet<E> A06(int i) {
        return new HashSet<>(AbstractC1960Vj.A00(i));
    }

    public static <E> Set<E> A07(Set<E> set, InterfaceC1994Wt<? super E> interfaceC1994Wt) {
        if (set instanceof SortedSet) {
            SortedSet sortedSet = (SortedSet) set;
            if (A01[6].charAt(19) != 'E') {
                throw new RuntimeException();
            }
            A01[3] = "0sbmWUWyQlmvjyhdy5fYSVjXpZvLd7HM";
            return A03(sortedSet, interfaceC1994Wt);
        }
        if (!(set instanceof C9S)) {
            return new C9S((Set) AbstractC1995Wu.A04(set), (InterfaceC1994Wt) AbstractC1995Wu.A04(interfaceC1994Wt));
        }
        C9S c9s = (C9S) set;
        return new C9S((Set) c9s.A01, AbstractC1988Wn.A00(c9s.A00, interfaceC1994Wt));
    }

    public static void A08() {
        A00 = new byte[]{-63, -56, -63, -55, -63, -54, -48, -81, -63, -48, -77, -91, -76, 113, -106, -120, -105, 85};
    }

    public static boolean A09(@CheckForNull Set<?> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set2 = (Set) obj;
        try {
            return set.size() == set2.size() && set.containsAll(set2);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public static boolean A0A(Set<?> set, Collection<?> collection) {
        AbstractC1995Wu.A04(collection);
        if (0 != 0) {
            throw new NullPointerException(A04(0, 10, 72));
        }
        return (!(collection instanceof Set) || collection.size() <= set.size()) ? A0B(set, collection.iterator()) : AbstractC1964Vn.A0E(set.iterator(), collection);
    }

    public static boolean A0B(Set<?> set, Iterator<?> it) {
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= set.remove(it.next());
        }
        return zRemove;
    }
}
