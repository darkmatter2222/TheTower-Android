package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.TreeSet;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.eS, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2348eS {
    public static byte[] A05;
    public static String[] A06 = {"XJsIaGexGfIuS7KEZ9CJlXNx8P4Ex0vt", "60KxRcdLBeG78T2FpJswCsfbof8MgXhk", "CEtqY3eDykzysQrnjk67hSoI7J0lE8tM", "C8j3Xa", "2DALgc8JJTxTXlKdrEx8TMLlTIu8rM", "aUzT0izMM3P341UuinRxCvRfM25HKV7D", "eFiEiYnQcJqWOrmAtm9B3LsRvACfo7Re", "sVCHW3txnWQofnJyftwy8WfNGa"};
    public C1739Mf A00;
    public final int A01;
    public final String A02;
    public final ArrayList<C2347eR> A03;
    public final TreeSet<MK> A04;

    static {
        A01();
    }

    public C2348eS(int i, String str) {
        this(i, str, C1739Mf.A03);
    }

    public C2348eS(int i, String str, C1739Mf c1739Mf) {
        this.A01 = i;
        this.A02 = str;
        this.A00 = c1739Mf;
        this.A04 = new TreeSet<>();
        this.A03 = new ArrayList<>();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A06[1].charAt(20) == 'A') {
                throw new RuntimeException();
            }
            String[] strArr = A06;
            strArr[0] = "oikn1IeDaTldZ49JGX0shdTwRfWMg6J3";
            strArr[2] = "IDANH1eKx0Aj5KUbxLU1e6GAxb5fBg1H";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 11);
            i4++;
        }
    }

    public static void A01() {
        A05 = new byte[]{88, Ascii.FF, Ascii.ETB, 88, 108, 78, 76, 71, 74, 75, 108, SignedBytes.MAX_POWER_OF_TWO, 65, 91, 74, 65, 91, 109, 74, 66, 71, 78, 79, Ascii.VT, 95, 68, Ascii.VT, 89, 78, 69, 74, 70, 78, Ascii.VT};
    }

    public final long A02(long j, long j2) {
        AbstractC1722Ln.A07(j >= 0);
        String[] strArr = A06;
        if (strArr[5].charAt(20) == strArr[6].charAt(20)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A06;
        strArr2[7] = "bN9UoPq5LBr1HLD2ZNhWaqR2kN";
        strArr2[3] = "XDzBoQ";
        AbstractC1722Ln.A07(j2 >= 0);
        MK mkA04 = A04(j, j2);
        if (mkA04.A0B()) {
            return -Math.min(mkA04.A0C() ? Long.MAX_VALUE : mkA04.A01, j2);
        }
        long j3 = j + j2;
        if (j3 < 0) {
            j3 = Long.MAX_VALUE;
        }
        long jMax = mkA04.A02 + mkA04.A01;
        if (jMax < j3) {
            for (MK mk : this.A04.tailSet(mkA04, false)) {
                if (mk.A02 > jMax) {
                    break;
                }
                jMax = Math.max(jMax, mk.A02 + mk.A01);
                if (jMax >= j3) {
                    break;
                }
            }
        }
        return Math.min(jMax - j, j2);
    }

    public final C1739Mf A03() {
        return this.A00;
    }

    public final MK A04(long j, long j2) {
        MK mkA02 = MK.A02(this.A02, j);
        MK mkFloor = this.A04.floor(mkA02);
        if (mkFloor != null && mkFloor.A02 + mkFloor.A01 > j) {
            return mkFloor;
        }
        MK mkCeiling = this.A04.ceiling(mkA02);
        if (mkCeiling != null) {
            long jMin = mkCeiling.A02 - j;
            String[] strArr = A06;
            if (strArr[0].charAt(6) != strArr[2].charAt(6)) {
                throw new RuntimeException();
            }
            A06[4] = "aVJfmdWTliU3V44lGj4S5k38mM8Ueq";
            if (j2 != -1) {
                jMin = Math.min(jMin, j2);
            }
            j2 = jMin;
        }
        return MK.A03(this.A02, j, j2);
    }

    public final MK A05(MK mk, long j, boolean z) {
        AbstractC1722Ln.A08(this.A04.remove(mk));
        File file = (File) AbstractC1722Ln.A01(mk.A03);
        if (z) {
            File fileA04 = MK.A04((File) AbstractC1722Ln.A01(file.getParentFile()), this.A01, mk.A02, j);
            if (file.renameTo(fileA04)) {
                file = fileA04;
            } else {
                MV.A07(A00(4, 13, 36), A00(17, 17, 32) + file + A00(0, 4, 115) + fileA04);
            }
        }
        MK mkA0D = mk.A0D(file, j);
        this.A04.add(mkA0D);
        return mkA0D;
    }

    public final TreeSet<MK> A06() {
        return this.A04;
    }

    public final void A07(long j) {
        for (int i = 0; i < this.A03.size(); i++) {
            if (this.A03.get(i).A01 == j) {
                this.A03.remove(i);
                return;
            }
        }
        throw new IllegalStateException();
    }

    public final void A08(MK mk) {
        this.A04.add(mk);
    }

    public final boolean A09() {
        return this.A04.isEmpty();
    }

    public final boolean A0A() {
        return this.A03.isEmpty();
    }

    public final boolean A0B(long j, long j2) {
        for (int i = 0; i < this.A03.size(); i++) {
            if (this.A03.get(i).A00(j, j2)) {
                String[] strArr = A06;
                if (strArr[7].length() == strArr[3].length()) {
                    throw new RuntimeException();
                }
                A06[4] = "XKzBDetdOJOyRaULlXIUbxE0BHClvu";
                return true;
            }
        }
        return false;
    }

    public final boolean A0C(long j, long j2) {
        for (int i = 0; i < this.A03.size(); i++) {
            if (this.A03.get(i).A01(j, j2)) {
                return false;
            }
        }
        this.A03.add(new C2347eR(j, j2));
        return true;
    }

    public final boolean A0D(C2341eL c2341eL) {
        if (!this.A04.remove(c2341eL)) {
            return false;
        }
        if (c2341eL.A03 != null) {
            c2341eL.A03.delete();
        }
        if (A06[4].length() != 30) {
            throw new RuntimeException();
        }
        String[] strArr = A06;
        strArr[5] = "WdNjvezHgXv69NEjpHb7AJfIHKMKcEq5";
        strArr[6] = "JZNXCd3YgV4FAej3gizlH3Yt3sinraVp";
        return true;
    }

    public final boolean A0E(C2353eX c2353eX) {
        C1739Mf c1739Mf = this.A00;
        this.A00 = this.A00.A05(c2353eX);
        return !this.A00.equals(c1739Mf);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2348eS c2348eS = (C2348eS) obj;
        if (this.A01 == c2348eS.A01) {
            String str = this.A02;
            String str2 = c2348eS.A02;
            String[] strArr = A06;
            if (strArr[0].charAt(6) != strArr[2].charAt(6)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A06;
            strArr2[7] = "JchhdTh7s6hipszCaexu8urUMx";
            strArr2[3] = "iBdtFW";
            if (str.equals(str2) && this.A04.equals(c2348eS.A04) && this.A00.equals(c2348eS.A00)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((this.A01 * 31) + this.A02.hashCode()) * 31) + this.A00.hashCode();
    }
}
