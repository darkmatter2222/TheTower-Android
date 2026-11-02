package com.facebook.ads.redexgen.X;

import android.view.View;
import android.widget.LinearLayout;
import com.google.common.base.Ascii;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.jvm.JvmStatic;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ds, reason: case insensitive filesystem */
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
public final class C2312ds extends LinearLayout {
    public static byte[] A00;
    public static final C2313dt A01;
    public static final int A02;
    public static final int A03;
    public static final int A04;

    static {
        A04();
        A01 = new C2313dt(null);
        A04 = AbstractC3043pv.A0K;
        A03 = AbstractC2501gx.A02(-1, 128);
        A02 = AbstractC2501gx.A02(-1, 17);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2312ds(C1618Hi c1618Hi, View view, View view2) {
        super(c1618Hi);
        C1h.A09(c1618Hi, A03(0, 7, 101));
        C1h.A09(view, A03(7, 12, 18));
        C1h.A09(view2, A03(19, 13, 92));
        setOrientation(0);
        A01.A02(view);
        A01.A02(view2);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1, 75.0f);
        layoutParams.rightMargin = A04;
        addView(view, layoutParams);
        addView(view2, new LinearLayout.LayoutParams(0, -1, 25.0f));
    }

    @JvmStatic
    public static final C2312ds A01(C1618Hi c1618Hi, C1441Am c1441Am, int i) {
        return A01.A04(c1618Hi, c1441Am, i);
    }

    @JvmStatic
    public static final C2312ds A02(C1618Hi c1618Hi, C1441Am c1441Am, int i, int i2, int i3) {
        return A01.A05(c1618Hi, c1441Am, i, i2, i3);
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 65);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A00 = new byte[]{9, Ascii.NAK, Ascii.DC4, Ascii.SUB, Ascii.VT, Ascii.RS, Ascii.SUB, -71, -68, -59, -58, -57, -90, -72, -70, -64, -72, -63, -57, Ascii.DLE, 2, 0, Ascii.FF, Ascii.VT, 1, -16, 2, 4, 10, 2, Ascii.VT, 17};
    }
}
