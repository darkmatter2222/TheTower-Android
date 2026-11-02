package com.facebook.ads.redexgen.X;

import android.graphics.Typeface;
import android.text.TextUtils;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.List;
import p005kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.mN, reason: case insensitive filesystem */
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
public final class C2829mN {
    public static byte[] A04;
    public static String[] A05 = {"wGScD8", "oPZfnFqeiuQp5tIiq7auFiLk80yAHegP", "4", "GYD7gch", "AWD5Gw4quaezKpfifvCiCkmCb", "GvllotOSRE86GeTStenHBKCXSTADrh3Y", "k9G59oRQ91IBErqTGWW2r93dI", "HxetapKDtkYR2GSbfKkwiAcFodRUyZ"};
    public static final C2845md A06;
    public TextView A00;
    public final RelativeLayout A01;
    public final C1618Hi A02;
    public final List<InterfaceC2619iv> A03;

    static {
        A02();
        A06 = new C2845md(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C2829mN(C1618Hi c1618Hi, RelativeLayout relativeLayout, List<? extends InterfaceC2619iv> list) {
        C1h.A09(c1618Hi, A01(0, 7, 8));
        C1h.A09(relativeLayout, A01(20, 10, 69));
        C1h.A09(list, A01(7, 13, 114));
        this.A02 = c1618Hi;
        this.A01 = relativeLayout;
        this.A03 = list;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x003a  */
    private final String A00(int i) {
        boolean z;
        C2395fE c2395fEA03;
        C2402fL c2402fLA0J;
        if (i < 0 || i >= this.A03.size()) {
            return null;
        }
        List<C2622iy> listA7q = this.A03.get(i).A7q();
        List<C2622iy> list = listA7q;
        if (list != null) {
            boolean zIsEmpty = list.isEmpty();
            if (A05[1].charAt(31) == 'Z') {
                throw new RuntimeException();
            }
            A05[5] = "1FWHGGrzRl4TsXmWRe1ePUjdivmi4nH4";
            if (zIsEmpty) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = true;
        }
        if (z || (c2395fEA03 = listA7q.get(0).A03()) == null || (c2402fLA0J = c2395fEA03.A0J()) == null) {
            return null;
        }
        return c2402fLA0J.A0H();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 61);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A04 = new byte[]{-88, -76, -77, -71, -86, -67, -71, Ascii.FS, Ascii.DC4, 19, Ascii.CAN, Ascii.DLE, -8, Ascii.GS, Ascii.NAK, Ascii.RS, -5, Ascii.CAN, 34, 35, -14, -29, -12, -25, -16, -10, -40, -21, -25, -7};
    }

    public final int A03() {
        TextView textView = this.A00;
        if (textView != null) {
            return textView.getId();
        }
        return -1;
    }

    public final void A04(int i) {
        if (this.A00 != null) {
            return;
        }
        String strA00 = A00(0);
        TextView textView = new TextView(this.A02);
        String str = strA00;
        if (str == null || str.length() == 0) {
            textView.setVisibility(8);
        } else {
            textView.setText(strA00);
        }
        textView.setTextSize(17.0f);
        textView.setTextColor(-1);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setGravity(17);
        textView.setMaxLines(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        AbstractC3086qc.A0L(textView);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(14);
        layoutParams.addRule(2, i);
        layoutParams.setMargins(AbstractC3043pv.A0n, 0, AbstractC3043pv.A0n, AbstractC3043pv.A0c);
        this.A01.addView(textView, layoutParams);
        this.A00 = textView;
    }

    public final void A05(int i) {
        TextView textView = this.A00;
        if (textView == null) {
            return;
        }
        String strA00 = A00(i);
        String str = strA00;
        if (str == null || str.length() == 0) {
            textView.setVisibility(8);
        } else {
            textView.setText(strA00);
            textView.setVisibility(0);
        }
    }
}
