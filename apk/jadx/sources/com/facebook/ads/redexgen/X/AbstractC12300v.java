package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.List;
import p005kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.0v, reason: invalid class name and case insensitive filesystem */
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
public abstract class AbstractC12300v extends AbstractC12441s {
    public static byte[] A00;
    public static String[] A01 = {"nlw", "aAnj26nH2hjQGae9mvSI0", "J9vc", "wEHjWviIagA0RiZtsIcLVMEmrzBUulD9", "XMmicjZIesCyTiRThgSUJWEQzgXugrDN", "JyVC3ytnutRkm33", "2H2TswSbVhllomBezSDO7vtM0swUoJ9q", "irMlxMArUeq5dat6fat2aEp5W"};

    static {
        A0B();
    }

    public static String A08(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 95);
        }
        return new String(bArrCopyOfRange);
    }

    public static final <T> List<T> A09() {
        C12280t c12280t = C12280t.A02;
        String[] strArr = A01;
        if (strArr[2].length() == strArr[5].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[7] = "T8jIe6Y7i5zGRCzfWEsmpCsqB";
        strArr2[1] = "YTX5P8jNZqeshwgqZ2btT";
        return c12280t;
    }

    public static final <T> List<T> A0A(T... tArr) {
        C1h.A09(tArr, A08(28, 8, 62));
        return tArr.length > 0 ? C0Z.A05(tArr) : A09();
    }

    public static void A0B() {
        A00 = new byte[]{40, Ascii.SI, 5, 4, Ascii.EM, 65, Ascii.SO, Ascii.ETB, 4, 19, 7, Ascii.CR, Ascii.SO, Ascii.SYN, 65, 9, 0, Ascii.DC2, 65, 9, 0, 17, 17, 4, Ascii.SI, 4, 5, 79, 4, Ascii.CR, 4, Ascii.FF, 4, Ascii.SI, Ascii.NAK, Ascii.DC2};
    }

    public static final void A0C() {
        throw new ArithmeticException(A08(0, 28, 62));
    }
}
