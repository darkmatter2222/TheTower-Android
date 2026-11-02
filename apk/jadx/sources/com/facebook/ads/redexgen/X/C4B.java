package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.4B, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C4B extends C8j {
    public static byte[] A0H;
    public static String[] A0I = {"ytgtQf0A3GxvRwRaFRi9yCxHj8", "EpeU1U9Laobaxc7aJ25Fd92PabAJtcL", "msyjK3DKiUJ5ISHOy1TiuFE", "AvFd6pVSC", "bPSjgDzbqbbGLdyPvR", "aG34NznxVE", "9eAEyh167wCJ5dZD2wzfFvpqSAeGnNwX", "1xnDDanEqsTw5quyQRBAb3xT4Pg5jsn7"};
    public C8l A00;
    public float A01;
    public int A02;
    public int A03;
    public long A04;
    public final float A05;
    public final int A06;
    public final int A07;
    public final long A08;
    public final long A09;
    public final long A0A;
    public final AbstractC14149l<WG> A0B;
    public final float A0C;
    public final int A0D;
    public final long A0E;
    public final InterfaceC1729Lu A0F;
    public final InterfaceC1993Ws A0G;

    static {
        A04();
    }

    public C4B(@MetaExoPlayerCustomization("Used for OculusAdaptiveTrackSelection") U8 u8, @MetaExoPlayerCustomization("Used to retain old value for Oculus") int[] iArr, int i, InterfaceC1993Ws interfaceC1993Ws, int i2, long j, long j2, long j3, int i3, int i4, float f, float f2, long j4, List<WG> list, InterfaceC1729Lu interfaceC1729Lu) {
        super(u8, iArr, i);
        if (j3 < j) {
            MV.A07(A03(0, 22, 24), A03(22, 90, 67));
            j3 = j;
        }
        this.A0G = interfaceC1993Ws;
        this.A0D = i2;
        this.A08 = j * 1000;
        this.A0E = j2 * 1000;
        this.A09 = 1000 * j3;
        this.A07 = i3;
        this.A06 = i4;
        this.A0C = f;
        this.A05 = f2;
        this.A0B = AbstractC14149l.A05(list);
        this.A0A = j4;
        this.A0F = interfaceC1729Lu;
        this.A01 = 1.0f;
        this.A02 = 0;
        this.A04 = -9223372036854775807L;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0027  */
    public static AbstractC14149l<AbstractC14149l<WG>> A00(WX[] wxArr) {
        long j;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < wxArr.length; i++) {
            if (wxArr[i] != null) {
                int[] iArr = wxArr[i].A02;
                if (A0I[4].length() != 18) {
                    throw new RuntimeException();
                }
                A0I[0] = "4huwIUJP4lrxKzZJ5TGktFgrGb";
                if (iArr.length > 1) {
                    C12944e c12944eA01 = AbstractC14149l.A01();
                    c12944eA01.A04(new WG(0L, 0L));
                    arrayList.add(c12944eA01);
                } else {
                    arrayList.add(null);
                }
            } else {
                arrayList.add(null);
            }
        }
        long[][] jArrA06 = A06(wxArr);
        int[] iArr2 = new int[jArrA06.length];
        long[] jArr = new long[jArrA06.length];
        for (int i2 = 0; i2 < jArrA06.length; i2++) {
            if (jArrA06[i2].length == 0) {
                j = 0;
            } else {
                long[] jArr2 = jArrA06[i2];
                if (A0I[2].length() != 23) {
                    A0I[4] = "rUmOvSr2aPQBU8EFJW";
                    j = jArr2[0];
                } else {
                    A0I[4] = "1vbEShVqHTQPkCj4fW";
                    j = jArr2[0];
                }
            }
            jArr[i2] = j;
        }
        A05(arrayList, jArr);
        AbstractC14149l<Integer> abstractC14149lA02 = A02(jArrA06);
        for (int i3 = 0; i3 < abstractC14149lA02.size(); i3++) {
            int iIntValue = abstractC14149lA02.get(i3).intValue();
            int i4 = iArr2[iIntValue] + 1;
            iArr2[iIntValue] = i4;
            jArr[iIntValue] = jArrA06[iIntValue][i4];
            A05(arrayList, jArr);
        }
        int i5 = 0;
        while (true) {
            int length = wxArr.length;
            if (A0I[6].charAt(10) != 'C') {
                throw new RuntimeException();
            }
            A0I[1] = "oixM1R0C3";
            if (i5 >= length) {
                A05(arrayList, jArr);
                C12944e c12944eA02 = AbstractC14149l.A01();
                for (int i6 = 0; i6 < arrayList.size(); i6++) {
                    C12944e c12944e = (C12944e) arrayList.get(i6);
                    c12944eA02.A04(c12944e == null ? AbstractC14149l.A03() : c12944e.A05());
                }
                return c12944eA02.A05();
            }
            if (arrayList.get(i5) != null) {
                jArr[i5] = jArr[i5] * 2;
            }
            i5++;
        }
    }

    public static AbstractC14149l<Integer> A02(long[][] jArr) {
        char c;
        double d;
        int i;
        double d2;
        InterfaceC1959Vi interfaceC1959ViA00 = AbstractC1957Vg.A02().A03().A00();
        for (int i2 = 0; i2 < jArr.length; i2++) {
            if (jArr[i2].length > 1) {
                double[] dArr = new double[jArr[i2].length];
                int i3 = 0;
                while (true) {
                    int length = jArr[i2].length;
                    double dLog = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                    if (A0I[5].length() != 3) {
                        A0I[1] = "LzU0YrooF";
                        if (i3 >= length) {
                            double d3 = dArr[dArr.length - 1];
                            if (A0I[7].charAt(25) != 'P') {
                                A0I[0] = "2oimUMuqCSkCv1HAu5giUoyTbh";
                                c = 0;
                                d = d3 - dArr[0];
                                i = 0;
                            } else {
                                A0I[1] = "MxfcU8";
                                c = 0;
                                d = d3 - dArr[0];
                                i = 0;
                            }
                            for (int i4 = 1; i < dArr.length - i4; i4 = 1) {
                                double d4 = (dArr[i] + dArr[i + 1]) * 0.5d;
                                if (d == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                                    d2 = 1.0d;
                                } else {
                                    double d5 = d4 - dArr[c];
                                    if (A0I[6].charAt(10) == 'C') {
                                        A0I[0] = "Orly8lcw1wyPG2oOgZ6VA5o5Gb";
                                        d2 = d5 / d;
                                    }
                                }
                                interfaceC1959ViA00.AIR(Double.valueOf(d2), Integer.valueOf(i2));
                                i++;
                            }
                            break;
                        }
                        if (jArr[i2][i3] != -1) {
                            dLog = Math.log(jArr[i2][i3]);
                        }
                        dArr[i3] = dLog;
                        i3++;
                    }
                    throw new RuntimeException();
                }
            }
        }
        return AbstractC14149l.A05(interfaceC1959ViA00.values());
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0H, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 10);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A0H = new byte[]{99, -122, -125, -110, -106, -117, -104, -121, 118, -108, -125, -123, -115, 117, -121, -114, -121, -123, -106, -117, -111, -112, -114, -79, -73, -62, -64, -63, -74, -69, -76, 109, -70, -74, -69, -111, -62, -65, -82, -63, -74, -68, -69, -95, -68, -97, -78, -63, -82, -74, -69, -114, -77, -63, -78, -65, -111, -74, -64, -80, -82, -65, -79, -102, -64, 109, -63, -68, 109, -81, -78, 109, -82, -63, 109, -71, -78, -82, -64, -63, 109, -70, -74, -69, -111, -62, -65, -82, -63, -74, -68, -69, -109, -68, -65, -98, -62, -82, -71, -74, -63, -58, -106, -69, -80, -65, -78, -82, -64, -78, -102, -64};
    }

    public static void A05(List<C12944e<WG>> list, long[] jArr) {
        long j = 0;
        int i = 0;
        while (true) {
            int length = jArr.length;
            if (A0I[1].length() == 8) {
                throw new RuntimeException();
            }
            A0I[2] = "RgHk1yngzUfgMkKEBMQXOUl";
            if (i >= length) {
                for (int i2 = 0; i2 < list.size(); i2++) {
                    C12944e<WG> c12944e = list.get(i2);
                    if (A0I[1].length() == 8) {
                        throw new RuntimeException();
                    }
                    A0I[5] = "YJeCE6NHECK9IKWROc6C9mzK";
                    if (c12944e != null) {
                        c12944e.A04(new WG(j, jArr[i2]));
                    }
                }
                return;
            }
            j += jArr[i];
            i++;
        }
    }

    public static long[][] A06(WX[] wxArr) {
        long[][] jArr = new long[wxArr.length][];
        for (int i = 0; i < wxArr.length; i++) {
            WX wx = wxArr[i];
            if (wx == null) {
                jArr[i] = new long[0];
            } else {
                jArr[i] = new long[wx.A02.length];
                for (int i2 = 0; i2 < wx.A02.length; i2++) {
                    U8 u8 = wx.A01;
                    int i3 = wx.A02[i2];
                    if (A0I[7].charAt(25) != 'P') {
                        throw new RuntimeException();
                    }
                    A0I[7] = "VbEp8zA6NMgTAUJUczvF6PnIEPWnCVjU";
                    long j = u8.A08(i3).A05;
                    long[] jArr2 = jArr[i];
                    if (j == -1) {
                        j = 0;
                    }
                    jArr2[i2] = j;
                }
                Arrays.sort(jArr[i]);
            }
        }
        return jArr;
    }

    @Override // com.facebook.ads.redexgen.X.C8j, com.facebook.ads.redexgen.X.RA
    public final void A6W() {
        this.A00 = null;
    }

    @Override // com.facebook.ads.redexgen.X.C8j, com.facebook.ads.redexgen.X.RA
    public final void A6t() {
        this.A04 = -9223372036854775807L;
        this.A00 = null;
    }

    @Override // com.facebook.ads.redexgen.X.RA
    public final int A9g() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.C8j, com.facebook.ads.redexgen.X.RA
    public final void AGO(float f) {
        this.A01 = f;
    }
}
