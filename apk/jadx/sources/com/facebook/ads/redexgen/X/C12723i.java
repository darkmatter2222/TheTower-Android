package com.facebook.ads.redexgen.X;

import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.List;
import p005kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3i, reason: invalid class name and case insensitive filesystem */
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
public final class C12723i extends AbstractC13235h {
    public static byte[] A02;
    public static final int A03;
    public static final C2734kn A04;
    public static final int A05;
    public final C3349ur A00;
    public final C1483Cc A01;

    static {
        A03();
        A04 = new C2734kn(null);
        A05 = AbstractC3043pv.A06;
        A03 = AbstractC3043pv.A0C;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12723i(C3349ur c3349ur, String str, C1483Cc c1483Cc) {
        super(c3349ur, false, str, c1483Cc);
        C1h.A09(c3349ur, A02(64, 6, 14));
        C1h.A09(str, A02(26, 11, 110));
        C1h.A09(c1483Cc, A02(0, 26, 37));
        this.A00 = c3349ur;
        this.A01 = c1483Cc;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 116);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A02 = new byte[]{-4, -6, Ascii.VT, 8, Ascii.SO, Ascii.FF, -2, 5, -36, -6, Ascii.VT, -3, -37, -2, 1, -6, Ascii.SI, 2, 8, Ascii.VT, -31, -2, 5, 9, -2, Ascii.VT, 69, 78, 75, 71, 80, 86, 54, 81, 77, 71, 80, 8, Ascii.DC4, 19, Ascii.EM, 10, Ascii.GS, Ascii.EM, -24, -19, -13, -28, -15, -32, -30, -13, -24, -11, -28, -52, -28, -29, -24, -32, -56, -19, -27, -18, -14, -29, -12, -29, -17, -11};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC13235h
    public final void A1t(C1618Hi c1618Hi) {
        C1h.A09(c1618Hi, A02(37, 7, 49));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC13235h
    public final void A1u(C1618Hi c1618Hi, InterfaceC2619iv interfaceC2619iv) {
        C1h.A09(c1618Hi, A02(37, 7, 49));
        C1h.A09(interfaceC2619iv, A02(44, 20, 11));
        List<C2622iy> listA7q = interfaceC2619iv.A7q();
        List<C2622iy> list = listA7q;
        if (list == null || list.isEmpty()) {
            return;
        }
        C2622iy c2622iy = listA7q.get(0);
        int iMin = (int) (Math.min(AbstractC3045px.A04.widthPixels, AbstractC3045px.A04.heightPixels) * 0.74f);
        RelativeLayout relativeLayout = new RelativeLayout(c1618Hi);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(iMin, (int) (iMin * 2.06f)));
        C3321uP c3321uP = new C3321uP(c1618Hi);
        c3321uP.setRadius(A05);
        c3321uP.setAdjustViewBounds(true);
        c3321uP.setScaleType(ImageView.ScaleType.CENTER_CROP);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(13);
        c3321uP.setLayoutParams(layoutParams);
        c3321uP.setOnClickListener(new ViewOnClickListenerC2712kQ(c2622iy, this));
        relativeLayout.addView(c3321uP);
        addView(relativeLayout);
        new AsyncTaskC1552Et(c3321uP, this.A00.A06()).A04().A06(new C6(this)).A07(c2622iy.A06());
    }
}
