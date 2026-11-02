package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.facebook.ads.internal.settings.MultithreadedBundleWrapper;
import com.facebook.ads.internal.util.activity.ActivityUtils;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.m4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2810m4 {
    public static boolean A00;
    public static boolean A01;
    public static byte[] A02;
    public static String[] A03 = {"qrNp1wG", "4f9SKAEMWw8LBpPH9ClfYFaSVVluVAOE", "62aVnpwn360RV3u8SEcmxFYidJmBvefX", "Gce9ySP9MgoEln4cNVrEo5sJO8CSkBrv", "GAv6eBsy68sSiadtgyjEU9blJSusD372", "OMedkGV5dbFzDsS0dZcen", "wlEAAxVLaYYUt0VSnPi", "2B4l1t7rFez9Iyb0KdS6JKEUq9HBo8Fu"};
    public static final AtomicBoolean A04;
    public static final AtomicBoolean A05;
    public static final AtomicBoolean A06;

    static {
        A03();
        A06 = new AtomicBoolean();
        A04 = new AtomicBoolean();
        A05 = new AtomicBoolean();
    }

    public static HS A00() {
        return new HS();
    }

    public static HR A01(C1617Hh c1617Hh) {
        return new HR(c1617Hh);
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A03[1].charAt(3) == 'A') {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[4] = "IDfTBPjSyvL4biEe7dLkbKSavqcQmadb";
            strArr[2] = "Oy3yacq1X2KDRnpIDSUXWs28RTZJmhMt";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 60);
            i4++;
        }
    }

    public static void A03() {
        A02 = new byte[]{-60, -57, -9, -7, -53, -12, -58, -8, -66, -70, -71, -19, -36, -31, -35, -26, -37, -35, -58, -35, -20, -17, -25, -22, -29, -62, -77, -70, -113, -40, -35, -40, -29, -40, -48, -37, -40, -23, -48, -29, -40, -34, -35, -113, -30, -29, -48, -31, -29, -44, -45, -60, -43, -36, -111, -24, -46, -28, -111, -46, -35, -29, -42, -46, -43, -22, -111, -38, -33, -38, -27, -38, -46, -35, -38, -21, -42, -43, -110, -111, -60, -36, -38, -31, -31, -38, -33, -40, -97, -62, -40, -34, -119, -51, -40, -41, -112, -35, -119, -52, -54, -43, -43, -119, -86, -34, -51, -46, -50, -41, -52, -50, -73, -50, -35, -32, -40, -37, -44, -86, -51, -36, -105, -46, -41, -46, -35, -46, -54, -43, -46, -29, -50, -111, -110, -105, -119, -68, -40, -42, -50, -119, -49, -34, -41, -52, -35, -46, -40, -41, -54, -43, -46, -35, -30, -119, -42, -54, -30, -119, -41, -40, -35, -119, -32, -40, -37, -44, -119, -39, -37, -40, -39, -50, -37, -43, -30, -105, -66, -51, -58, -31, -33, -24, -33, -20, -29, -35, -9, -4, -9, 2, -9, -17, -6, -9, 8, -13, 5, 10, 5, Ascii.DLE, 5, -3, 8, 5, Ascii.SYN, 1, -60, -59, -68, 10, Ascii.VT, Ascii.DLE, -68, -1, -3, 8, 8, 1, 0, -54};
    }

    public static void A04(AudienceNetworkAds.InitListener initListener, AudienceNetworkAds.InitResult initResult) {
        ExecutorC3079qV.A01.execute(new HT(initListener, initResult));
    }

    public static void A06(C1617Hh c1617Hh) {
        if (!AbstractC2865mx.A0P(c1617Hh) || A05.getAndSet(true)) {
            return;
        }
        try {
            Thread.setDefaultUncaughtExceptionHandler(new C2776lV(Thread.getDefaultUncaughtExceptionHandler(), c1617Hh, new HP()));
        } catch (Exception e) {
            c1617Hh.A08().ABz(A02(181, 7, 62), AbstractC2786lf.A1X, new C2787lg(e));
        }
    }

    public static void A07(C1617Hh c1617Hh) {
        A0G(c1617Hh, null, null, 3);
    }

    public static void A08(C1617Hh c1617Hh) {
        A0G(c1617Hh, null, null, 3);
    }

    public static void A09(C1617Hh c1617Hh) {
        if (C2863mv.A2P(c1617Hh)) {
            A0E(c1617Hh, 0);
        }
        if (C2863mv.A2Z(c1617Hh)) {
            A0B(c1617Hh);
        }
    }

    public static void A0A(C1617Hh c1617Hh) {
        if (C2863mv.A2Q(c1617Hh)) {
            A0F(c1617Hh, null, 3);
        }
    }

    public static void A0B(C1617Hh c1617Hh) {
        ExecutorC3091qh.A06.execute(new HU(c1617Hh));
    }

    public static void A0C(C1617Hh c1617Hh) {
        AbstractC2462gJ.A02(c1617Hh);
        C2780lZ.A0C(c1617Hh, new HO(c1617Hh), new HY(), BuildConfigApi.isDebug());
        c1617Hh.A0A();
    }

    public static void A0E(C1617Hh c1617Hh, int i) {
        AbstractC2754l9.A01(c1617Hh);
        if (A04.getAndSet(true)) {
            return;
        }
        if (AdInternalSettings.isDebugBuild() || AdInternalSettings.isDebuggerOn()) {
            AbstractC2933o5.A02();
        }
        A06(c1617Hh);
        AbstractC2982ot.A00(C2863mv.A0p(c1617Hh), BuildConfigApi.isDebug(), A00(), A01(c1617Hh));
        C2731kk.A03(C2863mv.A02(c1617Hh));
        if (!ProcessUtils.isRemoteRenderingProcess()) {
            C2114af.A09(new HQ(c1617Hh));
        }
        if (i == 3) {
            Log.e(A02(8, 17, 60), A02(89, 89, 45));
            c1617Hh.A08().ACp(A02(178, 3, 33), AbstractC2786lf.A0R, new C2787lg(A02(198, 24, 96)));
        }
        ActivityUtils.A04(c1617Hh, AudienceNetworkActivity.class);
        ExecutorC3091qh.A05(c1617Hh);
        C2895nR.A05(c1617Hh);
        C2375eu.A01(c1617Hh);
        if (C2863mv.A15(c1617Hh)) {
            AbstractC2651jR.A00(c1617Hh);
        }
        if (C2863mv.A1z(c1617Hh)) {
            HG.A02().A9d(c1617Hh);
        }
    }

    public static void A0F(C1617Hh c1617Hh, AudienceNetworkAds.InitListener initListener, int i) {
        AbstractC2754l9.A01(c1617Hh);
        boolean z = false;
        synchronized (C2810m4.class) {
            if (!A00) {
                if (i == 1 || i == 2) {
                    A00 = true;
                    z = true;
                } else if (i == 3 && !A01) {
                    A01 = true;
                    z = true;
                }
            }
        }
        if (z) {
            A0E(c1617Hh, i);
            ExecutorC3091qh.A08.execute(new HV(c1617Hh, initListener));
        } else if (i == 1) {
            String strA02 = A02(51, 38, 53);
            if (initListener != null) {
                A04(initListener, new C2809m3(true, strA02));
            } else {
                Log.w(A02(8, 17, 60), strA02);
            }
        }
    }

    public static void A0G(C1617Hh c1617Hh, MultithreadedBundleWrapper multithreadedBundleWrapper, AudienceNetworkAds.InitListener initListener, int i) {
        AbstractC2933o5.A05(A02(188, 10, 82), A02(25, 26, 51), A02(0, 8, 87));
        C2114af.A06();
        A0F(c1617Hh, initListener, i);
    }

    public static synchronized boolean A0H() {
        return A00;
    }
}
