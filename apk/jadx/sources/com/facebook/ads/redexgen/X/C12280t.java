package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import p005kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.0t, reason: invalid class name and case insensitive filesystem */
/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    java.lang.IllegalArgumentException: Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.
    	at kotlin.metadata.jvm.internal.JvmReadUtils.checkMetadataVersionForRead(JvmReadUtils.kt:79)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:46)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:68)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:31)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@Metadata
public final class C12280t implements List, Serializable, RandomAccess {
    public static byte[] A00 = null;
    public static String[] A01 = {"k9ZzZ1cBuIGk0xZJYgRHtQUHu", "8haS1krON", "znf8DCOZs", "ZMxYCfvi9WuUDddmWblMZYVPAkvMwUDz", "R2yUt708fMCVn0dbeavb6cPXCCqIMhou", "XBnyXjlini4GNVGVFXrvp0WQTqYWSo5F", "KlLYvr3z7jMCyAWmrrkxwySNv", "nW4LfrwBKj43WODDmI32HmWf2C7iwmjL"};
    public static final C12280t A02;
    public static final long serialVersionUID = -7390468764508069838L;

    static {
        A05();
        A02 = new C12280t();
    }

    private final int A00() {
        return 0;
    }

    private final int A01(Void r4) {
        C1h.A09(r4, A03(120, 7, 92));
        return -1;
    }

    private final int A02(Void r4) {
        C1h.A09(r4, A03(120, 7, 92));
        return -1;
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 121);
        }
        return new String(bArrCopyOfRange);
    }

    private final Void A04(int i) {
        throw new IndexOutOfBoundsException(A03(11, 44, 58) + i + '.');
    }

    public static void A05() {
        A00 = new byte[]{45, 33, 117, 110, 72, 111, 101, 100, 121, 59, 33, 6, 46, 51, 55, 58, 99, 47, 42, 48, 55, 99, 39, 44, 38, 48, 45, 100, 55, 99, 32, 44, 45, 55, 34, 42, 45, 99, 38, 47, 38, 46, 38, 45, 55, 99, 34, 55, 99, 42, 45, 39, 38, 59, 99, 43, Ascii.FF, 6, 7, Ascii.SUB, 88, 66, 93, 98, 119, 96, 115, 102, 123, 125, 124, 50, 123, 97, 50, 124, 125, 102, 50, 97, 103, 98, 98, 125, 96, 102, 119, 118, 50, 116, 125, 96, 50, 96, 119, 115, 118, 63, 125, 124, 126, 107, 50, 113, 125, 126, 126, 119, 113, 102, 123, 125, 124, 102, 96, 6, Ascii.NAK, Ascii.NAK, 6, Ascii.RS, SignedBytes.MAX_POWER_OF_TWO, 73, SignedBytes.MAX_POWER_OF_TWO, 72, SignedBytes.MAX_POWER_OF_TWO, 75, 81, 92, 85, 92, 84, 92, 87, 77, 74, Ascii.ETB, 3, Ascii.RS, Ascii.FS, 56, Ascii.US, Ascii.NAK, Ascii.DC4, 9, 75, 81};
    }

    private final boolean A06(Void r4) {
        C1h.A09(r4, A03(120, 7, 92));
        return false;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        throw new UnsupportedOperationException(A03(62, 51, kotlin.fh.h1));
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        throw new UnsupportedOperationException(A03(62, 51, kotlin.fh.h1));
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException(A03(62, 51, kotlin.fh.h1));
    }

    @Override // java.util.List, java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException(A03(62, 51, kotlin.fh.h1));
    }

    @Override // java.util.List, java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException(A03(62, 51, kotlin.fh.h1));
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (0 == 0) {
            return false;
        }
        return A06(null);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean containsAll(Collection collection) {
        C1h.A09(collection, A03(127, 8, 64));
        return collection.isEmpty();
    }

    @Override // java.util.List, java.util.Collection
    public final boolean equals(Object obj) {
        return (obj instanceof List) && ((List) obj).isEmpty();
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        A04(i);
        throw null;
    }

    @Override // java.util.List, java.util.Collection
    public final int hashCode() {
        return 1;
    }

    @Override // java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (0 == 0) {
            return -1;
        }
        return A01(null);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean isEmpty() {
        return true;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return C12290u.A02;
    }

    @Override // java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (0 != 0) {
            return A02(null);
        }
        String[] strArr = A01;
        if (strArr[7].charAt(25) != strArr[4].charAt(25)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[6] = "W2d0lzCQvqhLN2OCBXEuBxfE2";
        strArr2[0] = "N76B7Y8TbLiorNvPcjFGl7PP3";
        return -1;
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        return C12290u.A02;
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        if (i == 0) {
            return C12290u.A02;
        }
        throw new IndexOutOfBoundsException(A03(55, 7, 27) + i);
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        throw new UnsupportedOperationException(A03(62, 51, kotlin.fh.h1));
    }

    @Override // java.util.List, java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException(A03(62, 51, kotlin.fh.h1));
    }

    @Override // java.util.List, java.util.Collection
    public final boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException(A03(62, 51, kotlin.fh.h1));
    }

    @Override // java.util.List, java.util.Collection
    public final boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException(A03(62, 51, kotlin.fh.h1));
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        throw new UnsupportedOperationException(A03(62, 51, kotlin.fh.h1));
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ int size() {
        return A00();
    }

    @Override // java.util.List
    public final List subList(int i, int i2) {
        if (i == 0 && i2 == 0) {
            return this;
        }
        throw new IndexOutOfBoundsException(A03(135, 11, 8) + i + A03(0, 11, 120) + i2);
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray() {
        return AbstractC12421j.A02(this);
    }

    @Override // java.util.List, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        C1h.A09(tArr, A03(115, 5, 30));
        return (T[]) AbstractC12421j.A03(this, tArr);
    }

    public final String toString() {
        return A03(InterfaceC3669k1.d.b.k, 2, 68);
    }
}
