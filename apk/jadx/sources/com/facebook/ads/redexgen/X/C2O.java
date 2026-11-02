package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;
import java.util.WeakHashMap;
import p005kotlin.Metadata;
import p005kotlin.jvm.JvmStatic;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.2O, reason: invalid class name */
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
public final class C2O {
    public static byte[] A00;
    public static String[] A01 = {"tM", "OPSTz", "nSVgoUnJhqchgKDvzZkuQEe6gXNDXiJa", "w6a8CUhjr9W4mo91m011A7MFgCBLOqFf", "py3rfD", "ih7XR3ofyKGNBaShrQXGXw0JFIFEgb8N", "DEOWgwil5msK", "goT19SPCP2Wcb2IATE"};

    static {
        A03();
    }

    public C2O() {
    }

    public /* synthetic */ C2O(AbstractC12411i abstractC12411i) {
        this();
    }

    private final AnonymousClass11 A00(View view) {
        Object tag = view.getTag(2130706433);
        AbstractC12411i abstractC12411i = null;
        AnonymousClass11 anonymousClass11 = tag instanceof AnonymousClass11 ? (AnonymousClass11) tag : null;
        if (anonymousClass11 != null) {
            return anonymousClass11;
        }
        AnonymousClass11 anonymousClass12 = new AnonymousClass11(view, abstractC12411i);
        view.setTag(2130706433, anonymousClass12);
        return anonymousClass12;
    }

    private final AnonymousClass11 A01(View view) {
        WeakHashMap weakHashMap = AnonymousClass11.A04;
        Object anonymousClass11 = weakHashMap.get(view);
        if (anonymousClass11 == null) {
            anonymousClass11 = new AnonymousClass11(view, null);
            weakHashMap.put(view, anonymousClass11);
        }
        return (AnonymousClass11) anonymousClass11;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A01;
            if (strArr[1].length() == strArr[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[1] = "kKLBr";
            strArr2[7] = "W5yuMnVpFJPnLtYkAS";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 31);
            i4++;
        }
    }

    public static void A03() {
        byte[] bArr = {126, 97, 109, 127};
        if (A01[5].charAt(10) != 'G') {
            throw new RuntimeException();
        }
        A01[5] = "dvHL5pgrLAG1IBapnMOcCgSK2VIAPJci";
        A00 = bArr;
    }

    @JvmStatic
    public final AnonymousClass11 A04(View view) {
        C1h.A09(view, A02(0, 4, 23));
        return A05() ? A00(view) : A01(view);
    }

    public final boolean A05() {
        return AnonymousClass11.A05;
    }
}
