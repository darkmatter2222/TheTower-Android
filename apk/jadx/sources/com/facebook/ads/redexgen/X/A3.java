package com.facebook.ads.redexgen.X;

import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class A3 extends XD<String> {
    public static String[] A05 = {"2xW3kd", "ItxLKCV0qT0JgVEhPjz9I0UOKkeNO6MC", "reZhQuzuKxFTxjjIoF3F5uff5mDBgPTu", "iHaWKUzPsyFHihAiZvevOhQteLn4AZBQ", "kBMKziHFvZIHqNb3mqBnk8oLLuCTGe87", "qxtoa2UG", "B8454eguXHwuAIxBTnZZVRLW8YwR1MnO", "PjaXngqAvgHh46C2Zn5dhpjL0FZhguKL"};
    public int A00;
    public int A01 = 0;
    public final A7 A02;
    public final CharSequence A03;
    public final boolean A04;

    public A3(C1979We c1979We, CharSequence charSequence) {
        this.A02 = c1979We.A01;
        this.A04 = c1979We.A03;
        this.A00 = c1979We.A00;
        this.A03 = charSequence;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.XD
    @CheckForNull
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final String A03() {
        int i = this.A01;
        while (this.A01 != -1) {
            int iA05 = A05(this.A01);
            if (A05[7].charAt(11) == 'n') {
                throw new RuntimeException();
            }
            String[] strArr = A05;
            strArr[0] = "xQIWDz";
            strArr[5] = "P0OjvAdK";
            if (iA05 == -1) {
                iA05 = this.A03.length();
                this.A01 = -1;
            } else {
                this.A01 = A04(iA05);
            }
            if (this.A01 == i) {
                this.A01++;
                if (this.A01 > this.A03.length()) {
                    this.A01 = -1;
                }
            } else {
                while (i < iA05) {
                    boolean zA09 = this.A02.A09(this.A03.charAt(i));
                    if (A05[6].charAt(18) == 'Z') {
                        A05[6] = "wRjUoCepA1IDSUo1hQZMmXs1s8PJmBMO";
                        if (!zA09) {
                            break;
                        }
                        i++;
                    } else {
                        if (!zA09) {
                            break;
                        }
                        i++;
                    }
                }
                while (iA05 > i) {
                    A7 a7 = this.A02;
                    if (A05[7].charAt(11) == 'n') {
                        if (!a7.A09(this.A03.charAt(iA05 - 1))) {
                            break;
                        }
                        iA05--;
                    } else {
                        String[] strArr2 = A05;
                        strArr2[0] = "ZEPEAe";
                        strArr2[5] = "XllPSEBY";
                        if (!a7.A09(this.A03.charAt(iA05 - 1))) {
                            break;
                        }
                        iA05--;
                    }
                }
                if (!this.A04 || i != iA05) {
                    if (this.A00 == 1) {
                        iA05 = this.A03.length();
                        this.A01 = -1;
                        while (iA05 > i && this.A02.A09(this.A03.charAt(iA05 - 1))) {
                            iA05--;
                        }
                    } else {
                        this.A00--;
                    }
                    return this.A03.subSequence(i, iA05).toString();
                }
                i = this.A01;
            }
        }
        return A02();
    }

    public abstract int A04(int i);

    public abstract int A05(int i);
}
