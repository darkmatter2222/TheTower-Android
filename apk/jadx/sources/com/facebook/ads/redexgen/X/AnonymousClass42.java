package com.facebook.ads.redexgen.X;

import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import com.google.common.base.Ascii;
import com.ironsource.InterfaceC3669k1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.42, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class AnonymousClass42 extends C8C {
    public static byte[] A05;
    public static String[] A06 = {"xbnCgKFzPDtux71hi6SpiioG4IwmRHBk", "3owY3Ap9luKWwPsAK25ne8wIVcCUn5JR", "FALgiAFIRpKoJzILG2rL", "VYC3eNSa18fVQa4jjeRnJSXlztjlcjqe", "6zSgZNb2SgCQYSVm7OWWQdLKxVFzji9G", "C3fF681Isvt2M5djOp3Dlhy5YNaLaBgK", "ZbCLQeP0ma1QvLm1XWzLDe6emcm3qYWC", "I30lsL6qeO5KldQ"};
    public static final Pattern A07;
    public float A00;
    public float A01;
    public Map<String, C2195by> A02;
    public final C2190bt A03;
    public final boolean A04;

    static {
        A09();
        A07 = Pattern.compile(A07(1, 31, 27));
    }

    public AnonymousClass42() {
        this(null);
    }

    public AnonymousClass42(List<byte[]> list) {
        super(A07(223, 10, 58));
        this.A01 = -3.4028235E38f;
        this.A00 = -3.4028235E38f;
        if (list == null || list.isEmpty()) {
            this.A04 = false;
            this.A03 = null;
            return;
        }
        this.A04 = true;
        String strA0q = N1.A0q(list.get(0));
        AbstractC1722Ln.A07(strA0q.startsWith(A07(43, 7, 117)));
        this.A03 = (C2190bt) AbstractC1722Ln.A01(C2190bt.A00(strA0q));
        A0A(new C1744Mk(list.get(1)));
    }

    public static float A00(int i) {
        switch (i) {
            case 0:
                return 0.05f;
            case 1:
                if (A06[1].charAt(29) == 'X') {
                    throw new RuntimeException();
                }
                String[] strArr = A06;
                strArr[0] = "ioNayQ3WXGIOa3oyuyV3JORtfQpSd3Hu";
                strArr[6] = "voG9Dz1LHbY8eCjev7dDxv9y22HrDzXa";
                return 0.5f;
            case 2:
                return 0.95f;
            default:
                return -3.4028235E38f;
        }
    }

    public static int A01(int i) {
        switch (i) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                MV.A07(A07(223, 10, 58), A07(239, 19, 102) + i);
                return Integer.MIN_VALUE;
            case 1:
            case 2:
            case 3:
                if (A06[5].charAt(12) != 'M') {
                    throw new RuntimeException();
                }
                A06[5] = "wbmolFowgyKoMv8BT53csS9QgncO0HGb";
                return 2;
            case 4:
            case 5:
            case 6:
                return 1;
            case 7:
            case 8:
            case 9:
                return 0;
        }
    }

    public static int A02(int i) {
        switch (i) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                MV.A07(A07(223, 10, 58), A07(239, 19, 102) + i);
                return Integer.MIN_VALUE;
            case 1:
            case 4:
            case 7:
                String[] strArr = A06;
                if (strArr[3].charAt(4) == strArr[4].charAt(4)) {
                    throw new RuntimeException();
                }
                A06[1] = "wr3J1YuF59dNmHzqw7UYwGvsz4dBhi1l";
                return 0;
            case 2:
            case 5:
            case 8:
                return 1;
            case 3:
            case 6:
            case 9:
                return 2;
        }
    }

    public static int A03(long j, List<Long> list, List<List<C1911Th>> list2) {
        int i = 0;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).longValue() == j) {
                return size;
            }
            if (list.get(size).longValue() < j) {
                i = size + 1;
                break;
            }
        }
        list.add(i, Long.valueOf(j));
        list2.add(i, i == 0 ? new ArrayList() : new ArrayList(list2.get(i - 1)));
        return i;
    }

    public static long A04(String str) {
        Matcher matcher = A07.matcher(str.trim());
        if (matcher.matches()) {
            return (Long.parseLong((String) N1.A0f(matcher.group(1))) * 60 * 60 * 1000000) + (Long.parseLong((String) N1.A0f(matcher.group(2))) * 60 * 1000000) + (Long.parseLong((String) N1.A0f(matcher.group(3))) * 1000000) + (Long.parseLong((String) N1.A0f(matcher.group(4))) * 10000);
        }
        return -9223372036854775807L;
    }

    public static Layout.Alignment A05(int i) {
        switch (i) {
            case -1:
                return null;
            case 0:
            default:
                MV.A07(A07(223, 10, 58), A07(239, 19, 102) + i);
                return null;
            case 1:
            case 4:
            case 7:
                return Layout.Alignment.ALIGN_NORMAL;
            case 2:
            case 5:
            case 8:
                return Layout.Alignment.ALIGN_CENTER;
            case 3:
            case 6:
            case 9:
                return Layout.Alignment.ALIGN_OPPOSITE;
        }
    }

    public static C1911Th A06(String str, C2195by c2195by, C2192bv c2192bv, float f, float f2) {
        int i;
        SpannableString spannableString = new SpannableString(str);
        C1712Ld c1712LdA0G = new C1712Ld().A0G(spannableString);
        if (c2195by != null) {
            if (c2195by.A04 != null) {
                spannableString.setSpan(new ForegroundColorSpan(c2195by.A04.intValue()), 0, spannableString.length(), 33);
            }
            if (c2195by.A02 == 3 && c2195by.A03 != null) {
                spannableString.setSpan(new BackgroundColorSpan(c2195by.A03.intValue()), 0, spannableString.length(), 33);
            }
            if (c2195by.A00 != -3.4028235E38f && f2 != -3.4028235E38f) {
                c1712LdA0G.A08(c2195by.A00 / f2, 1);
            }
            if (c2195by.A06 && c2195by.A07) {
                spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
            } else if (c2195by.A06) {
                spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
            } else if (c2195by.A07) {
                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
            }
            if (c2195by.A09) {
                spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
            }
            if (c2195by.A08) {
                spannableString.setSpan(new StrikethroughSpan(), 0, spannableString.length(), 33);
            }
        }
        if (c2192bv.A00 != -1) {
            i = c2192bv.A00;
        } else {
            i = c2195by != null ? c2195by.A01 : -1;
        }
        c1712LdA0G.A0F(A05(i)).A0A(A02(i)).A09(A01(i));
        if (c2192bv.A01 == null || f2 == -3.4028235E38f || f == -3.4028235E38f) {
            c1712LdA0G.A04(A00(c1712LdA0G.A01()));
            c1712LdA0G.A07(A00(c1712LdA0G.A00()), 0);
        } else {
            PointF pointF = c2192bv.A01;
            String[] strArr = A06;
            if (strArr[0].charAt(16) == strArr[6].charAt(16)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A06;
            strArr2[3] = "b936oxykl6opzTKM5E1tJSe50SsxvTBB";
            strArr2[4] = "jgdA59R252I7vX8iLnId3nHL3h1eX2f6";
            c1712LdA0G.A04(pointF.x / f);
            c1712LdA0G.A07(c2192bv.A01.y / f2, 0);
        }
        return c1712LdA0G.A0H();
    }

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 62);
        }
        return new String(bArrCopyOfRange);
    }

    public static Map<String, C2195by> A08(C1744Mk c1744Mk) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        C2191bu c2191buA00 = null;
        while (true) {
            String strA0T = c1744Mk.A0T();
            if (strA0T == null || (c1744Mk.A07() != 0 && c1744Mk.A0B() == 91)) {
                break;
            }
            if (strA0T.startsWith(A07(43, 7, 117))) {
                c2191buA00 = C2191bu.A00(strA0T);
            } else if (strA0T.startsWith(A07(233, 6, 123))) {
                if (c2191buA00 == null) {
                    MV.A07(A07(223, 10, 58), A07(50, 46, 69) + strA0T);
                } else {
                    C2195by c2195byA04 = C2195by.A04(strA0T, c2191buA00);
                    if (c2195byA04 != null) {
                        linkedHashMap.put(c2195byA04.A05, c2195byA04);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    public static void A09() {
        A05 = new byte[]{-73, -127, -104, -109, -127, -75, -67, -124, -126, -109, -126, -104, -127, -75, -67, -124, -126, -109, -127, -75, -67, -124, -126, -76, -109, -121, -74, -127, -75, -67, -124, -126, -84, -106, -12, Ascii.EM, 17, Ascii.FS, Ascii.US, Ascii.ETB, 37, Ascii.NAK, -22, -7, 34, 37, 32, Ascii.DC4, 39, -19, -42, -18, -20, -13, -13, -20, -15, -22, -93, -86, -42, -9, -4, -17, -24, -67, -86, -93, -17, -20, -15, -24, -93, -27, -24, -23, -14, -11, -24, -93, -86, -55, -14, -11, -16, -28, -9, -67, -86, -93, -17, -20, -15, -24, -67, -93, 2, Ascii.SUB, Ascii.CAN, Ascii.US, Ascii.US, Ascii.CAN, Ascii.GS, Ascii.SYN, -49, 19, Ascii.CAN, Ascii.DLE, Ascii.ESC, Ascii.RS, Ascii.SYN, 36, Ascii.DC4, -49, Ascii.ESC, Ascii.CAN, Ascii.GS, Ascii.DC4, -49, 17, Ascii.DC4, Ascii.NAK, Ascii.RS, 33, Ascii.DC4, -49, Ascii.DC2, Ascii.RS, Ascii.FS, Ascii.US, Ascii.ESC, Ascii.DC4, 35, Ascii.DC4, -49, Ascii.NAK, Ascii.RS, 33, Ascii.FS, Ascii.DLE, 35, -23, -49, -69, -45, -47, -40, -40, -47, -42, -49, -120, -52, -47, -55, -44, -41, -49, -35, -51, -120, -44, -47, -42, -51, -120, -33, -47, -36, -48, -120, -50, -51, -33, -51, -38, -120, -53, -41, -44, -35, -43, -42, -37, -120, -36, -48, -55, -42, -120, -50, -41, -38, -43, -55, -36, -94, -120, -32, -8, -10, -3, -3, -10, -5, -12, -83, -10, -5, 3, -18, -7, -10, -15, -83, 1, -10, -6, -10, -5, -12, -57, -83, -53, -21, -39, -68, -35, -37, -25, -36, -35, -22, Ascii.FF, 45, 50, 37, Ascii.RS, -13, -7, Ascii.DC2, Ascii.SI, Ascii.DC2, 19, Ascii.ESC, Ascii.DC2, -60, 5, Ascii.DLE, Ascii.CR, Ascii.VT, Ascii.DC2, 17, 9, Ascii.DC2, Ascii.CAN, -34, -60, -37, -59, -10, -27, -18, -12, -13, -35, 4, -4, Ascii.FF, Ascii.ESC, Ascii.DC2, Ascii.EM, Ascii.GS, -55, -14, Ascii.ETB, Ascii.SI, Ascii.CAN, 6, -2, -7, -41, -61, -10, Ascii.ETB, Ascii.FS, Ascii.SI, 8, Ascii.SYN, 0, -85, -90, -124, 112, -93, -60, -55, -68, -75, -61, -83, 112, -79, -62, -75, 112, -66, -65, -60, 112, -61, -59, -64, -64, -65, -62, -60, -75, -76, -2, -7, -41, -50, -61, -10, Ascii.ETB, Ascii.FS, Ascii.SI, 8, Ascii.SYN, 0, -38, -52, -51, -39, -57, -39, -75, -79, -90, -66, -73, -86, -72, -67, Ascii.NAK, 17, 6, Ascii.RS, Ascii.ETB, 10, Ascii.CAN, Ascii.RS, 121, 87};
    }

    private void A0A(C1744Mk c1744Mk) {
        while (true) {
            String strA0T = c1744Mk.A0T();
            if (strA0T == null) {
                return;
            }
            if (A07(266, 13, kotlin.fh.h1).equalsIgnoreCase(strA0T)) {
                A0B(c1744Mk);
            } else if (A07(319, 12, 101).equalsIgnoreCase(strA0T)) {
                this.A02 = A08(c1744Mk);
            } else if (A07(279, 11, 101).equalsIgnoreCase(strA0T)) {
                MV.A06(A07(223, 10, 58), A07(290, 29, 18));
            } else if (A07(258, 8, 66).equalsIgnoreCase(strA0T)) {
                return;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:15:0x0054  */
    private void A0B(C1744Mk c1744Mk) {
        while (true) {
            String strA0T = c1744Mk.A0T();
            if (strA0T == null) {
                return;
            }
            if (c1744Mk.A07() != 0 && c1744Mk.A0B() == 91) {
                return;
            }
            String[] strArrSplit = strA0T.split(A07(33, 1, 30));
            if (strArrSplit.length == 2) {
                byte b = 0;
                String strA01 = XC.A01(strArrSplit[0].trim());
                String[] strArr = A06;
                if (strArr[0].charAt(16) == strArr[6].charAt(16)) {
                    throw new RuntimeException();
                }
                A06[5] = "ifXCIfHfH71dM6rZrRRLzSgLVtHG8Ljd";
                switch (strA01.hashCode()) {
                    case 1879649548:
                        if (!strA01.equals(A07(337, 8, 7))) {
                            b = -1;
                        }
                        break;
                    case 1879649549:
                        if (!strA01.equals(A07(345, 8, 103))) {
                            b = -1;
                        } else {
                            b = 1;
                        }
                        break;
                    default:
                        b = -1;
                        break;
                }
                switch (b) {
                    case 0:
                        this.A01 = Float.parseFloat(strArrSplit[1].trim());
                        break;
                    case 1:
                        try {
                            this.A00 = Float.parseFloat(strArrSplit[1].trim());
                        } catch (NumberFormatException unused) {
                        }
                        break;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00a5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:33:0x0062 A[SYNTHETIC] */
    private void A0C(C1744Mk c1744Mk, List<List<C1911Th>> list, List<Long> list2) {
        C2190bt c2190btA00 = this.A04 ? this.A03 : null;
        while (true) {
            String strA0T = c1744Mk.A0T();
            if (strA0T == null) {
                return;
            }
            boolean zStartsWith = strA0T.startsWith(A07(43, 7, 117));
            if (A06[5].charAt(12) != 'M') {
                throw new RuntimeException();
            }
            String[] strArr = A06;
            strArr[0] = "SxKBgYOXD0g7VRKd6wElRSFayzrxKQkC";
            strArr[6] = "SJNjeDKc8h4oj7g5XsxtT3LxguPyqJDp";
            if (zStartsWith) {
                c2190btA00 = C2190bt.A00(strA0T);
            } else if (A06[5].charAt(12) == 'M') {
                String[] strArr2 = A06;
                strArr2[2] = "Z6D3xawGOuqjWgS5bOOG";
                strArr2[7] = "y8qvQfw3u7PeS7Q";
                if (strA0T.startsWith(A07(34, 9, 114))) {
                    if (c2190btA00 == null) {
                        MV.A07(A07(223, 10, 58), A07(96, 47, InterfaceC3669k1.d.b.k) + strA0T);
                    } else {
                        A0D(strA0T, c2190btA00, list, list2);
                    }
                }
            } else if (strA0T.startsWith(A07(34, 9, 114))) {
                if (c2190btA00 == null) {
                    MV.A07(A07(223, 10, 58), A07(96, 47, InterfaceC3669k1.d.b.k) + strA0T);
                } else {
                    A0D(strA0T, c2190btA00, list, list2);
                }
            }
        }
    }

    private void A0D(String str, C2190bt c2190bt, List<List<C1911Th>> list, List<Long> list2) {
        String strA07 = A07(34, 9, 114);
        AbstractC1722Ln.A07(str.startsWith(strA07));
        String[] strArrSplit = str.substring(strA07.length()).split(A07(32, 1, 66), c2190bt.A01);
        int length = strArrSplit.length;
        int i = c2190bt.A01;
        String strA08 = A07(223, 10, 58);
        if (length != i) {
            MV.A07(strA08, A07(143, 55, 42) + str);
            return;
        }
        long jA04 = A04(strArrSplit[c2190bt.A02]);
        String strA09 = A07(198, 25, 79);
        if (jA04 == -9223372036854775807L) {
            MV.A07(strA08, strA09 + str);
            return;
        }
        long jA05 = A04(strArrSplit[c2190bt.A00]);
        if (jA05 == -9223372036854775807L) {
            MV.A07(strA08, strA09 + str);
            return;
        }
        C2195by c2195by = (this.A02 == null || c2190bt.A03 == -1) ? null : this.A02.get(strArrSplit[c2190bt.A03].trim());
        String str2 = strArrSplit[c2190bt.A04];
        C2192bv c2192bvA02 = C2192bv.A02(str2);
        String strA04 = C2192bv.A04(str2);
        String strA010 = A07(331, 2, 64);
        String strA011 = A07(0, 1, 111);
        C1911Th c1911ThA06 = A06(strA04.replace(strA010, strA011).replace(A07(335, 2, 45), strA011).replace(A07(333, 2, 51), A07(353, 2, 121)), c2195by, c2192bvA02, this.A01, this.A00);
        int iA03 = A03(jA05, list2, list);
        for (int iA04 = A03(jA04, list2, list); iA04 < iA03; iA04++) {
            list.get(iA04).add(c1911ThA06);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C8C
    public final InterfaceC2166bV A0g(byte[] bArr, int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        C1744Mk c1744Mk = new C1744Mk(bArr, i);
        if (!this.A04) {
            A0A(c1744Mk);
        }
        A0C(c1744Mk, arrayList, arrayList2);
        return new C1790Oe(arrayList, arrayList2);
    }
}
