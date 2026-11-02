package com.facebook.ads.redexgen.X;

import android.view.Surface;
import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Mp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1749Mp {
    public static byte[] A04;
    public static String[] A05 = {"8Drr5WLvQGx8oFvXaNe23nlg0Kt", "Z9ORLkUQ41ja2LRe53CMFiFK9ShXK0gI", "UrF1BwZm0HEl6dfjvHQX6icCF4Zr9uQT", "bDSGCJXLT05FSy6ySCKVWKMH7MZz", "ND9XA4mApKBLic6nviKaBY3E5dScltWM", "eTPOGPqPo6TJ", "9Pp12", "PksKtj07FDic680KNPQ0CB3EI3hQ6y6y"};
    public final int A00;
    public final int A01;
    public final int A02;
    public final Surface A03;

    static {
        A01();
    }

    public C1749Mp(Surface surface, int i, int i2) {
        this(surface, i, i2, 0);
    }

    public C1749Mp(Surface surface, int i, int i2, int i3) {
        AbstractC1722Ln.A09(i3 == 0 || i3 == 90 || i3 == 180 || i3 == 270, A00(0, 45, 94));
        this.A03 = surface;
        this.A02 = i;
        this.A00 = i2;
        this.A01 = i3;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 93);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{42, 45, 36, 32, 41, 47, Ascii.FS, 47, 36, 42, 41, -1, 32, 34, 45, 32, 32, 46, -37, 40, 48, 46, 47, -37, Ascii.GS, 32, -37, -21, -25, -37, -12, -21, -25, -37, -20, -13, -21, -25, -37, 42, 45, -37, -19, -14, -21};
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        boolean z = obj instanceof C1749Mp;
        String[] strArr = A05;
        if (strArr[6].length() == strArr[3].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A05;
        strArr2[6] = "6PP9d";
        strArr2[3] = "u4tCD9pwtLBKy34p2pkoM93Q11Uz";
        if (!z) {
            return false;
        }
        C1749Mp c1749Mp = (C1749Mp) obj;
        return this.A02 == c1749Mp.A02 && this.A00 == c1749Mp.A00 && this.A01 == c1749Mp.A01 && this.A03.equals(c1749Mp.A03);
    }

    public final int hashCode() {
        return (((((this.A03.hashCode() * 31) + this.A02) * 31) + this.A00) * 31) + this.A01;
    }
}
