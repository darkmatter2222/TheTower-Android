package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import com.google.common.base.Ascii;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class FI implements InterfaceC3120rA {
    public static byte[] A0D;
    public int A00;
    public C1464Bj A01;
    public C5Z A02;
    public final C1618Hi A04;
    public final InterfaceC2884nG A05;
    public final InterfaceC3119r9 A06;
    public final InterfaceC3170ry A07;
    public final C1459Be A08;
    public final BE A0C = new BE() { // from class: com.facebook.ads.redexgen.X.6v
        public static byte[] A01;
        public static String[] A02 = {"AyjpfVMH4abbuU", "C4f54F5689i8nguXYuZVyawidNrV99tP", "", "kvcj7JPhLleA0fC5", "qT9ER7mxQyIS", "DVCseFxiIzNfwa", "yADVvB6XdmuuqrvB", "b9AAn0hyeOBCYK5qzyR18"};

        static {
            A01();
        }

        public static String A00(int i, int i2, int i3) {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
            int i4 = 0;
            while (true) {
                int length = bArrCopyOfRange.length;
                if (A02[1].charAt(16) != 'Y') {
                    throw new RuntimeException();
                }
                String[] strArr = A02;
                strArr[7] = "MNhPeHQbaIIJpJ20hNozP";
                strArr[2] = "";
                if (i4 >= length) {
                    return new String(bArrCopyOfRange);
                }
                bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 60);
                i4++;
            }
        }

        public static void A01() {
            A01 = new byte[]{35, Ascii.SYN, 17, Ascii.DC2, Ascii.FS, -10, Ascii.ESC, 33, Ascii.DC2, Ascii.US, 32, 33, Ascii.SYN, 33, Ascii.SO, Ascii.EM, -14, 35, Ascii.DC2, Ascii.ESC, 33};
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
        /* JADX INFO: renamed from: A02, reason: merged with bridge method [inline-methods] */
        public final void A03(BF bf) {
            this.A00.A06.A5D(A00(0, 21, InterfaceC3669k1.d.b.k), bf);
        }
    };
    public final BG A0B = new BG() { // from class: com.facebook.ads.redexgen.X.6u
        public static byte[] A01;

        static {
            A01();
        }

        public static String A00(int i, int i2, int i3) {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
            for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 63);
            }
            return new String(bArrCopyOfRange);
        }

        public static void A01() {
            A01 = new byte[]{72, 87, 90, 91, 81, 119, 80, 74, 91, 76, 77, 74, 87, 74, 95, 82, 123, 72, 91, 80, 74};
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
        /* JADX INFO: renamed from: A02, reason: merged with bridge method [inline-methods] */
        public final void A03(C5W c5w) {
            this.A00.A06.A5D(A00(0, 21, 1), c5w);
        }
    };
    public final BM A09 = new BM() { // from class: com.facebook.ads.redexgen.X.6t
        public static byte[] A01;
        public static String[] A02 = {"OtZHHid0c6Ryk9CDDBq47ngXcNldIUWH", "JwrlVwQ54E2WwwQvkywQUOYHwL6g1bho", "WFiM5IPZvaQ4xMZm5xgvQ3FNROoMY2Kr", "al6ZIECO6LO12zMiuvYELaWNpYKDhozx", "wYAPbQwhGVteNN6MGdL8gA6824n9AnKf", "jTihIhEYsz4XSFMEjn7OlZEBUOzI3KNS", "mXaQIkSzTCVxPQuz9HLogqhmhIjgMyMR", "pEgzTi4rZbqmTwficQat67UuNHBZNbaD"};

        static {
            A01();
        }

        public static String A00(int i, int i2, int i3) {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
            for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 86);
            }
            return new String(bArrCopyOfRange);
        }

        public static void A01() {
            byte[] bArr = {17, 4, -1, 0, 10, -28, 9, Ascii.SI, 0, Ascii.CR, Ascii.SO, Ascii.SI, 4, Ascii.SI, -4, 7, -32, 17, 0, 9, Ascii.SI};
            String[] strArr = A02;
            if (strArr[6].charAt(4) != strArr[3].charAt(4)) {
                throw new RuntimeException();
            }
            A02[2] = "e0kN46odqljBIthjpUkTXG9hdDsWHsKW";
            A01 = bArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
        /* JADX INFO: renamed from: A02, reason: merged with bridge method [inline-methods] */
        public final void A03(C5Y c5y) {
            this.A00.A06.A5D(A00(0, 21, 69), c5y);
        }
    };
    public final BK A0A = new BK() { // from class: com.facebook.ads.redexgen.X.6s
        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
        /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
        public final void A03(BL bl) {
            this.A00.A07.AEx();
        }
    };
    public String A03 = A02(0, 0, 72);

    static {
        A03();
    }

    public FI(C1618Hi c1618Hi, InterfaceC3170ry interfaceC3170ry, InterfaceC2884nG interfaceC2884nG, InterfaceC3119r9 interfaceC3119r9) {
        this.A04 = c1618Hi;
        this.A05 = interfaceC2884nG;
        this.A07 = interfaceC3170ry;
        this.A08 = new C1459Be(c1618Hi);
        this.A08.A0g(new C5M(c1618Hi));
        this.A08.getEventBus().A03(this.A0C, this.A0B, this.A09, this.A0A);
        this.A06 = interfaceC3119r9;
        this.A08.setIsFullScreen(true);
        this.A08.setVolume(1.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(15);
        interfaceC3119r9.A4V(this.A08, layoutParams);
        C3128rI c3128rI = new C3128rI(c1618Hi);
        c3128rI.setOnClickListener(new ViewOnClickListenerC3168rw(this));
        interfaceC3119r9.A4V(c3128rI, c3128rI.getDefaultLayoutParams());
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 38);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A0D = new byte[]{-19, 1, 0, -5, -4, -8, -19, 5, -86, -77, -80, -84, -75, -69, -101, -74, -78, -84, -75, -74, -76, -90, -113, -94, -75, -86, -73, -90, -124, -75, -94, -125, -74, -75, -75, -80, -81, -99, -112, -117, -116, -106, 112, -107, -101, -116, -103, -102, -101, -112, -101, -120, -109, 108, -99, -116, -107, -101, -2, -15, -20, -19, -9, -44, -9, -17, -17, -19, -6, Ascii.CAN, Ascii.VT, 6, 7, 17, -17, -14, -26, -66, -79, -84, -83, -73, -101, -83, -83, -77, -100, -79, -75, -83, 19, 6, 1, 2, Ascii.FF, -14, -17, -23};
    }

    public final void A04(int i) {
        this.A08.setVideoProgressReportIntervalMs(i);
    }

    public final void A05(View view) {
        this.A08.setControlsAnchorView(view);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void ABc(Intent intent, Bundle bundle, C2658jY c2658jY) {
        String strA02 = A02(0, 0, 72);
        String strA03 = A02(8, 11, 33);
        if (bundle == null) {
            String stringExtra = intent.getStringExtra(strA03);
            if (stringExtra != null) {
                strA02 = stringExtra;
            }
            this.A03 = strA02;
        } else {
            String string = bundle.getString(strA03);
            if (string != null) {
                strA02 = string;
            }
            this.A03 = strA02;
        }
        String stringExtra2 = intent.getStringExtra(A02(19, 18, 27));
        if (stringExtra2 != null && !stringExtra2.isEmpty()) {
            C2993p4 c2993p4 = new C2993p4(this.A04, stringExtra2);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            int i = (int) (16.0f * AbstractC3045px.A02);
            layoutParams.setMargins(i, i, i, i);
            layoutParams.addRule(10);
            layoutParams.addRule(9);
            c2993p4.setOnClickListener(new ViewOnClickListenerC3169rx(this));
            this.A06.A4V(c2993p4, layoutParams);
        }
        this.A00 = intent.getIntExtra(A02(77, 13, 34), 0);
        this.A02 = new C5Z(this.A04, this.A05, this.A08, this.A03, intent.getBundleExtra(A02(58, 11, 98)), null);
        if (C2863mv.A20(this.A04)) {
            this.A01 = new C1464Bj(this.A04, this.A05, this.A08, this.A03, false, this.A02, null);
        } else {
            this.A01 = null;
        }
        this.A08.setVideoMPD(intent.getStringExtra(A02(69, 8, 124)));
        this.A08.setVideoURI(intent.getStringExtra(A02(90, 8, 119)));
        if (this.A00 > 0) {
            this.A08.A0b(this.A00);
        }
        if (intent.getBooleanExtra(A02(0, 8, 102), false)) {
            this.A08.A0f(EnumC2324e4.A05, 17);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void AGF(boolean z) {
        this.A06.A5D(A02(37, 21, 1), new BI());
        this.A08.A0Y();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void AGp(boolean z) {
        this.A06.A5D(A02(37, 21, 1), new BH());
        if (this.A08.A0p()) {
            return;
        }
        this.A08.A0f(EnumC2324e4.A05, 18);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void AKD(Bundle bundle) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final String getCurrentClientToken() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void onDestroy() {
        this.A06.A5D(A02(37, 21, 1), new BA(this.A00, this.A08.getCurrentPositionInMillis()));
        if (this.A02 != null) {
            this.A02.A0j(this.A08.getCurrentPositionInMillis());
        }
        if (this.A01 != null) {
            this.A01.A08();
        }
        this.A08.A0c(1);
        this.A08.A0X();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final /* synthetic */ void onStart() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final /* synthetic */ void onStop() {
    }
}
