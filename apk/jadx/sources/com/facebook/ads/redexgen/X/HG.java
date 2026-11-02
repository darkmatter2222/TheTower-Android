package com.facebook.ads.redexgen.X;

import android.content.Context;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderImpl;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class HG implements InterfaceC2757lC {
    public static HG A07;
    public static byte[] A08;
    public static String[] A09 = {"kZNWMB05A80rolZkZr5gINRkemJedumA", "PGnlsDLswmZGHAGkHnqyou4j", "CQczeQcoxNMNqPeDO5UPH4delPie3CF6", "Ozs7AQnIuhnl4TF488yhCLnc3lqg3Tqv", "QUMQF15y8F49TOv2Mbtf3pi6YRJU7tsl", "iRM3Hx3PCEqf", "8yEJzjy1AvS4vnL", "zEXAgd0MZ6iopjt"};
    public InterfaceC2304dj A00;
    public InterfaceC2750l3 A01;
    public InterfaceC2756lB A02;
    public InterfaceC2772lR A03;
    public C2816mA A04;
    public InterfaceC2896nS A05;
    public AH A06;

    static {
        A07();
    }

    public static InterfaceC2715kT A00(C1617Hh c1617Hh, AH ah) {
        if (!C2863mv.A1r(c1617Hh) || ah == null) {
            return null;
        }
        return AbstractC2716kU.A00().A00(ah);
    }

    public static InterfaceC2772lR A01(C1617Hh c1617Hh) {
        return AbstractC2773lS.A00().A00(c1617Hh, new HN());
    }

    public static synchronized HG A02() {
        if (A07 == null) {
            A07 = new HG();
        }
        return A07;
    }

    public static InterfaceC2189bs A03(C1617Hh c1617Hh) {
        if (C2863mv.A1n(c1617Hh)) {
            return C2114af.A01(c1617Hh);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2757lC
    /* JADX INFO: renamed from: A04, reason: merged with bridge method [inline-methods] */
    public final synchronized AH A9s() {
        return this.A06;
    }

    public static AH A05(C1617Hh c1617Hh, InterfaceC2772lR interfaceC2772lR, InterfaceC2189bs interfaceC2189bs) {
        if (!C2863mv.A2p(c1617Hh) || interfaceC2189bs == null || ProcessUtils.isRemoteRenderingProcess()) {
            return null;
        }
        return AbstractC2042Yu.A00().A00(c1617Hh, interfaceC2772lR, interfaceC2189bs, AbstractC2953oP.A04(c1617Hh), new HH(new C2945oH(c1617Hh, A06(0, 0, 122), null, EnumC2925nx.A07, 0, new C2929o1(), AbstractC3068qK.A01(C2863mv.A0L(c1617Hh)), null, null, new K5()), c1617Hh), ZO.A00().A00());
    }

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A09;
            if (strArr[6].length() != strArr[7].length()) {
                break;
            }
            String[] strArr2 = A09;
            strArr2[6] = "Hv2WK1fJh7GnXaP";
            strArr2[7] = "jwUFRNkRPBL5IaL";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            int i5 = bArrCopyOfRange[i4] - i3;
            String[] strArr3 = A09;
            if (strArr3[4].charAt(26) != strArr3[0].charAt(26)) {
                break;
            }
            String[] strArr4 = A09;
            strArr4[2] = "3jbuj6iR6sIerVLqEJ9xAsC0KuP7QrbG";
            strArr4[3] = "qsuffxm3RCjhy50iWQEl04Txy4tWGAPw";
            bArrCopyOfRange[i4] = (byte) (i5 - 98);
            i4++;
        }
        throw new RuntimeException();
    }

    public static void A07() {
        A08 = new byte[]{-57, -55, -10, -58, -57, -13, -64, -13, -16, 2, Ascii.DLE, Ascii.DLE, 6, Ascii.FF, Ascii.VT, -67, 1, -2, 17, -2, -67, 6, Ascii.VT, 6, 17, 6, -2, 9, 6, Ascii.ETB, 2, 1, 33, Ascii.DC4, Ascii.US, Ascii.RS, 33, 35, 2, Ascii.DC4, 34, 34, Ascii.CAN, Ascii.RS, Ascii.GS, -13, Ascii.DLE, 35, Ascii.DLE, -8, Ascii.GS, Ascii.CAN, 35, Ascii.CAN, Ascii.DLE, Ascii.ESC, Ascii.CAN, 41, Ascii.DC4, 19};
        if (A09[1].length() == 32) {
            throw new RuntimeException();
        }
        String[] strArr = A09;
        strArr[2] = "XQj6tBQR93KUWcmqG7acynHpkyXbPHo4";
        strArr[3] = "0fPU7ngiro1m2vFzwgFa3cBnolZ3o5pA";
    }

    public static void A08() {
        String strA06 = A06(8, 24, 59);
        if (A09[5].length() == 20) {
            throw new RuntimeException();
        }
        A09[5] = "4ii3kc4oT9MJsiDOLfNQb5ib2";
        AbstractC2933o5.A05(A06(32, 28, 77), strA06, A06(0, 8, 46));
    }

    public static void A09(C1617Hh c1617Hh, InterfaceC2715kT interfaceC2715kT) {
        if (!C2863mv.A1r(c1617Hh) || interfaceC2715kT == null) {
            return;
        }
        AbstractC2713kR.A00().A00(interfaceC2715kT, c1617Hh);
    }

    public static void A0A(C1617Hh c1617Hh, AH ah) {
        if (!C2863mv.A0k(c1617Hh) || ah == null) {
            return;
        }
        new C2735ko(c1617Hh, ah, new C2736kp(), DynamicLoaderImpl.getBidderTokenProviderApi().A00());
    }

    public static void A0B(C1617Hh c1617Hh, AH ah) {
        if (ah == null) {
            return;
        }
        AbstractC2867mz.A00(c1617Hh, ah);
    }

    public final synchronized void A0C(C1617Hh c1617Hh) {
        if (this.A06 != null) {
            return;
        }
        this.A03 = A01(c1617Hh);
        this.A06 = A05(c1617Hh, this.A03, A03(c1617Hh));
        A09(c1617Hh, A00(c1617Hh, this.A06));
        A0A(c1617Hh, this.A06);
        A0B(c1617Hh, this.A06);
        if (this.A06 != null) {
            this.A06.A7D();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2757lC
    public final InterfaceC2884nG A7N(C1617Hh c1617Hh) {
        return C1603Gt.A01(c1617Hh);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2757lC
    public final synchronized InterfaceC2756lB A7e(C2755lA c2755lA) {
        if (this.A02 == null) {
            this.A02 = new HI(this);
        }
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2757lC
    public final synchronized InterfaceC2750l3 A7r() {
        if (this.A01 == null) {
            this.A01 = new C1619Hj();
        }
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2757lC
    public final synchronized InterfaceC2772lR A8M(C2755lA c2755lA) {
        if (this.A03 == null) {
            this.A03 = A01(c2755lA.A02());
        }
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2757lC
    public final synchronized InterfaceC2785le A8O(C2755lA c2755lA) {
        return new HW(c2755lA);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2757lC
    public final synchronized InterfaceC2758lD A8Y(final C2755lA c2755lA) {
        return new HM(c2755lA) { // from class: com.facebook.ads.redexgen.X.7B
            @Override // com.facebook.ads.redexgen.X.InterfaceC2758lD
            public final boolean AAQ() {
                return TextureViewSurfaceTextureListenerC1431Ac.A09();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2758lD
            public final void ADG() {
                C2810m4.A06(C2673jn.A09(super.A00));
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2758lD
            public final void ADj() {
                C2810m4.A07(C2673jn.A09(super.A00));
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2758lD
            public final void AEE(C1617Hh c1617Hh) {
                AbstractC2462gJ.A01(c1617Hh);
            }
        };
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2757lC
    public final synchronized InterfaceC2304dj A8n(C2755lA c2755lA) {
        if (!C2863mv.A12(c2755lA)) {
            return null;
        }
        if (this.A00 == null) {
            this.A00 = AbstractC2305dk.A00().A00(new HL(c2755lA));
        }
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2757lC
    public final synchronized InterfaceC2760lF A9b(C2755lA c2755lA) {
        return new HJ(c2755lA);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2757lC
    public final C1617Hh A9c(Context context) {
        C1617Hh c1617HhA00 = AbstractC2754l9.A00();
        if (c1617HhA00 != null) {
            return c1617HhA00;
        }
        C1617Hh c1617Hh = new C1617Hh(context, this);
        AbstractC2754l9.A01(c1617Hh);
        return c1617Hh;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2757lC
    public final synchronized InterfaceC2896nS A9d(C1617Hh c1617Hh) {
        if (this.A05 == null) {
            this.A05 = new H1(c1617Hh);
        }
        return this.A05;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2757lC
    public final synchronized C2816mA A9j() {
        if (this.A04 == null) {
            this.A04 = new C2816mA();
            A08();
        }
        return this.A04;
    }
}
