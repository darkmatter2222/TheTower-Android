package com.facebook.ads.redexgen.X;

import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.google.common.base.Ascii;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Map;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.cA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2207cA {
    public static byte[] A00;
    public static String[] A01 = {"Okqv6edinGosqwiTCfVs5i9M4fHgh6xq", "2coCig2EMHuJfyloBMevEgmKzZo11IjV", "rWe0XORH1IJaV", "CQdKn5atywFLktVwSw", "cnxOUeDTZRofLDgXiL8T5QUahwVDnW9r", "Wc3PkUG7q", "wjaXM5MFs2EkQt", "75mD8qoXLu9ES4osh"};

    static {
        A05();
    }

    public static C2205c8 A00(C2205c8 c2205c8, Map<String, C2212cF> map) {
        while (c2205c8 != null) {
            C2212cF c2212cFA02 = A02(c2205c8.A04, c2205c8.A0H(), map);
            if (c2212cFA02 != null && c2212cFA02.A09() == 1) {
                return c2205c8;
            }
            c2205c8 = c2205c8.A03;
        }
        return null;
    }

    public static C2205c8 A01(C2205c8 c2205c8, Map<String, C2212cF> map) {
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(c2205c8);
        while (!arrayDeque.isEmpty()) {
            C2205c8 c2205c9 = (C2205c8) arrayDeque.pop();
            C2212cF c2212cFA02 = A02(c2205c9.A04, c2205c9.A0H(), map);
            if (c2212cFA02 != null && c2212cFA02.A09() == 3) {
                return c2205c9;
            }
            for (int iA0C = c2205c9.A0C() - 1; iA0C >= 0; iA0C--) {
                arrayDeque.push(c2205c9.A0D(iA0C));
                if (A01[1].charAt(25) != 'Z') {
                    throw new RuntimeException();
                }
                A01[1] = "oUkj0cLWt95NaAiE8zQz0XIeFZLZPawv";
            }
        }
        return null;
    }

    public static C2212cF A02(C2212cF c2212cF, String[] strArr, Map<String, C2212cF> map) {
        int i = 0;
        if (c2212cF != null) {
            if (strArr != null) {
                int length = strArr.length;
                String[] strArr2 = A01;
                if (strArr2[4].charAt(5) != strArr2[0].charAt(5)) {
                    throw new RuntimeException();
                }
                A01[5] = "4YMNwpxyde5XBlHHujAjw4k74P";
                if (length == 1) {
                    return c2212cF.A0O(map.get(strArr[0]));
                }
            }
            if (strArr != null && strArr.length > 1) {
                int length2 = strArr.length;
                while (i < length2) {
                    C2212cF c2212cF2 = map.get(strArr[i]);
                    if (A01[5].length() != 13) {
                        String[] strArr3 = A01;
                        strArr3[4] = "VhALseOgtR9NpKL9OILQfSa1j4ck4peO";
                        strArr3[0] = "9qPeIeKoCdpJMZvtIza7OrA3T7xUyVxS";
                        c2212cF.A0O(c2212cF2);
                        i++;
                    } else {
                        A01[5] = "VIw";
                        c2212cF.A0O(c2212cF2);
                        i += 0;
                    }
                }
                return c2212cF;
            }
        } else {
            if (strArr == null) {
                return null;
            }
            if (strArr.length == 1) {
                return map.get(strArr[0]);
            }
            if (strArr.length > 1) {
                C2212cF c2212cF3 = new C2212cF();
                int length3 = strArr.length;
                while (i < length3) {
                    c2212cF3.A0O(map.get(strArr[i]));
                    i++;
                }
                return c2212cF3;
            }
        }
        return c2212cF;
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 32);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A04(String str) {
        String strA03 = A03(1, 2, 85);
        String strA04 = A03(0, 1, 98);
        String strReplaceAll = str.replaceAll(strA03, strA04).replaceAll(A03(4, 5, 79), strA04);
        String strA05 = A03(3, 1, 81);
        return strReplaceAll.replaceAll(strA04, strA05).replaceAll(A03(77, 11, 83), strA05);
    }

    public static void A05() {
        A00 = new byte[]{72, 120, 127, 81, 79, 69, 101, 79, 69, 58, 2, 0, Ascii.EM, Ascii.EM, 0, 7, Ascii.SO, 73, Ascii.ESC, Ascii.FS, Ascii.VT, Ascii.DLE, Base64.padSymbol, Ascii.FF, 17, Ascii.GS, 73, 7, 6, Ascii.CR, Ascii.FF, 73, Ascii.RS, 0, Ascii.GS, 1, 6, Ascii.FS, Ascii.GS, 73, Ascii.FF, 17, 8, 10, Ascii.GS, 5, Ascii.DLE, 73, 6, 7, Ascii.FF, 73, Ascii.GS, Ascii.FF, 17, Ascii.GS, 73, 10, 1, 0, 5, Ascii.CR, 71, 98, 66, 91, 90, 100, 83, 88, 82, 83, 68, 99, 66, 95, 90, 40, 83, 122, 47, Ascii.VT, 67, 49, 127, 126, 46, 88};
    }

    public static void A06(Spannable spannable, int i, int i2, C2212cF c2212cF, C2205c8 c2205c8, Map<String, C2212cF> map, int i3) {
        C2212cF c2212cFA02;
        int i4;
        int i5;
        if (c2212cF.A0A() != -1) {
            spannable.setSpan(new StyleSpan(c2212cF.A0A()), i, i2, 33);
        }
        if (c2212cF.A0b()) {
            spannable.setSpan(new StrikethroughSpan(), i, i2, 33);
        }
        if (c2212cF.A0c()) {
            spannable.setSpan(new UnderlineSpan(), i, i2, 33);
        }
        if (c2212cF.A0a()) {
            AbstractC1717Li.A00(spannable, new ForegroundColorSpan(c2212cF.A06()), i, i2, 33);
        }
        if (c2212cF.A0Z()) {
            AbstractC1717Li.A00(spannable, new BackgroundColorSpan(c2212cF.A05()), i, i2, 33);
        }
        if (c2212cF.A0W() != null) {
            AbstractC1717Li.A00(spannable, new TypefaceSpan(c2212cF.A0W()), i, i2, 33);
        }
        if (c2212cF.A0D() != null) {
            C2201c4 c2201c4 = (C2201c4) AbstractC1722Ln.A01(c2212cF.A0D());
            int i6 = c2201c4.A01;
            if (A01[5].length() == 13) {
                throw new RuntimeException();
            }
            A01[5] = "9xnD932t64ew";
            if (i6 == -1) {
                i4 = (i3 == 2 || i3 == 1) ? 3 : 1;
                i5 = 1;
            } else {
                i4 = c2201c4.A01;
                i5 = c2201c4.A00;
            }
            AbstractC1717Li.A00(spannable, new C1906Tc(i4, i5, c2201c4.A02 == -2 ? 1 : c2201c4.A02), i, i2, 33);
        }
        switch (c2212cF.A09()) {
            case 2:
                C2205c8 c2205c8A00 = A00(c2205c8, map);
                if (c2205c8A00 != null) {
                    C2205c8 c2205c8A01 = A01(c2205c8A00, map);
                    String[] strArr = A01;
                    if (strArr[3].length() == strArr[6].length()) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A01;
                    strArr2[7] = "79f8SlLs6s5rQCzQf";
                    strArr2[2] = "FvizhTY8WZABD";
                    if (c2205c8A01 != null) {
                        if (c2205c8A01.A0C() == 1 && c2205c8A01.A0D(0).A08 != null) {
                            String str = (String) N1.A0f(c2205c8A01.A0D(0).A08);
                            C2212cF c2212cFA03 = A02(c2205c8A01.A04, c2205c8A01.A0H(), map);
                            int iA08 = c2212cFA03 != null ? c2212cFA03.A08() : -1;
                            if (iA08 == -1 && (c2212cFA02 = A02(c2205c8A00.A04, c2205c8A00.A0H(), map)) != null) {
                                iA08 = c2212cFA02.A08();
                            }
                            spannable.setSpan(new C1907Td(str, iA08), i, i2, 33);
                        } else {
                            MV.A06(A03(63, 14, 22), A03(9, 54, 73));
                        }
                    }
                }
                break;
            case 3:
            case 4:
                spannable.setSpan(new C2198c1(), i, i2, 33);
                break;
        }
        if (c2212cF.A0Y()) {
            AbstractC1717Li.A00(spannable, new C1908Te(), i, i2, 33);
        }
        switch (c2212cF.A07()) {
            case 1:
                AbstractC1717Li.A00(spannable, new AbsoluteSizeSpan((int) c2212cF.A03(), true), i, i2, 33);
                return;
            case 2:
                AbstractC1717Li.A00(spannable, new RelativeSizeSpan(c2212cF.A03()), i, i2, 33);
                return;
            case 3:
                AbstractC1717Li.A00(spannable, new RelativeSizeSpan(c2212cF.A03() / 100.0f), i, i2, 33);
                return;
            default:
                return;
        }
    }

    public static void A07(SpannableStringBuilder spannableStringBuilder) {
        int length = spannableStringBuilder.length() - 1;
        while (length >= 0 && spannableStringBuilder.charAt(length) == ' ') {
            length--;
        }
        if (length < 0 || spannableStringBuilder.charAt(length) == '\n') {
            return;
        }
        spannableStringBuilder.append('\n');
    }
}
