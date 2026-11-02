package com.facebook.ads.redexgen.X;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import java.util.Arrays;
import p005kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.vV, reason: case insensitive filesystem */
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
public final class C3389vV {
    public static byte[] A07;
    public static String[] A08 = {"Fg25ZAS5qyWtSMEaeyPxh4apRouG1tqM", "nOxR2PNfNx1bwsXAiQsbbdUvuSV5O9Rg", "PgKBmvYu18n7yinyAWIO91lSAQYuc96E", "WzbySyXde24tfudf1jKK8lU1THHukPm", "oUyefTqi4KAsKMghU5d9pe9EP1KVacDS", "x", "meTSjhvrANMS660TgG0sekhqgou6", "NydTYy6inh1XiBHiRc8eDpj1nMYR"};
    public C3226ss A00;
    public C3295tz A01;
    public final LA A02;
    public final C1618Hi A03;
    public final C2892nO A04;
    public final InterfaceC3119r9 A05;
    public final C3226ss A06;

    static {
        A01();
    }

    public C3389vV(C1618Hi c1618Hi, LA la, C2892nO c2892nO, InterfaceC3119r9 interfaceC3119r9) {
        C1h.A09(c1618Hi, A00(56, 8, 2));
        C1h.A09(la, A00(43, 13, 84));
        C1h.A09(interfaceC3119r9, A00(64, 9, 29));
        this.A03 = c1618Hi;
        this.A02 = la;
        this.A04 = c2892nO;
        this.A05 = interfaceC3119r9;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A08[3].length() != 31) {
                throw new RuntimeException();
            }
            String[] strArr = A08;
            strArr[2] = "sL7Uco0bul6bO2utwLUjpJspuVMaICnF";
            strArr[0] = "mmuQj5bkX4NxDU71EKhTcoE6UOYYDm9F";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 44);
            i4++;
        }
    }

    public static void A01() {
        A07 = new byte[]{-83, -68, -81, -85, -66, -81, -112, -65, -74, -74, -99, -83, -68, -81, -81, -72, -117, -82, -115, -68, -81, -82, -77, -66, -106, -77, -72, -81, -99, -66, -85, -66, -77, -83, -96, -77, -81, -63, 114, 120, 120, 120, 115, -19, -63, -28, -60, -31, -12, -31, -62, -11, -18, -28, -20, -27, -101, 113, -99, -100, -94, -109, -90, -94, -74, -107, -78, -68, -67, -82, -73, -82, -69, -62, -65, -65, -60, -100, -79, -55, -65, -59, -60};
    }

    private final void A02(RelativeLayout relativeLayout, int i) {
        if (!this.A02.A3S()) {
            boolean zA3O = this.A02.A3O();
            String[] strArr = A08;
            if (strArr[1].charAt(4) == strArr[4].charAt(4)) {
                throw new RuntimeException();
            }
            A08[5] = "4fZx7DX1";
            if (!zA3O) {
                return;
            }
        }
        this.A00 = AbstractC3231sx.A01(this.A03, false, this.A02, this.A04, this.A05, EnumC3229sv.A02, AbstractC3228su.A00(this.A02));
        C3226ss c3226ss = this.A00;
        if (c3226ss == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(11);
        layoutParams.setMargins(AbstractC3043pv.A00, AbstractC3043pv.A00, i, AbstractC3043pv.A00);
        c3226ss.setLayoutParams(layoutParams);
        relativeLayout.addView(c3226ss);
    }

    private final void A03(RelativeLayout relativeLayout, int i) {
        if (this.A02.A3U()) {
            C3230sw c3230swA02 = AbstractC3231sx.A02(this.A03, EnumC3229sv.A02, this.A02);
            C1h.A08(c3230swA02, A00(0, 43, 30));
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(9);
            layoutParams.setMargins(i, AbstractC3043pv.A00, AbstractC3043pv.A00, AbstractC3043pv.A00);
            c3230swA02.setLayoutParams(layoutParams);
            relativeLayout.addView(c3230swA02);
        }
    }

    private final void A04(RelativeLayout relativeLayout, int i, int i2) {
        this.A01 = new C3295tz(this.A03, this.A02, this.A05, this.A04, 0L, 16, null);
        C3295tz c3295tz = this.A01;
        if (c3295tz == null) {
            return;
        }
        LinearLayout linearLayoutA0A = c3295tz.A0A();
        linearLayoutA0A.setId(i);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(12);
        layoutParams.addRule(11);
        layoutParams.setMargins(0, 0, i2, AbstractC3043pv.A0e);
        linearLayoutA0A.setLayoutParams(layoutParams);
        relativeLayout.addView(linearLayoutA0A);
        linearLayoutA0A.bringToFront();
    }

    private final boolean A05() {
        if (!this.A02.A3S() && !this.A02.A3O()) {
            boolean zA3U = this.A02.A3U();
            String[] strArr = A08;
            if (strArr[2].charAt(4) == strArr[0].charAt(4)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A08;
            strArr2[1] = "XkxzSW7syBH4wQ6IMuyB0blC3k8r6qi0";
            strArr2[4] = "KEgJ9Sr8CZtU76MlR4dKdFrjJ7HYmW9k";
            if (!zA3U) {
                return false;
            }
        }
        return true;
    }

    public final int A06(RelativeLayout relativeLayout, int i) {
        C1h.A09(relativeLayout, A00(73, 10, 36));
        int iGenerateViewId = View.generateViewId();
        if (A05()) {
            RelativeLayout relativeLayout2 = new RelativeLayout(this.A03);
            relativeLayout2.setId(iGenerateViewId);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.addRule(12);
            layoutParams.setMargins(0, 0, 0, AbstractC3043pv.A0e);
            A02(relativeLayout2, i);
            A03(relativeLayout2, i);
            relativeLayout.addView(relativeLayout2, layoutParams);
        } else {
            A04(relativeLayout, iGenerateViewId, i);
        }
        return iGenerateViewId;
    }

    public final void A07() {
        C3226ss c3226ss = this.A00;
        if (c3226ss != null) {
            c3226ss.A0O();
        }
        C3226ss c3226ss2 = this.A06;
        if (c3226ss2 != null) {
            c3226ss2.A0O();
        }
        C3295tz c3295tz = this.A01;
        if (c3295tz != null) {
            c3295tz.A0B();
        }
    }

    public final void A08(boolean z) {
        C3226ss c3226ss;
        if (!z && (c3226ss = this.A00) != null) {
            c3226ss.A0P();
        }
        C3226ss c3226ss2 = this.A06;
        if (c3226ss2 != null) {
            c3226ss2.A0P();
        }
        C3295tz c3295tz = this.A01;
        String[] strArr = A08;
        if (strArr[2].charAt(4) == strArr[0].charAt(4)) {
            throw new RuntimeException();
        }
        A08[5] = "Yt43bExMyxMbKzq1luY1Wb3";
        if (c3295tz != null) {
            c3295tz.A0C();
        }
    }
}
