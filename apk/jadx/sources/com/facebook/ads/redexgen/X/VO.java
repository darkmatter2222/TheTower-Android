package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class VO implements InterfaceC1678Jt {
    public final int A00;
    public final int A01;
    public final long A02;
    public final long A03;
    public final boolean A04;
    public final int[] A05;
    public final long[] A06;
    public final Uri[] A07;
    public static String[] A08 = {"Oy", "u5", "eyMDe1VPxcseWgRGD7x6dnvE4ZXa9FGP", "m5wEXEzW91ekTJQDqbEoY7M2Viz5uNqS", "4wGXSzkRdQtsgY", "dG1HBzS8O", "NY2HoinqdDUhoFlKPu66HqYUSi2kxly6", "UAsD70KhiIFqGZERIuo6tT1QHkT9LAoT"};
    public static final String A0G = N1.A0h(0);
    public static final String A0B = N1.A0h(1);
    public static final String A0H = N1.A0h(2);
    public static final String A0F = N1.A0h(3);
    public static final String A0C = N1.A0h(4);
    public static final String A0A = N1.A0h(5);
    public static final String A0D = N1.A0h(6);
    public static final String A0E = N1.A0h(7);
    public static final InterfaceC1677Js<VO> A09 = new InterfaceC1677Js() { // from class: com.facebook.ads.redexgen.X.VP
        @Override // com.facebook.ads.redexgen.X.InterfaceC1677Js
        public final InterfaceC1678Jt A7F(Bundle bundle) {
            return VO.A00(bundle);
        }
    };

    public VO(long j) {
        this(j, -1, -1, new int[0], new Uri[0], new long[0], 0L, false);
    }

    public VO(long j, int i, int i2, int[] iArr, Uri[] uriArr, long[] jArr, long j2, boolean z) {
        AbstractC1722Ln.A07(iArr.length == uriArr.length);
        this.A03 = j;
        this.A00 = i;
        this.A01 = i2;
        this.A05 = iArr;
        this.A07 = uriArr;
        this.A06 = jArr;
        this.A02 = j2;
        this.A04 = z;
    }

    public static VO A00(Bundle bundle) {
        long j = bundle.getLong(A0G);
        int i = bundle.getInt(A0B);
        int i2 = bundle.getInt(A0E);
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(A0H);
        int[] intArray = bundle.getIntArray(A0F);
        long[] longArray = bundle.getLongArray(A0C);
        long j2 = bundle.getLong(A0A);
        boolean z = bundle.getBoolean(A0D);
        if (intArray == null) {
            intArray = new int[0];
        }
        Uri[] uriArr = new Uri[0];
        if (parcelableArrayList != null) {
            Object[] array = parcelableArrayList.toArray(uriArr);
            String[] strArr = A08;
            if (strArr[1].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A08;
            strArr2[1] = "hk";
            strArr2[0] = "dz";
            uriArr = (Uri[]) array;
        }
        if (longArray == null) {
            longArray = new long[0];
        }
        return new VO(j, i, i2, intArray, uriArr, longArray, j2, z);
    }

    public static int[] A02(int[] iArr, int i) {
        int length = iArr.length;
        int iMax = Math.max(i, length);
        int[] iArrCopyOf = Arrays.copyOf(iArr, iMax);
        Arrays.fill(iArrCopyOf, length, iMax, 0);
        return iArrCopyOf;
    }

    public static long[] A03(long[] jArr, int i) {
        int length = jArr.length;
        int iMax = Math.max(i, length);
        long[] jArrCopyOf = Arrays.copyOf(jArr, iMax);
        Arrays.fill(jArrCopyOf, length, iMax, -9223372036854775807L);
        return jArrCopyOf;
    }

    public final int A04() {
        return A05(-1);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0045  */
    /* JADX WARN: Code duplicated, block: B:16:0x004d A[LOOP:0: B:3:0x0002->B:16:0x004d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:25:0x004c A[EDGE_INSN: B:25:0x004c->B:15:0x004c BREAK  A[LOOP:0: B:3:0x0002->B:16:0x004d], SYNTHETIC] */
    public final int A05(int i) {
        int i2 = i + 1;
        while (i2 < this.A05.length) {
            boolean z = this.A04;
            if (A08[6].charAt(22) == '1') {
                throw new RuntimeException();
            }
            String[] strArr = A08;
            strArr[2] = "wXzuuLzplSU7fe00gnkOtQG4HVUKIEbm";
            strArr[3] = "HTdk1COeDneuqKlJWd1wMEh0kFRhi2IN";
            if (!z) {
                int i3 = this.A05[i2];
                String[] strArr2 = A08;
                if (strArr2[5].length() == strArr2[4].length()) {
                    if (i3 == 0) {
                        break;
                    }
                    if (this.A05[i2] == 1) {
                        break;
                        break;
                    }
                    i2++;
                } else {
                    A08[6] = "54DsX3tQhkmFtMCpdkyLWRpb2NsjawWZ";
                    if (i3 == 0) {
                        break;
                    }
                    if (this.A05[i2] == 1) {
                        break;
                    }
                    i2++;
                }
            } else {
                break;
            }
        }
        return i2;
    }

    public final VO A06(int i) {
        int[] iArrA02 = A02(this.A05, i);
        long[] jArrA03 = A03(this.A06, i);
        return new VO(this.A03, i, this.A01, iArrA02, (Uri[]) Arrays.copyOf(this.A07, i), jArrA03, this.A02, this.A04);
    }

    public final boolean A07() {
        if (this.A00 == -1) {
            return true;
        }
        for (int i = 0; i < this.A00; i++) {
            if (this.A05[i] == 0 || this.A05[i] == 1) {
                return true;
            }
        }
        return false;
    }

    public final boolean A08() {
        return this.A00 == -1 || A04() < this.A00;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        VO vo = (VO) obj;
        return this.A03 == vo.A03 && this.A00 == vo.A00 && this.A01 == vo.A01 && Arrays.equals(this.A07, vo.A07) && Arrays.equals(this.A05, vo.A05) && Arrays.equals(this.A06, vo.A06) && this.A02 == vo.A02 && this.A04 == vo.A04;
    }

    public final int hashCode() {
        return (((((((((((((this.A00 * 31) + this.A01) * 31) + ((int) (this.A03 ^ (this.A03 >>> 32)))) * 31) + Arrays.hashCode(this.A07)) * 31) + Arrays.hashCode(this.A05)) * 31) + Arrays.hashCode(this.A06)) * 31) + ((int) (this.A02 ^ (this.A02 >>> 32)))) * 31) + (this.A04 ? 1 : 0);
    }
}
