package com.facebook.ads.redexgen.X;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bY, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2169bY {
    public static String[] A08 = {"9L1w1wV8uajUNZnJ4CsOiYfBiqoiZfeA", "bzRqQYl6PZHe7cfIHZtstW", "iY6zgtiE4PSYe0KB82pLH9ipKgaa2WMA", "EFWNwk268AsnZ5dtWGIGOBNrPqtnFZY6", "TcLUNR3L8Jh6JezAs", "nVl3z02gaD8dKggnIOCH8XoSTId1zgut", "g04dyTW3dZEIDdz5", "CGmG3KdGn75Yn1mGp9OkuGqxGyDJVKW2"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public final List<C2168bX> A06 = new ArrayList();
    public final List<SpannableString> A07 = new ArrayList();
    public final StringBuilder A05 = new StringBuilder();

    public C2169bY(int i, int i2) {
        A0C(i);
        this.A01 = i2;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00f4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:53:0x00f6  */
    private SpannableString A04() {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.A05);
        int length = spannableStringBuilder.length();
        int i = -1;
        int i2 = -1;
        int i3 = 0;
        int i4 = -1;
        boolean z = false;
        int i5 = -1;
        for (int i6 = 0; i6 < this.A06.size(); i6++) {
            C2168bX c2168bX = this.A06.get(i6);
            boolean z2 = c2168bX.A02;
            int i7 = c2168bX.A01;
            if (i7 != 8) {
                if (A08[4].length() == 17) {
                    A08[5] = "1HQDujgXs2rhggsqxpROWa3BmQDKwZWY";
                    z = i7 == 7;
                    if (A08[3].charAt(11) != 'A') {
                        String[] strArr = A08;
                        strArr[6] = "iZLhIZWcPoahXagK";
                        strArr[1] = "cZIJ5G220c5SYRAi6VHfsR";
                        if (i7 != 7) {
                            i5 = AnonymousClass48.A0Q[i7];
                        }
                    }
                }
                throw new RuntimeException();
            }
            int i8 = c2168bX.A00;
            if (i8 != (i6 + 1 < this.A06.size() ? this.A06.get(i6 + 1).A00 : length)) {
                if (i == -1 || z2) {
                    if (A08[3].charAt(11) == 'A') {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A08;
                    strArr2[6] = "tJjIxZh52Hon8r4F";
                    strArr2[1] = "ND4XgMSJMSSQlPzUtCMwPe";
                    if (i == -1 && z2) {
                        i = i8;
                    }
                } else {
                    A06(spannableStringBuilder, i, i8);
                    i = -1;
                }
                if (i2 != -1 && !z) {
                    A05(spannableStringBuilder, i2, i8);
                    i2 = -1;
                } else if (i2 == -1 && z) {
                    i2 = i8;
                }
                if (i5 != i4) {
                    A07(spannableStringBuilder, i3, i8, i4);
                    i4 = i5;
                    i3 = i8;
                }
            }
        }
        if (A08[0].charAt(6) != 'V') {
            A08[5] = "uyNco8zRFQWxcg6vklYZpTh4k0kuVlEV";
            if (i != -1) {
                if (i != length) {
                    A06(spannableStringBuilder, i, length);
                }
            }
        } else {
            A08[5] = "ALGmKM0I29d69g2LjYJnhb5NsKmkABjL";
            if (i != -1) {
                if (i != length) {
                    A06(spannableStringBuilder, i, length);
                }
            }
        }
        if (i2 != -1 && i2 != length) {
            A05(spannableStringBuilder, i2, length);
        }
        if (i3 != length) {
            A07(spannableStringBuilder, i3, length, i4);
        }
        return new SpannableString(spannableStringBuilder);
    }

    public static void A05(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
        spannableStringBuilder.setSpan(new StyleSpan(2), i, i2, 33);
    }

    public static void A06(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
        spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
    }

    public static void A07(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3) {
        if (i3 == -1) {
            return;
        }
        spannableStringBuilder.setSpan(new ForegroundColorSpan(i3), i, i2, 33);
    }

    public final C1911Th A08(int i) {
        float f;
        int i2 = this.A02 + this.A04;
        int i3 = 32 - i2;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        for (int i4 = 0; i4 < this.A07.size(); i4++) {
            spannableStringBuilder.append(N1.A0e(this.A07.get(i4), i3));
            spannableStringBuilder.append('\n');
        }
        spannableStringBuilder.append(N1.A0e(A04(), i3));
        if (spannableStringBuilder.length() == 0) {
            return null;
        }
        int length = (32 - i2) - spannableStringBuilder.length();
        int i5 = i2 - length;
        if (i == Integer.MIN_VALUE) {
            i = (this.A00 != 2 || (Math.abs(i5) >= 3 && length >= 0)) ? (this.A00 != 2 || i5 <= 0) ? 0 : 2 : 1;
        }
        switch (i) {
            case 1:
                f = 0.5f;
                break;
            case 2:
                float f2 = 0.8f * ((32 - length) / 32.0f);
                String[] strArr = A08;
                if (strArr[2].charAt(11) != strArr[7].charAt(11)) {
                    throw new RuntimeException();
                }
                A08[0] = "5EQwUuVt08LvSMecayfpTwcmlaUcj8gt";
                f = f2 + 0.1f;
                break;
                break;
            default:
                f = (0.8f * (i2 / 32.0f)) + 0.1f;
                break;
        }
        return new C1712Ld().A0G(spannableStringBuilder).A0F(Layout.Alignment.ALIGN_NORMAL).A07(this.A03 > 7 ? (this.A03 - 15) - 2 : this.A00 == 1 ? this.A03 - (this.A01 - 1) : this.A03, 1).A04(f).A0A(i).A0H();
    }

    public final void A09() {
        int length = this.A05.length();
        if (length > 0) {
            this.A05.delete(length - 1, length);
            for (int size = this.A06.size() - 1; size >= 0; size--) {
                C2168bX c2168bX = this.A06.get(size);
                if (c2168bX.A00 != length) {
                    return;
                }
                c2168bX.A00--;
            }
        }
    }

    public final void A0A() {
        this.A07.add(A04());
        this.A05.setLength(0);
        this.A06.clear();
        int iMin = Math.min(this.A01, this.A03);
        while (this.A07.size() >= iMin) {
            List<SpannableString> list = this.A07;
            if (A08[4].length() != 17) {
                throw new RuntimeException();
            }
            String[] strArr = A08;
            strArr[2] = "wHJCFsjRLmJYmOGCiYb2btDMgDXd1Srk";
            strArr[7] = "2mSpReiYVVDYMy0V4w8ODhLzaW3OOfiX";
            list.remove(0);
        }
    }

    public final void A0B(char c) {
        if (this.A05.length() < 32) {
            this.A05.append(c);
        }
    }

    public final void A0C(int i) {
        this.A00 = i;
        this.A06.clear();
        this.A07.clear();
        this.A05.setLength(0);
        this.A03 = 15;
        this.A02 = 0;
        this.A04 = 0;
    }

    public final void A0D(int i) {
        this.A00 = i;
    }

    public final void A0E(int i) {
        this.A01 = i;
    }

    public final void A0F(int i, boolean z) {
        this.A06.add(new C2168bX(i, z, this.A05.length()));
    }

    public final boolean A0G() {
        if (this.A06.isEmpty() && this.A07.isEmpty()) {
            StringBuilder sb = this.A05;
            String[] strArr = A08;
            if (strArr[2].charAt(11) != strArr[7].charAt(11)) {
                throw new RuntimeException();
            }
            A08[5] = "ZUB0lQjssyACEg1ILMogw129NIO2tx51";
            if (sb.length() == 0) {
                return true;
            }
        }
        return false;
    }
}
