package com.facebook.ads.androidx.media3.extractor;

import android.net.Uri;
import com.facebook.ads.androidx.media3.extractor.DefaultExtractorsFactory;
import com.facebook.ads.androidx.media3.extractor.mkv.MatroskaExtractor;
import com.facebook.ads.redexgen.X.C1752Ms;
import com.facebook.ads.redexgen.X.C1765Nf;
import com.facebook.ads.redexgen.X.C1783Nx;
import com.facebook.ads.redexgen.X.C1802Oq;
import com.facebook.ads.redexgen.X.C1822Pr;
import com.facebook.ads.redexgen.X.C2039Yr;
import com.facebook.ads.redexgen.X.InterfaceC2038Yq;
import com.facebook.ads.redexgen.X.InterfaceC2043Yv;
import com.facebook.ads.redexgen.X.InterfaceC2047Yz;
import com.facebook.ads.redexgen.X.KZ;
import com.facebook.ads.redexgen.X.NV;
import com.facebook.ads.redexgen.X.OF;
import com.facebook.ads.redexgen.X.OH;
import com.facebook.ads.redexgen.X.OK;
import com.facebook.ads.redexgen.X.OO;
import com.facebook.ads.redexgen.X.P2;
import com.facebook.ads.redexgen.X.P4;
import com.facebook.ads.redexgen.X.PH;
import com.facebook.ads.redexgen.X.Pu;
import com.facebook.ads.redexgen.X.Q2;
import com.facebook.ads.redexgen.X.VC;
import com.facebook.ads.redexgen.X.XR;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class DefaultExtractorsFactory implements InterfaceC2047Yz {
    public static byte[] A0D;
    public static String[] A0E = {"o9C", "GXpkWwsbUyCdjMJss5Mlhy", "dX7kyu0ymu1tPk2MEjAuTC8bS", "CQJej7vggJCRVMlzrqPE0tiN", "jMocT0CgikAWlnOlhoP", "kPPXKPYJ9", "Q95avzczX4yS8nouaHMEsAoJkgDu5NL", "CsSLuTjAAQf3OuBEHFe3AyV6L"};
    public static final C2039Yr A0F;
    public static final C2039Yr A0G;
    public static final int[] A0H;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08 = 1;
    public int A09 = 112800;

    @MetaExoPlayerCustomization
    public List<VC> A0A = XR.A03(new VC[0]);
    public boolean A0B;
    public boolean A0C;

    static {
        A05();
        A0H = new int[]{5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14};
        A0F = new C2039Yr(new InterfaceC2038Yq() { // from class: com.facebook.ads.redexgen.X.QH
            @Override // com.facebook.ads.redexgen.X.InterfaceC2038Yq
            public final Constructor A82() {
                return DefaultExtractorsFactory.A01();
            }
        });
        A0G = new C2039Yr(new InterfaceC2038Yq() { // from class: com.facebook.ads.redexgen.X.QE
            @Override // com.facebook.ads.redexgen.X.InterfaceC2038Yq
            public final Constructor A82() {
                return DefaultExtractorsFactory.A02();
            }
        });
    }

    @MetaExoPlayerCustomization
    public DefaultExtractorsFactory() {
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 54);
            String[] strArr = A0E;
            if (strArr[5].length() == strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0E;
            strArr2[5] = "HZPlqvRiP";
            strArr2[0] = "iKB";
        }
        return new String(bArrCopyOfRange);
    }

    public static Constructor<? extends InterfaceC2043Yv> A01() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        if (Boolean.TRUE.equals(Class.forName(A00(124, 63, 30)).getMethod(A00(187, 11, 84), new Class[0]).invoke(null, new Object[0]))) {
            return Class.forName(A00(59, 65, 74)).asSubclass(InterfaceC2043Yv.class).getConstructor(Integer.TYPE);
        }
        return null;
    }

    public static Constructor<? extends InterfaceC2043Yv> A02() throws NoSuchMethodException, ClassNotFoundException {
        return Class.forName(A00(0, 59, 124)).asSubclass(InterfaceC2043Yv.class).getConstructor(new Class[0]);
    }

    public static void A05() {
        A0D = new byte[]{Ascii.NAK, 33, Ascii.US, -32, Ascii.CAN, 19, Ascii.NAK, Ascii.ETB, Ascii.DC4, 33, 33, Ascii.GS, -32, 19, Ascii.SYN, 37, -32, 19, 32, Ascii.SYN, 36, 33, Ascii.ESC, Ascii.SYN, 42, -32, Ascii.US, Ascii.ETB, Ascii.SYN, Ascii.ESC, 19, -27, -32, Ascii.SYN, Ascii.ETB, Ascii.NAK, 33, Ascii.SYN, Ascii.ETB, 36, -32, Ascii.US, Ascii.ESC, Ascii.SYN, Ascii.ESC, -32, -1, Ascii.ESC, Ascii.SYN, Ascii.ESC, -9, 42, 38, 36, 19, Ascii.NAK, 38, 33, 36, -29, -17, -19, -82, -26, -31, -29, -27, -30, -17, -17, -21, -82, -31, -28, -13, -82, -25, -17, -17, -25, -20, -27, -82, -31, -18, -28, -14, -17, -23, -28, -82, -27, -8, -17, -16, -20, -31, -7, -27, -14, -78, -82, -27, -8, -12, -82, -26, -20, -31, -29, -82, -58, -20, -31, -29, -59, -8, -12, -14, -31, -29, -12, -17, -14, -73, -61, -63, -126, -70, -75, -73, -71, -74, -61, -61, -65, -126, -75, -72, -57, -126, -69, -61, -61, -69, -64, -71, -126, -75, -62, -72, -58, -61, -67, -72, -126, -71, -52, -61, -60, -64, -75, -51, -71, -58, -122, -126, -71, -52, -56, -126, -70, -64, -75, -73, -126, -102, -64, -75, -73, -96, -67, -74, -58, -75, -58, -51, -13, -3, -53, 0, -21, -13, -10, -21, -20, -10, -17};
    }

    @MetaExoPlayerCustomization
    private void A06(int i, List<InterfaceC2043Yv> list) {
        switch (i) {
            case 0:
                list.add(new OO());
                return;
            case 1:
                list.add(new OK());
                return;
            case 2:
                int i2 = this.A00;
                boolean z = this.A0C;
                if (A0E[6].length() == 7) {
                    throw new RuntimeException();
                }
                A0E[1] = "jXKq1Ha3Af98m8zeWTWpib";
                list.add(new OH((this.A0B ? 2 : 0) | (z ? 1 : 0) | i2));
                return;
            case 3:
                list.add(new Q2((this.A0B ? 2 : 0) | (this.A0C ? 1 : 0) | this.A01));
                return;
            case 4:
                InterfaceC2043Yv interfaceC2043YvA03 = A0F.A03(Integer.valueOf(this.A02));
                if (interfaceC2043YvA03 != null) {
                    list.add(interfaceC2043YvA03);
                    return;
                } else {
                    list.add(new Pu(this.A02));
                    return;
                }
            case 5:
                list.add(new C1822Pr());
                return;
            case 6:
                list.add(new MatroskaExtractor(this.A04));
                return;
            case 7:
                list.add(new PH((this.A0B ? 2 : 0) | (this.A0C ? 1 : 0) | this.A05));
                return;
            case 8:
                list.add(new P2().A01(this.A03));
                list.add(new P4(this.A06));
                return;
            case 9:
                list.add(new C1802Oq());
                return;
            case 10:
                list.add(new C1783Nx());
                return;
            case 11:
                list.add(new C1765Nf(this.A08, new C1752Ms(0L), new OF(this.A07, this.A0A), this.A09));
                return;
            case 12:
                list.add(new NV());
                return;
            case 13:
            case 14:
            default:
                return;
            case 15:
                InterfaceC2043Yv interfaceC2043YvA04 = A0G.A03(new Object[0]);
                if (interfaceC2043YvA04 != null) {
                    list.add(interfaceC2043YvA04);
                    return;
                }
                return;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2047Yz
    public final synchronized InterfaceC2043Yv[] A5w() {
        return A5x(Uri.EMPTY, new HashMap());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2047Yz
    public final synchronized InterfaceC2043Yv[] A5x(Uri uri, Map<String, List<String>> map) {
        ArrayList arrayList;
        arrayList = new ArrayList(A0H.length);
        int iA02 = KZ.A02(map);
        if (iA02 != -1) {
            A06(iA02, arrayList);
        }
        int iA00 = KZ.A00(uri);
        if (iA00 != -1 && iA00 != iA02) {
            A06(iA00, arrayList);
        }
        for (int i : A0H) {
            if (i != iA02 && i != iA00) {
                A06(i, arrayList);
            }
        }
        return (InterfaceC2043Yv[]) arrayList.toArray(new InterfaceC2043Yv[arrayList.size()]);
    }
}
