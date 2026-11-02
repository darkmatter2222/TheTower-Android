package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import com.google.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.c8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2205c8 {
    public static byte[] A0D;
    public static String[] A0E = {"KSt7NOfMbdIyAUysXnIXXFlyTN1YPvlO", "JMwE5qL", "27JttR1a422Nako8YGMY5Ahc", "AlDOUBu3jeBnT50Pq4keLXgXJoF39fy6", "TjvrkKyuYEJ7Y3OZAZEHWsPhg82qs4NN", "wARTkO3aZV9vURkyYIzsPp86MDPaDDjR", "y3qNnTbXyBY4yqPfqr1AOySQgGqBWdXR", "fm1NDxkWExV"};
    public List<C2205c8> A00;
    public final long A01;
    public final long A02;
    public final C2205c8 A03;
    public final C2212cF A04;
    public final String A05;
    public final String A06;
    public final String A07;
    public final String A08;
    public final boolean A09;
    public final HashMap<String, Integer> A0A;
    public final HashMap<String, Integer> A0B;
    public final String[] A0C;

    static {
        A04();
    }

    public C2205c8(String str, String str2, long j, long j2, C2212cF c2212cF, String[] strArr, String str3, String str4, C2205c8 c2205c8) {
        this.A07 = str;
        this.A08 = str2;
        this.A05 = str4;
        this.A04 = c2212cF;
        this.A0C = strArr;
        this.A09 = str2 != null;
        this.A02 = j;
        this.A01 = j2;
        this.A06 = (String) AbstractC1722Ln.A01(str3);
        this.A03 = c2205c8;
        this.A0B = new HashMap<>();
        this.A0A = new HashMap<>();
    }

    public static SpannableStringBuilder A00(String str, Map<String, C1712Ld> map) {
        if (!map.containsKey(str)) {
            C1712Ld c1712Ld = new C1712Ld();
            c1712Ld.A0G(new SpannableStringBuilder());
            map.put(str, c1712Ld);
        }
        return (SpannableStringBuilder) AbstractC1722Ln.A01(map.get(str).A0I());
    }

    public static C2205c8 A01(String str) {
        return new C2205c8(null, AbstractC2207cA.A04(str), -9223372036854775807L, -9223372036854775807L, null, null, A03(0, 0, 63), null, null);
    }

    public static C2205c8 A02(String str, long j, long j2, C2212cF c2212cF, String[] strArr, String str2, String str3, C2205c8 c2205c8) {
        return new C2205c8(str, null, j, j2, c2212cF, strArr, str2, str3, c2205c8);
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A0E;
            if (strArr[0].charAt(12) == strArr[3].charAt(12)) {
                throw new RuntimeException();
            }
            A0E[1] = "UOyBgZY";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 63);
            i4++;
        }
    }

    public static void A04() {
        A0D = new byte[]{2, Ascii.DC2, 1, Ascii.FF, 19, 71, 79, 94, 75, 78, 75, 94, 75, 81};
    }

    private void A05(long j, String str, List<Pair<String, String>> list) {
        if (!A03(0, 0, 63).equals(this.A06)) {
            str = this.A06;
        }
        if (A0B(j) && A03(2, 3, 90).equals(this.A07) && this.A05 != null) {
            list.add(new Pair<>(str, this.A05));
            return;
        }
        for (int i = 0; i < A0C(); i++) {
            A0D(i).A05(j, str, list);
        }
    }

    private void A06(long j, Map<String, C2212cF> map, Map<String, C2206c9> map2, String str, Map<String, C1712Ld> map3) {
        String str2 = str;
        if (A0B(j)) {
            if (!A03(0, 0, 63).equals(this.A06)) {
                str2 = this.A06;
            }
            for (Map.Entry<String, Integer> entry : this.A0A.entrySet()) {
                String key = entry.getKey();
                int iIntValue = this.A0B.containsKey(key) ? this.A0B.get(key).intValue() : 0;
                int iIntValue2 = entry.getValue().intValue();
                if (iIntValue != iIntValue2) {
                    A09(map, (C1712Ld) AbstractC1722Ln.A01(map3.get(key)), iIntValue, iIntValue2, ((C2206c9) AbstractC1722Ln.A01(map2.get(str2))).A08);
                }
            }
            for (int i = 0; i < A0C(); i++) {
                A0D(i).A06(j, map, map2, str2, map3);
            }
        }
    }

    private void A07(long j, boolean z, String str, Map<String, C1712Ld> map) {
        String str2 = str;
        this.A0B.clear();
        this.A0A.clear();
        if (A03(5, 8, 21).equals(this.A07)) {
            return;
        }
        if (!A03(0, 0, 63).equals(this.A06)) {
            str2 = this.A06;
        }
        if (this.A09 && z) {
            A00(str2, map).append((CharSequence) AbstractC1722Ln.A01(this.A08));
            return;
        }
        if (A03(0, 2, 95).equals(this.A07) && z) {
            A00(str2, map).append('\n');
            return;
        }
        if (A0B(j)) {
            for (Map.Entry<String, C1712Ld> entry : map.entrySet()) {
                this.A0B.put(entry.getKey(), Integer.valueOf(((CharSequence) AbstractC1722Ln.A01(entry.getValue().A0I())).length()));
            }
            if (A0E[4].charAt(4) == '1') {
                throw new RuntimeException();
            }
            A0E[5] = "qSC9DshU3TyXUmFm7kodYAtB4RREv35I";
            boolean zEquals = A03(13, 1, 30).equals(this.A07);
            for (int i = 0; i < A0C(); i++) {
                A0D(i).A07(j, z || zEquals, str2, map);
            }
            if (zEquals) {
                AbstractC2207cA.A07(A00(str2, map));
            }
            for (Map.Entry<String, C1712Ld> entry2 : map.entrySet()) {
                this.A0A.put(entry2.getKey(), Integer.valueOf(((CharSequence) AbstractC1722Ln.A01(entry2.getValue().A0I())).length()));
            }
        }
    }

    public static void A08(SpannableStringBuilder spannableStringBuilder) {
        for (C2198c1 c2198c1 : (C2198c1[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), C2198c1.class)) {
            spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(c2198c1), spannableStringBuilder.getSpanEnd(c2198c1), (CharSequence) A03(0, 0, 63));
        }
        for (int i = 0; i < spannableStringBuilder.length(); i++) {
            if (spannableStringBuilder.charAt(i) == ' ') {
                int i2 = i + 1;
                while (i2 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i2) == ' ') {
                    i2++;
                }
                int i3 = i2 - (i + 1);
                if (i3 > 0) {
                    spannableStringBuilder.delete(i, i + i3);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
            spannableStringBuilder.delete(0, 1);
        }
        int i4 = 0;
        while (true) {
            int length = spannableStringBuilder.length();
            String[] strArr = A0E;
            if (strArr[0].charAt(12) == strArr[3].charAt(12)) {
                break;
            }
            String[] strArr2 = A0E;
            strArr2[0] = "6SZc2y0oNAJcCe30DBBdmMKheHAeYTmm";
            strArr2[3] = "H4yKQZjUxsnBNeN6q82RYzViWhen0fm9";
            if (i4 >= length - 1) {
                if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
                    spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
                }
                for (int i5 = 0; i5 < spannableStringBuilder.length() - 1; i5++) {
                    if (spannableStringBuilder.charAt(i5) == ' ' && spannableStringBuilder.charAt(i5 + 1) == '\n') {
                        spannableStringBuilder.delete(i5, i5 + 1);
                    }
                }
                int length2 = spannableStringBuilder.length();
                if (A0E[2].length() != 24) {
                    break;
                }
                A0E[5] = "mX9dnwa7n6m9Q06j8dinNRsLxizQ6DFw";
                if (length2 <= 0 || spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) != '\n') {
                    return;
                }
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
                return;
            }
            if (spannableStringBuilder.charAt(i4) == '\n') {
                int i6 = i4 + 1;
                if (A0E[4].charAt(4) == '1') {
                    break;
                }
                A0E[5] = "Jg4Dhg8uc5bolCxlo8tjz92SrT1s3nhA";
                if (spannableStringBuilder.charAt(i6) == ' ') {
                    spannableStringBuilder.delete(i4 + 1, i4 + 2);
                }
            }
            i4++;
        }
        throw new RuntimeException();
    }

    private void A09(Map<String, C2212cF> map, C1712Ld c1712Ld, int i, int i2, int i3) {
        C2212cF c2212cFA02 = AbstractC2207cA.A02(this.A04, this.A0C, map);
        SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) c1712Ld.A0I();
        if (spannableStringBuilder == null) {
            spannableStringBuilder = new SpannableStringBuilder();
            c1712Ld.A0G(spannableStringBuilder);
        }
        if (c2212cFA02 != null) {
            AbstractC2207cA.A06(spannableStringBuilder, i, i2, c2212cFA02, this.A03, map, i3);
            if (A03(13, 1, 30).equals(this.A07)) {
                if (c2212cFA02.A04() != Float.MAX_VALUE) {
                    c1712Ld.A05((c2212cFA02.A04() * (-90.0f)) / 100.0f);
                }
                if (c2212cFA02.A0C() != null) {
                    c1712Ld.A0F(c2212cFA02.A0C());
                }
                if (c2212cFA02.A0B() != null) {
                    c1712Ld.A0E(c2212cFA02.A0B());
                }
            }
        }
    }

    private void A0A(TreeSet<Long> treeSet, boolean z) {
        boolean zEquals = A03(13, 1, 30).equals(this.A07);
        boolean zEquals2 = A03(2, 3, 90).equals(this.A07);
        if (z || zEquals || (zEquals2 && this.A05 != null)) {
            if (this.A02 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(this.A02));
            }
            if (this.A01 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(this.A01));
            }
        }
        if (this.A00 == null) {
            return;
        }
        for (int i = 0; i < this.A00.size(); i++) {
            this.A00.get(i).A0A(treeSet, z || zEquals);
        }
    }

    private final boolean A0B(long j) {
        return (this.A02 == -9223372036854775807L && this.A01 == -9223372036854775807L) || (this.A02 <= j && this.A01 == -9223372036854775807L) || ((this.A02 == -9223372036854775807L && j < this.A01) || (this.A02 <= j && j < this.A01));
    }

    public final int A0C() {
        if (this.A00 == null) {
            return 0;
        }
        return this.A00.size();
    }

    public final C2205c8 A0D(int i) {
        if (this.A00 != null) {
            return this.A00.get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    public final List<C1911Th> A0E(long j, Map<String, C2212cF> map, Map<String, C2206c9> map2, Map<String, String> map3) {
        List<Pair<String, String>> arrayList = new ArrayList<>();
        A05(j, this.A06, arrayList);
        TreeMap treeMap = new TreeMap();
        A07(j, false, this.A06, treeMap);
        A06(j, map, map2, this.A06, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair<String, String> pair : arrayList) {
            String str = map3.get(pair.second);
            if (str != null) {
                byte[] bArrDecode = Base64.decode(str, 0);
                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
                C2206c9 c2206c9 = (C2206c9) AbstractC1722Ln.A01(map2.get(pair.first));
                arrayList2.add(new C1712Ld().A0D(bitmapDecodeByteArray).A04(c2206c9.A02).A0A(0).A07(c2206c9.A01, 0).A09(c2206c9.A05).A06(c2206c9.A04).A03(c2206c9.A00).A0B(c2206c9.A08).A0H());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            C2206c9 c2206c10 = (C2206c9) AbstractC1722Ln.A01(map2.get(entry.getKey()));
            C1712Ld c1712Ld = (C1712Ld) entry.getValue();
            A08((SpannableStringBuilder) AbstractC1722Ln.A01(c1712Ld.A0I()));
            c1712Ld.A07(c2206c10.A01, c2206c10.A06);
            c1712Ld.A09(c2206c10.A05);
            c1712Ld.A04(c2206c10.A02);
            c1712Ld.A06(c2206c10.A04);
            c1712Ld.A08(c2206c10.A03, c2206c10.A07);
            c1712Ld.A0B(c2206c10.A08);
            arrayList2.add(c1712Ld.A0H());
        }
        return arrayList2;
    }

    public final void A0F(C2205c8 c2205c8) {
        if (this.A00 == null) {
            this.A00 = new ArrayList();
        }
        this.A00.add(c2205c8);
    }

    public final long[] A0G() {
        TreeSet<Long> treeSet = new TreeSet<>();
        A0A(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        int i = 0;
        Iterator<Long> it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i] = it.next().longValue();
            i++;
        }
        return jArr;
    }

    public final String[] A0H() {
        return this.A0C;
    }
}
