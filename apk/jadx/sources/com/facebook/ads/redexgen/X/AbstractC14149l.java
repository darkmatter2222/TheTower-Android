package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9l, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class AbstractC14149l<E> extends AbstractC1970Vt<E> implements List<E>, RandomAccess {
    public static byte[] A00 = null;
    public static String[] A01 = {"fA1fnNssArdKpNGuPvEGSzi7pOUZHm7v", "qns5CkO3MVDTshXVoTiVucy5w98kVhX8", "FBilluItLEFIj11sI", "xhOoaGlUfdtuNUXUR7COCy2p48irks40", "B9QowLQGlwGuP7x5xkpjNnYcMu4XR0jN", "IeItZmW1RXx", "W7RLvvUGiTAKxasjeCPHrioAHehOTeSb", "bhxfXmBriQ73PypRFft5YTIqbznKEvYb"};
    public static final C9R<Object> A02;
    public static final long serialVersionUID = -889275714;

    static {
        A0B();
        A02 = new C12663a(C4Y.A02, 0);
    }

    public static <E> C12944e<E> A01() {
        return new C12944e<>();
    }

    private final AbstractC14149l<E> A02(final int i, int i2) {
        final int i3 = i2 - i;
        return new AbstractC14149l<E>(i, i3) { // from class: com.facebook.ads.redexgen.X.4d
            public final transient int A00;
            public final transient int A01;

            {
                this.A01 = i;
                this.A00 = i3;
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1970Vt
            public final int A0G() {
                return this.A02.A0H() + this.A01 + this.A00;
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1970Vt
            public final int A0H() {
                return this.A02.A0H() + this.A01;
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1970Vt
            public final boolean A0K() {
                return true;
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1970Vt
            @CheckForNull
            public final Object[] A0L() {
                return this.A02.A0L();
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC14149l, java.util.List
            /* JADX INFO: renamed from: A0M */
            public final AbstractC14149l<E> subList(int i4, int i5) {
                AbstractC1995Wu.A0B(i4, i5, this.A00);
                return this.A02.subList(this.A01 + i4, this.A01 + i5);
            }

            @Override // java.util.List
            public final E get(int i4) {
                AbstractC1995Wu.A00(i4, this.A00);
                return this.A02.get(this.A01 + i4);
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC14149l, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
            public final /* bridge */ /* synthetic */ Iterator iterator() {
                return iterator();
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC14149l, java.util.List
            public final /* bridge */ /* synthetic */ ListIterator listIterator() {
                return listIterator();
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC14149l, java.util.List
            public final /* bridge */ /* synthetic */ ListIterator listIterator(int i4) {
                return super.listIterator(i4);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public final int size() {
                return this.A00;
            }
        };
    }

    public static <E> AbstractC14149l<E> A03() {
        return (AbstractC14149l<E>) C4Y.A02;
    }

    public static <E> AbstractC14149l<E> A04(E e) {
        return A08(e);
    }

    public static <E> AbstractC14149l<E> A05(Collection<? extends E> collection) {
        if (!(collection instanceof AbstractC1970Vt)) {
            return A08(collection.toArray());
        }
        AbstractC14149l<E> abstractC14149lA0J = ((AbstractC1970Vt) collection).A0J();
        return abstractC14149lA0J.A0K() ? A06(abstractC14149lA0J.toArray()) : abstractC14149lA0J;
    }

    public static <E> AbstractC14149l<E> A06(Object[] objArr) {
        return A09(objArr, objArr.length);
    }

    public static <E> AbstractC14149l<E> A07(E[] eArr) {
        return eArr.length == 0 ? A03() : A08((Object[]) eArr.clone());
    }

    public static <E> AbstractC14149l<E> A08(Object... objArr) {
        return A06(AbstractC1955Vd.A03(objArr));
    }

    public static <E> AbstractC14149l<E> A09(Object[] objArr, int i) {
        return i == 0 ? A03() : new C4Y(objArr, i);
    }

    public static String A0A(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] - i3) - 84);
            String[] strArr = A01;
            if (strArr[1].charAt(21) == strArr[0].charAt(21)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[3] = "dhQRA9x0T6ID6JuO896L24zk9QRH59k7";
            strArr2[7] = "7htLPED1qaLsB4bVZYo3T5RxRWmBeLII";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0B() {
        A00 = new byte[]{-74, -44, -58, -127, -76, -58, -45, -54, -62, -51, -54, -37, -58, -59, -89, -48, -45, -50};
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException(A0A(0, 18, 13));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1970Vt
    public int A0I(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1970Vt
    @Deprecated
    public final AbstractC14149l<E> A0J() {
        return this;
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: A0M, reason: merged with bridge method [inline-methods] */
    public AbstractC14149l<E> subList(int i, int i2) {
        AbstractC1995Wu.A0B(i, i2, size());
        int i3 = i2 - i;
        if (i3 == size()) {
            return this;
        }
        return i3 == 0 ? A03() : A02(i, i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    /* JADX INFO: renamed from: A0N, reason: merged with bridge method [inline-methods] */
    public final VV<E> iterator() {
        return listIterator();
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: A0O, reason: merged with bridge method [inline-methods] */
    public final C9R<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: A0P, reason: merged with bridge method [inline-methods] */
    public C9R<E> listIterator(int i) {
        AbstractC1995Wu.A01(i, size());
        return isEmpty() ? (C9R<E>) A02 : new C12663a(this, i);
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i, E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1970Vt, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@CheckForNull Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(@CheckForNull Object obj) {
        return AbstractC1963Vm.A06(this, obj);
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            i = ~(~((i * 31) + get(i2).hashCode()));
        }
        return i;
    }

    @Override // java.util.List
    public int indexOf(@CheckForNull Object obj) {
        if (obj == null) {
            return -1;
        }
        return AbstractC1963Vm.A00(this, obj);
    }

    @Override // java.util.List
    public int lastIndexOf(@CheckForNull Object obj) {
        if (obj == null) {
            return -1;
        }
        return AbstractC1963Vm.A01(this, obj);
    }

    @Override // java.util.List
    @Deprecated
    public final E remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final E set(int i, E e) {
        throw new UnsupportedOperationException();
    }
}
