package com.facebook.ads.redexgen.X;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.to, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3284to extends LinearLayout {
    public static byte[] A0A;
    public static String[] A0B = {"cmzsI0MqV", "rmZj6bXGr2Mc3k6GGfUNTI8ab", "Oqa2BQOYUIgPEQnUKqUaSgjmS1hAy2aw", "VbR8t651F3u5xAC0yd", "KwIIB1PdAD0xOvkamO3Meu", "6KEr", "QBka00Gf2XeExLF7IYa6e3", ""};
    public static final LinearLayout.LayoutParams A0C;
    public LinearLayout A00;
    public TextView A01;
    public String A02;
    public boolean A03;
    public final int A04;
    public final View.OnClickListener A05;
    public final RelativeLayout A06;
    public final C1618Hi A07;
    public final ViewOnClickListenerC1544El A08;
    public final C3321uP A09;

    static {
        A0i();
        A0C = new LinearLayout.LayoutParams(-2, -2);
    }

    public AbstractC3284to(C1618Hi c1618Hi, ViewOnClickListenerC1544El viewOnClickListenerC1544El, int i, C2404fN c2404fN, boolean z, String str, InterfaceC2884nG interfaceC2884nG, InterfaceC3119r9 interfaceC3119r9, C2199c2 c2199c2, C3077qT c3077qT, C2410fT c2410fT, boolean z2, String str2) {
        super(c1618Hi);
        this.A02 = A0h(0, 0, 119);
        AbstractC3086qc.A0L(this);
        this.A07 = c1618Hi;
        this.A04 = i;
        this.A03 = z2;
        this.A02 = str2;
        this.A09 = new C3321uP(c1618Hi);
        AbstractC3086qc.A0O(this.A09, 0);
        AbstractC3086qc.A0H(1106, this.A09);
        if (z2) {
            this.A00 = new LinearLayout(c1618Hi);
            this.A01 = new TextView(c1618Hi);
            AbstractC3086qc.A0L(this.A01);
        }
        if (viewOnClickListenerC1544El != null) {
            this.A08 = viewOnClickListenerC1544El;
        } else {
            this.A08 = new ViewOnClickListenerC1544El(c1618Hi, str, c2404fN, z, interfaceC2884nG, interfaceC3119r9, c2199c2, c3077qT, c2410fT);
        }
        AbstractC3086qc.A0H(1001, this.A08);
        this.A05 = AbstractC3335ud.A03(this.A08, A0h(0, 9, 54));
        this.A06 = new RelativeLayout(c1618Hi);
        this.A06.setLayoutParams(A0C);
        AbstractC3086qc.A0L(this.A06);
    }

    public static String A0h(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 49);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0i() {
        byte[] bArr = {-56, -53, -53, -52, -37, -56, -48, -45, -38};
        if (A0B[1].length() != 25) {
            throw new RuntimeException();
        }
        A0B[2] = "W8PIFEgMaUlhByfzvyeLgAFdtcDk8ZOz";
        A0A = bArr;
    }

    public void A0j() {
    }

    public void A0k() {
        this.A09.setOnClickListener(this.A05);
    }

    public abstract void A0l(int i);

    public void A0m(boolean z) {
    }

    public final ViewOnClickListenerC1544El getCTAButton() {
        return this.A08;
    }

    public View getExpandableLayout() {
        return null;
    }

    public final ImageView getIconView() {
        return this.A09;
    }

    public void setInfo(C2402fL c2402fL, C2406fP c2406fP, String str, String str2, InterfaceC3056q8 interfaceC3056q8, InterfaceC3303u7 interfaceC3303u7) {
        this.A08.setCta(c2406fP, str, new HashMap(), interfaceC3056q8, interfaceC3303u7);
        new AsyncTaskC1552Et(this.A09, this.A07).A05(this.A04, this.A04).A07(str2);
    }

    public void setTitleMaxLines(int i) {
    }
}
