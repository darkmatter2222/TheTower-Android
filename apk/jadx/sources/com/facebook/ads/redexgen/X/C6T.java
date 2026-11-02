package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.facebook.ads.internal.util.activity.AdActivityIntent;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;
import java.util.HashMap;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.6T, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C6T extends FrameLayout implements InterfaceC1529Dw {
    public static byte[] A0A;
    public static String[] A0B = {"gR8VXB3ia", "OJTiurBFiCqcREvzh7o4PkhSqDGudpIq", "iaBHwIBC1utH6CwOSIC2yyAu4ZYXfJ61", "YdU4", "YcTfP9iPeB3iMp", "vsmHP1kkKyGC9kag", "2EZKw0n31g6TC4", "KAWIkc2sX"};
    public C2199c2 A00;
    public final int A01;
    public final LA A02;
    public final C1618Hi A03;
    public final InterfaceC2884nG A04;
    public final C3077qT A05;
    public final InterfaceC3421w1 A06;
    public final C1905Tb A07;
    public final String A08;
    public final boolean A09;

    static {
        A02();
    }

    public C6T(C1618Hi c1618Hi, InterfaceC2884nG interfaceC2884nG, InterfaceC3421w1 interfaceC3421w1, LA la, String str, int i, C3077qT c3077qT) {
        super(c1618Hi);
        this.A03 = c1618Hi;
        this.A04 = interfaceC2884nG;
        this.A02 = la;
        this.A08 = str;
        this.A06 = interfaceC3421w1;
        this.A01 = i;
        C1905Tb c1905TbA02 = M1.A02(la.A1r());
        if (c1905TbA02 != null) {
            this.A07 = c1905TbA02;
            this.A09 = true;
        } else {
            this.A07 = new C1905Tb(this.A03, la, interfaceC2884nG, i);
            M1.A03(la, this.A07);
            this.A09 = false;
        }
        if (c3077qT != null) {
            this.A05 = c3077qT;
            this.A07.A0f(c3077qT);
        } else {
            this.A05 = this.A07.A0N();
        }
        this.A07.A0i(new E4(this));
        this.A07.A0g(interfaceC3421w1);
        EnumC3051q3.A04(this, EnumC3051q3.A0A);
        if (C2863mv.A1z(c1618Hi)) {
            c1618Hi.A0B().AM9(this.A07.A0Q(), la.A37(), false, false, true);
        }
        A04();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ InterfaceC3669k1.d.b.k);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A0A = new byte[]{118, 84, 91, Ascii.DC2, 65, Ascii.NAK, 70, 65, 84, 71, 65, Ascii.NAK, 116, SignedBytes.MAX_POWER_OF_TWO, 81, 92, 80, 91, 86, 80, 123, 80, 65, 66, 90, 71, 94, 116, 86, 65, 92, 67, 92, 65, 76, Ascii.ESC, Ascii.NAK, 120, 84, 94, 80, Ascii.NAK, 70, SignedBytes.MAX_POWER_OF_TWO, 71, 80, Ascii.NAK, 65, 93, 84, 65, Ascii.NAK, 92, 65, Ascii.DC2, 70, Ascii.NAK, 92, 91, Ascii.NAK, 76, 90, SignedBytes.MAX_POWER_OF_TWO, 71, Ascii.NAK, 116, 91, 81, 71, 90, 92, 81, 120, 84, 91, 92, 83, 80, 70, 65, Ascii.ESC, 77, 88, 89, Ascii.NAK, 83, 92, 89, 80, Ascii.ESC, Ascii.RS, Ascii.SUB, Ascii.EM, 45, 60, 49, Base64.padSymbol, 54, 59, Base64.padSymbol, Ascii.SYN, Base64.padSymbol, 44, 47, 55, 42, 51, 54, 57, 8, 54, 52, 35, 62, 33, 62, 35, 46, 77, 66, 71, 77, 69, 113, 93, 65, 91, 92, 77, 75, 55, 56, 45, 48, 47, 60, Ascii.CAN, Base64.padSymbol, Ascii.GS, 56, 45, 56, Ascii.ESC, 44, 55, Base64.padSymbol, 53, 60, 33, 39, 49, 38, 55, 56, Base64.padSymbol, 55, 63, Ascii.SYN, 9, 5, Ascii.ETB, 52, Ascii.EM, Ascii.DLE, 5};
    }

    private final void A03() {
        this.A07.A0j(this);
        if (this.A09) {
            this.A03.A0F().A6g();
            String[] strArr = A0B;
            if (strArr[6].length() != strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0B;
            strArr2[6] = "EW3rEVX7vA8fzU";
            strArr2[4] = "ztAtYR2DvpL08d";
            if (this.A07.A0u()) {
                if (this.A01 == 4) {
                    if (this.A06 != null) {
                        this.A06.AEo(this);
                    }
                    if (C2863mv.A1z(this.A03)) {
                        this.A03.A0B().AEc();
                    }
                } else {
                    ALW();
                }
            }
        } else {
            this.A03.A0F().A6f();
            this.A07.A0a();
        }
        A08();
    }

    private final void A04() {
        C1905Tb.A0C().incrementAndGet();
        A03();
        this.A07.A0d();
    }

    private void A05(Intent intent, LA la) {
        intent.putExtra(A01(157, 8, 17), EnumC2955oR.A08);
        intent.putExtra(A01(130, 18, 40), la);
        intent.addFlags(268435456);
    }

    private final void A06(LA la) {
        AdActivityIntent adActivityIntentA06 = C2997p8.A06(this.A03);
        A05(adActivityIntentA06, la);
        try {
            C2997p8.A0D(this.A03, adActivityIntentA06);
        } catch (Exception e) {
            this.A03.A08().ABz(A01(kotlin.fh.h1, 11, 38), AbstractC2786lf.A0D, new C2787lg(e));
            Log.e(A01(90, 17, 41), A01(0, 90, 68), e);
        }
    }

    private void A07(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        C3304u8 c3304u8 = new C3304u8(this.A03, this.A08, this.A00, this.A05, this.A04, this.A02.A33());
        c3304u8.A0A(this.A02);
        HashMap map = new HashMap();
        if (TextUtils.isEmpty(str2)) {
            str2 = A01(148, 9, 37);
        }
        map.put(A01(118, 12, 95), str2);
        c3304u8.A06(this.A02.A37(), str, map);
    }

    public final void A08() {
        AbstractC3086qc.A0K(this.A07.A0Q());
        addView(this.A07.A0Q(), new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1529Dw
    public final void AAJ(String str) {
        A07(this.A02.A32().A0K().A06(), str);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1529Dw
    public final void AAK(String str, String str2) {
        A07(str, str2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1529Dw
    public final void AAO() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1529Dw
    public final void ABU() {
        new Handler(Looper.getMainLooper()).post(new E3(this));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1529Dw
    public final void AF3() {
        A06(this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1529Dw
    public final void AF7() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1529Dw
    public final void AFy(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1529Dw
    public final void AH6() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1529Dw
    public final void AHh(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1529Dw
    public final void AHj(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1529Dw
    public final void AI1(String str) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1529Dw
    public final void ALW() {
        if (this.A06 != null) {
            this.A06.AEo(this);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1529Dw
    public final void close() {
    }

    public InterfaceC2884nG getAdEventManager() {
        return this.A04;
    }

    public C1905Tb getDynamicWebViewController() {
        return this.A07;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        requestDisallowInterceptTouchEvent(true);
        return super.onTouchEvent(motionEvent);
    }

    public void setAdViewabilityChecker(C2199c2 c2199c2) {
        this.A00 = c2199c2;
        this.A07.A0l(c2199c2);
    }
}
