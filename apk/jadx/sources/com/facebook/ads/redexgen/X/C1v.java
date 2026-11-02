package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import p005kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.1v, reason: invalid class name */
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
public final class C1v {
    public static byte[] A00;
    public static String[] A01 = {"KuTCkc88m5Khn4CyGrhwL", "IxLDI0IPbZApfW", "JVK2BzSuCceVtUDdSj5I07", "lBsBUWPEcrP06ZbqPLvUU4J", "22gZmP1JxBFCsFHb94EDAJ1IphHRhPLW", "4VOii7FoXK5P7l8zZ6nforp6Ebd", "RjeQAgQKhl5JskIp4JuQN5iIalMDBvKB", "EBwOVG6Ugh4W3c0PQTNtiW44jE9"};

    static {
        A01();
    }

    public C1v() {
    }

    public /* synthetic */ C1v(AbstractC12411i abstractC12411i) {
        this();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 70);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{-105, -75, -105, -21, -26, -64, -27, -37, -36, -17, -79, -105, -113, -125, -42, -52, -35, -56, -99, -125, -120, 124, -48, -53, -91, -54, -64, -63, -44, -106, 124, Ascii.GS, 3, Ascii.SI, Ascii.FF, 10, -26, Ascii.VT, 1, 2, Ascii.NAK, -41, -67, -30, -25, -35, -34, -15, -77, -103, 37, 42, Ascii.RS, Ascii.ESC, 40};
    }

    /* JADX WARN: Code duplicated, block: B:11:0x005b  */
    /* JADX WARN: Code duplicated, block: B:15:0x0064  */
    public final int A02(Collection<?> collection) {
        int iHashCode;
        C1h.A09(collection, A00(31, 1, 116));
        int i = 1;
        Iterator<?> it = collection.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            String[] strArr = A01;
            if (strArr[3].length() == strArr[2].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[6] = "SCwB4moZZna0suClCc4GjhLyaW7wqAtq";
            strArr2[4] = "mduzLj9uz3KnspGGdaJJ9nMm6LkrQb3g";
            if (!zHasNext) {
                return i;
            }
            Object next = it.next();
            int i2 = i * 31;
            String[] strArr3 = A01;
            if (strArr3[3].length() != strArr3[2].length()) {
                String[] strArr4 = A01;
                strArr4[6] = "hMwjEsxw7wl5skWc3rQN1oqLejAug6sa";
                strArr4[4] = "wRbKU8F1FGogs5q469JLSPNenN0joauE";
                if (next != null) {
                    iHashCode = next.hashCode();
                } else {
                    iHashCode = 0;
                }
            } else if (next != null) {
                iHashCode = next.hashCode();
            } else {
                iHashCode = 0;
            }
            i = i2 + iHashCode;
        }
    }

    public final void A03(int i, int i2) {
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException(A00(43, 7, 51) + i + A00(12, 8, 29) + i2);
        }
    }

    public final void A04(int i, int i2) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(A00(43, 7, 51) + i + A00(12, 8, 29) + i2);
        }
    }

    public final void A05(int i, int i2, int i3) {
        String strA00 = A00(32, 11, 87);
        if (i < 0 || i2 > i3) {
            throw new IndexOutOfBoundsException(strA00 + i + A00(20, 11, 22) + i2 + A00(12, 8, 29) + i3);
        }
        if (i > i2) {
            throw new IllegalArgumentException(strA00 + i + A00(0, 12, 49) + i2);
        }
    }

    public final boolean A06(Collection<?> collection, Collection<?> collection2) {
        C1h.A09(collection, A00(31, 1, 116));
        C1h.A09(collection2, A00(50, 5, InterfaceC3669k1.d.b.j));
        if (collection.size() != collection2.size()) {
            return false;
        }
        Iterator<?> it = collection2.iterator();
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            if (!C1h.A0C(it2.next(), it.next())) {
                return false;
            }
        }
        return true;
    }
}
