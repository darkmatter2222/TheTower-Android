package com.facebook.ads.redexgen.X;

import com.google.common.base.ElementTypesAreNonnullByDefault;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class XC {
    public static int A00(char c) {
        return (char) ((c | ' ') - 97);
    }

    public static String A01(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (A02(str.charAt(i))) {
                char[] charArray = str.toCharArray();
                while (i < length) {
                    char c = charArray[i];
                    if (A02(c)) {
                        charArray[i] = (char) (c ^ ' ');
                    }
                    i++;
                }
                return String.valueOf(charArray);
            }
            i++;
        }
        return str;
    }

    public static boolean A02(char c) {
        return c >= 'A' && c <= 'Z';
    }

    public static boolean A03(CharSequence charSequence, CharSequence charSequence2) {
        int iA00;
        int length = charSequence.length();
        if (charSequence == charSequence2) {
            return true;
        }
        if (length != charSequence2.length()) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            char cCharAt = charSequence.charAt(i);
            char cCharAt2 = charSequence2.charAt(i);
            if (cCharAt != cCharAt2 && ((iA00 = A00(cCharAt)) >= 26 || iA00 != A00(cCharAt2))) {
                return false;
            }
        }
        return true;
    }
}
