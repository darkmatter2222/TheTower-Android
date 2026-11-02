package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import p005kotlin.Metadata;

/* JADX WARN: Unexpected interfaces in signature: [kotlin.jvm.internal.markers.KMappedMarker] */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.0a, reason: invalid class name and case insensitive filesystem */
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
public abstract class AbstractC12090a<E> extends AbstractC12330y<E> implements List<E> {
    public static byte[] A00;
    public static String[] A01 = {"8MJW7qL63X9", "G9aG2oIn1Y4", "HqPOsgzYagb9l4J9VzVkZ8o4DQz4V9lO", "xJmplYEd", "tRQ4jDSCys0NBNjWiBDDhKLDNc3mQFOg", "4p2K0RIvYgiFEE4cJyGXuzJhjREv5DiA", "7kO1qpo2YPdStit", "T7n9PzVqaAEs33V"};
    public static final C1v A02;

    static {
        A07();
        A02 = new C1v(null);
    }

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A01[4].charAt(17) != 'B') {
                throw new RuntimeException();
            }
            A01[5] = "g090LmixS2shdtXN00k1fUpYmTec5Rl3";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 118);
            i4++;
        }
    }

    public static void A07() {
        byte[] bArr = {-21, Ascii.FF, 1, Ascii.SO, -3, Ascii.DLE, 5, Ascii.VT, 10, -68, 5, Ascii.SI, -68, 10, Ascii.VT, Ascii.DLE, -68, Ascii.SI, 17, Ascii.FF, Ascii.FF, Ascii.VT, Ascii.SO, Ascii.DLE, 1, 0, -68, 2, Ascii.VT, Ascii.SO, -68, Ascii.SO, 1, -3, 0, -55, Ascii.VT, 10, 8, Ascii.NAK, -68, -1, Ascii.VT, 8, 8, 1, -1, Ascii.DLE, 5, Ascii.VT, 10};
        if (A01[3].length() == 24) {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[0] = "JUfY89Gw2s4";
        strArr[1] = "2A8vB3DQCih";
        A00 = bArr;
    }

    @Override // java.util.List
    public final void add(int i, E e) {
        throw new UnsupportedOperationException(A06(0, 51, 38));
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException(A06(0, 51, 38));
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            return A02.A06(this, (Collection) obj);
        }
        return false;
    }

    public abstract E get(int i);

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        return A02.A02(this);
    }

    public int indexOf(Object obj) {
        int i = 0;
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            if (C1h.A0C(it.next(), obj)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC12330y, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return new C12320x(this);
    }

    public int lastIndexOf(Object obj) {
        AbstractC12090a<E> abstractC12090a = this;
        ListIterator<E> listIterator = abstractC12090a.listIterator(abstractC12090a.size());
        while (listIterator.hasPrevious()) {
            if (C1h.A0C(listIterator.previous(), obj)) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    @Override // java.util.List
    public ListIterator<E> listIterator() {
        return new C12100b(this, 0);
    }

    @Override // java.util.List
    public ListIterator<E> listIterator(int i) {
        return new C12100b(this, i);
    }

    @Override // java.util.List
    public final E remove(int i) {
        throw new UnsupportedOperationException(A06(0, 51, 38));
    }

    @Override // java.util.List
    public final E set(int i, E e) {
        throw new UnsupportedOperationException(A06(0, 51, 38));
    }

    public List<E> subList(int i, int i2) {
        return new C0O(this, i, i2);
    }
}
