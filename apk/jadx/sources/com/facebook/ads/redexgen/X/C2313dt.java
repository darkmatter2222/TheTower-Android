package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.jvm.JvmStatic;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.dt, reason: case insensitive filesystem */
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
public final class C2313dt {
    public static byte[] A00;

    static {
        A01();
    }

    public C2313dt() {
    }

    public /* synthetic */ C2313dt(AbstractC12411i abstractC12411i) {
        this();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 60);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{105, 101, 100, 126, 111, 114, 126, 38, 42, 48, 43, 49, 33, 42, 50, 43, 7, 36, 55, 105, 118, 123, 122, 112, 93, 126, 109};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A02(View view) {
        ViewParent parent = view.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
    }

    @JvmStatic
    public final C2312ds A04(C1618Hi c1618Hi, C1441Am c1441Am, int i) {
        C1h.A09(c1618Hi, A00(0, 7, 54));
        C1h.A09(c1441Am, A00(7, 12, 121));
        C1441Am c1441Am2 = new C1441Am(c1618Hi, i);
        c1441Am2.A0A(AbstractC1551Es.A0g, C2312ds.A02, true);
        AbstractC3086qc.A0L(c1441Am2);
        c1441Am2.A09(i);
        C2312ds c2312ds = new C2312ds(c1618Hi, c1441Am2, c1441Am);
        AbstractC3086qc.A0L(c2312ds);
        return c2312ds;
    }

    @JvmStatic
    public final C2312ds A05(C1618Hi c1618Hi, C1441Am c1441Am, int i, int i2, int i3) {
        C1h.A09(c1618Hi, A00(0, 7, 54));
        C1h.A09(c1441Am, A00(19, 8, 35));
        C1441Am c1441Am2 = new C1441Am(c1618Hi, c1441Am.getCustomDuration());
        c1441Am2.A0A(i, i2, true);
        c1441Am2.setPadding(0, 0, 0, 0);
        AbstractC3086qc.A0L(c1441Am2);
        C2312ds c2312ds = new C2312ds(c1618Hi, c1441Am, c1441Am2);
        AbstractC3086qc.A0H(1109, c2312ds);
        c2312ds.setLayoutParams(new RelativeLayout.LayoutParams(-1, i3));
        return c2312ds;
    }
}
