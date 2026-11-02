package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.cJ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2216cJ {
    public static byte[] A02;
    public static String[] A03 = {"lJvTV1IM7hs7", "PRNnRUobRpGnXZ0gXytIbuZj8kp2Tifj", "bNkW6dQCxzm9LdB00jKOopGfFc2AT89t", "s4KtPf2K9cUmExQNthjfTOUPHZLuZKNx", "o3KU9lQ4nBxOI8hzckWmUjJto4sHKy9y", "J1fzOlq2Er4uvigloMbfYHOhugPrJLAR", "sUNUKGwXbPm6aeYl7n3VTxidrVyIUsqM", "XoghjSlHxjFBvsqjlEabTUzlw8OeuE7g"};
    public static final Pattern A04;
    public static final Pattern A05;
    public final C1744Mk A00 = new C1744Mk();
    public final StringBuilder A01 = new StringBuilder();

    static {
        A07();
        A05 = Pattern.compile(A01(49, 19, 35));
        A04 = Pattern.compile(A01(68, 32, 45));
    }

    public static char A00(C1744Mk c1744Mk, int i) {
        return (char) c1744Mk.A0l()[i];
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 1);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A02(C1744Mk c1744Mk) {
        int iA09 = c1744Mk.A09();
        int iA0A = c1744Mk.A0A();
        boolean z = false;
        while (iA09 < iA0A && !z) {
            int i = iA09 + 1;
            z = ((char) c1744Mk.A0l()[iA09]) == ')';
            iA09 = i;
        }
        return c1744Mk.A0W((iA09 - 1) - c1744Mk.A09()).trim();
    }

    public static String A03(C1744Mk c1744Mk, StringBuilder sb) {
        sb.setLength(0);
        int iA09 = c1744Mk.A09();
        int iA0A = c1744Mk.A0A();
        boolean z = false;
        while (iA09 < iA0A && !z) {
            char c = (char) c1744Mk.A0l()[iA09];
            if ((c < 'A' || c > 'Z') && ((c < 'a' || c > 'z') && ((c < '0' || c > '9') && c != '#' && c != '-'))) {
                if (A03[0].length() == 11) {
                    throw new RuntimeException();
                }
                String[] strArr = A03;
                strArr[1] = "mCGtI0QiSkyrfVZGohdEdWQKILFWpqhS";
                strArr[5] = "zdmXXCOsWuQwLgyrBcHPqIAUQwRwnjj9";
                if (c != '.' && c != '_') {
                    z = true;
                }
            }
            iA09++;
            sb.append(c);
        }
        c1744Mk.A0g(iA09 - c1744Mk.A09());
        return sb.toString();
    }

    public static String A04(C1744Mk c1744Mk, StringBuilder sb) {
        A09(c1744Mk);
        if (c1744Mk.A07() == 0) {
            return null;
        }
        String strA03 = A03(c1744Mk, sb);
        String strA01 = A01(0, 0, 65);
        return !strA01.equals(strA03) ? strA03 : strA01 + ((char) c1744Mk.A0I());
    }

    public static String A05(C1744Mk c1744Mk, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder();
        boolean z = false;
        while (!z) {
            int iA09 = c1744Mk.A09();
            String strA04 = A04(c1744Mk, sb);
            if (strA04 == null) {
                String[] strArr = A03;
                if (strArr[6].charAt(0) != strArr[3].charAt(0)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A03;
                strArr2[6] = "sG7VvmGnqjfg5AIih5VwIcXymFwlMgD0";
                strArr2[3] = "s5pJ3gpLiyqtX7ScU9oFWVLsaPbWNu74";
                return null;
            }
            if (A01(252, 1, 75).equals(strA04) || A01(11, 1, 100).equals(strA04)) {
                c1744Mk.A0f(iA09);
                String[] strArr3 = A03;
                if (strArr3[6].charAt(0) != strArr3[3].charAt(0)) {
                    z = true;
                } else {
                    A03[7] = "46OQjtQYGREU6Yk0poY5rwue5kg79imI";
                    z = true;
                }
            } else {
                sb2.append(strA04);
            }
        }
        return sb2.toString();
    }

    public static String A06(C1744Mk c1744Mk, StringBuilder sb) {
        A09(c1744Mk);
        if (c1744Mk.A07() < 5) {
            return null;
        }
        if (!A01(6, 5, InterfaceC3669k1.d.b.j).equals(c1744Mk.A0W(5))) {
            return null;
        }
        int iA09 = c1744Mk.A09();
        String strA04 = A04(c1744Mk, sb);
        if (strA04 == null) {
            return null;
        }
        if (A01(251, 1, 13).equals(strA04)) {
            c1744Mk.A0f(iA09);
            return A01(0, 0, 65);
        }
        String strA02 = A01(3, 1, 85).equals(strA04) ? A02(c1744Mk) : null;
        if (A01(4, 1, 65).equals(A04(c1744Mk, sb))) {
            return strA02;
        }
        return null;
    }

    public static void A07() {
        A02 = new byte[]{53, Ascii.FF, 5, 124, 105, 56, 75, 75, Ascii.DC2, 4, Ascii.DC4, 94, 55, Ascii.DLE, 8, Ascii.US, Ascii.DC2, Ascii.ETB, Ascii.SUB, 94, Ascii.CAN, 17, Ascii.DLE, 10, 83, Ascii.CR, Ascii.ETB, 4, Ascii.ESC, 68, 94, 89, 35, 17, Ascii.SYN, 2, 0, 0, 55, 7, 7, 36, Ascii.NAK, 6, 7, 17, 6, 74, 56, 126, 121, 84, 77, 75, 65, 71, Ascii.US, 0, 10, 121, 124, 0, 127, 8, Ascii.VT, 0, 126, 127, 114, 4, 4, 19, Ascii.SYN, 119, Ascii.FS, 1, Ascii.NAK, 113, 6, 112, 2, 5, 19, 119, Ascii.FS, 1, Ascii.NAK, 113, 7, 5, 4, 92, 84, 80, 73, 65, 80, 9, 5, 8, SignedBytes.MAX_POWER_OF_TWO, 77, 77, 4, 7, 5, Ascii.CR, 1, Ascii.DC4, 9, 19, 8, 2, 75, 5, 9, 10, 9, Ascii.DC4, Ascii.NAK, Ascii.CAN, Ascii.ESC, 19, 32, 44, 47, 44, 49, 62, 51, Base64.padSymbol, 51, 46, 41, 19, Ascii.ESC, 62, 55, 54, 44, 117, 62, 57, 53, 49, 52, 33, 112, 121, 120, 98, 59, 101, 127, 108, 115, 89, 80, 81, 75, Ascii.DC2, 76, 75, 70, 83, 90, 86, 95, 94, 68, Ascii.GS, 71, 85, 89, 87, 88, 68, 87, 74, 95, 82, 87, 93, 68, 93, 78, 89, 80, 88, Ascii.VT, Ascii.FF, Ascii.ESC, 0, 84, 9, Ascii.SYN, 10, Ascii.DLE, Ascii.CR, Ascii.DLE, Ascii.SYN, Ascii.ETB, 48, 33, 60, 48, 105, 39, 43, 41, 38, 45, 42, 33, 105, 49, 52, 54, 45, 35, 44, 48, 57, 40, 53, 57, 96, 41, 40, 46, 34, 63, 44, 57, 36, 34, 35, 65, 90, 80, 81, 70, Ascii.ETB, Ascii.FF, 6, 7, Ascii.DLE, Ascii.SO, Ascii.VT, Ascii.FF, 7, 119, 55};
    }

    public static void A08(C1744Mk c1744Mk) {
        while (!TextUtils.isEmpty(c1744Mk.A0T())) {
        }
    }

    public static void A09(C1744Mk c1744Mk) {
        boolean z = true;
        while (c1744Mk.A07() > 0 && z) {
            z = A0E(c1744Mk) || A0D(c1744Mk);
        }
    }

    public static void A0A(C1744Mk c1744Mk, C2220cN c2220cN, StringBuilder sb) {
        A09(c1744Mk);
        String strA03 = A03(c1744Mk, sb);
        String strA01 = A01(0, 0, 65);
        if (!strA01.equals(strA03) && A01(5, 1, 3).equals(A04(c1744Mk, sb))) {
            A09(c1744Mk);
            String strA05 = A05(c1744Mk, sb);
            if (strA05 == null || strA01.equals(strA05)) {
                return;
            }
            int iA09 = c1744Mk.A09();
            String strA04 = A04(c1744Mk, sb);
            if (!A01(11, 1, 100).equals(strA04)) {
                if (!A01(252, 1, 75).equals(strA04)) {
                    return;
                } else {
                    c1744Mk.A0f(iA09);
                }
            }
            if (A01(123, 5, 66).equals(strA03)) {
                c2220cN.A0C(AbstractC1730Lw.A00(strA05));
                return;
            }
            if (A01(103, 16, 103).equals(strA03)) {
                c2220cN.A0B(AbstractC1730Lw.A00(strA05));
                return;
            }
            boolean z = true;
            if (A01(189, 13, 120).equals(strA03)) {
                if (A01(183, 4, 42).equals(strA05)) {
                    c2220cN.A0E(1);
                    return;
                } else {
                    if (A01(237, 5, 53).equals(strA05)) {
                        c2220cN.A0E(2);
                        return;
                    }
                    return;
                }
            }
            if (A01(202, 20, 69).equals(strA03)) {
                if (!A01(100, 3, 32).equals(strA05) && !strA05.startsWith(A01(128, 6, 91))) {
                    z = false;
                }
                c2220cN.A0H(z);
                return;
            }
            if (A01(222, 15, 76).equals(strA03)) {
                if (A01(242, 9, 99).equals(strA05)) {
                    c2220cN.A0J(true);
                    return;
                }
                return;
            }
            if (A01(136, 11, 89).equals(strA03)) {
                c2220cN.A0F(strA05);
                return;
            }
            if (A01(166, 11, 49).equals(strA03)) {
                if (A01(119, 4, 118).equals(strA05)) {
                    c2220cN.A0G(true);
                }
            } else if (A01(156, 10, 62).equals(strA03)) {
                if (A01(177, 6, 63).equals(strA05)) {
                    c2220cN.A0I(true);
                }
            } else if (A01(147, 9, 23).equals(strA03)) {
                A0C(strA05, c2220cN);
            }
        }
    }

    private void A0B(C2220cN c2220cN, String str) {
        if (A01(0, 0, 65).equals(str)) {
            return;
        }
        int iIndexOf = str.indexOf(91);
        if (iIndexOf != -1) {
            Matcher matcher = A05.matcher(str.substring(iIndexOf));
            if (matcher.matches()) {
                c2220cN.A0N((String) AbstractC1722Ln.A01(matcher.group(1)));
            }
            str = str.substring(0, iIndexOf);
        }
        String[] strArrA1O = N1.A1O(str, A01(47, 2, 23));
        String str2 = strArrA1O[0];
        int iIndexOf2 = str2.indexOf(35);
        if (iIndexOf2 != -1) {
            c2220cN.A0M(str2.substring(0, iIndexOf2));
            c2220cN.A0L(str2.substring(iIndexOf2 + 1));
        } else {
            c2220cN.A0M(str2);
        }
        if (strArrA1O.length > 1) {
            c2220cN.A0O((String[]) N1.A1J(strArrA1O, 1, strArrA1O.length));
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:8:0x0058  */
    public static void A0C(String str, C2220cN c2220cN) {
        byte b;
        Matcher matcher = A04.matcher(XC.A01(str));
        if (!matcher.matches()) {
            MV.A07(A01(32, 15, 117), A01(12, 20, 127) + str + A01(1, 2, 42));
            return;
        }
        String str2 = (String) AbstractC1722Ln.A01(matcher.group(2));
        switch (str2.hashCode()) {
            case 37:
                if (!str2.equals(A01(0, 1, 17))) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 3240:
                if (!str2.equals(A01(134, 2, 119))) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case 3592:
                if (!str2.equals(A01(187, 2, 33))) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                c2220cN.A0D(1);
                break;
            case 1:
                c2220cN.A0D(2);
                break;
            case 2:
                c2220cN.A0D(3);
                break;
            default:
                throw new IllegalStateException();
        }
        c2220cN.A0A(Float.parseFloat((String) AbstractC1722Ln.A01(matcher.group(1))));
    }

    public static boolean A0D(C1744Mk c1744Mk) {
        int iA09 = c1744Mk.A09();
        int iA0A = c1744Mk.A0A();
        byte[] bArrA0l = c1744Mk.A0l();
        if (iA09 + 2 > iA0A) {
            return false;
        }
        int i = iA09 + 1;
        if (bArrA0l[iA09] != 47) {
            return false;
        }
        int i2 = i + 1;
        if (bArrA0l[i] != 42) {
            return false;
        }
        while (i2 + 1 < iA0A) {
            int i3 = i2 + 1;
            if (((char) bArrA0l[i2]) == '*' && ((char) bArrA0l[i3]) == '/') {
                iA0A = i3 + 1;
                i2 = iA0A;
            } else {
                i2 = i3;
            }
        }
        c1744Mk.A0g(iA0A - c1744Mk.A09());
        return true;
    }

    public static boolean A0E(C1744Mk c1744Mk) {
        switch (A00(c1744Mk, c1744Mk.A09())) {
            case '\t':
            case '\n':
            case '\f':
            case '\r':
            case ' ':
                c1744Mk.A0g(1);
                return true;
            default:
                return false;
        }
    }

    public final List<C2220cN> A0F(C1744Mk c1744Mk) {
        String strA01;
        this.A01.setLength(0);
        int iA09 = c1744Mk.A09();
        A08(c1744Mk);
        this.A00.A0j(c1744Mk.A0l(), c1744Mk.A09());
        this.A00.A0f(iA09);
        ArrayList arrayList = new ArrayList();
        while (true) {
            String strA06 = A06(this.A00, this.A01);
            if (strA06 == null) {
                return arrayList;
            }
            if (!A01(251, 1, 13).equals(A04(this.A00, this.A01))) {
                return arrayList;
            }
            C2220cN c2220cN = new C2220cN();
            A0B(c2220cN, strA06);
            String strA04 = null;
            boolean z = false;
            while (true) {
                strA01 = A01(252, 1, 75);
                if (z) {
                    break;
                }
                int iA010 = this.A00.A09();
                strA04 = A04(this.A00, this.A01);
                z = strA04 == null || strA01.equals(strA04);
                if (!z) {
                    this.A00.A0f(iA010);
                    A0A(this.A00, c2220cN, this.A01);
                }
            }
            if (strA01.equals(strA04)) {
                arrayList.add(c2220cN);
            }
        }
    }
}
