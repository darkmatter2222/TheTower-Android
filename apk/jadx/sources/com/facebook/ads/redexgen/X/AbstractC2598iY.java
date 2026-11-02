package com.facebook.ads.redexgen.X;

import android.util.SparseIntArray;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.iY, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2598iY {
    public static String[] A02 = {"M2pAxjSu7nMTN0L52z1HG", "Oj7dpXKJt8u9HX8PkBOtmY8GWQq8xFei", "fgP7oxhrfnrw7tpdsz9PEkCU3DKohM9c", "DjoZ5nSLMro4cQksWAoUzCyFIvukX2fT", "BtbDnGPUUM0y8q2pMjg8OyegT54lLRbg", "YpmoZ2F8p6dl9Oq9ddodcNmUDjjB58Sm", "7nkUe3zHu7FVR", "IF2bdXfh"};
    public final SparseIntArray A01 = new SparseIntArray();
    public boolean A00 = false;

    public abstract int A00(int i);

    public final int A01(int i, int i2) {
        if (!this.A00) {
            return A03(i, i2);
        }
        int i3 = this.A01.get(i, -1);
        if (i3 != -1) {
            return i3;
        }
        int iA03 = A03(i, i2);
        this.A01.put(i, iA03);
        if (A02[4].charAt(2) != 'b') {
            throw new RuntimeException();
        }
        A02[4] = "Uzb8bGozErrqq3DrZ5kzDdRGTXNZZG1G";
        return iA03;
    }

    public final int A02(int i, int i2) {
        int i3 = 0;
        int i4 = 0;
        int iA00 = A00(i);
        for (int i5 = 0; i5 < i; i5++) {
            int iA01 = A00(i5);
            i3 += iA01;
            if (i3 == i2) {
                i3 = 0;
                i4++;
            } else if (i3 > i2) {
                i3 = iA01;
                if (A02[1].charAt(7) == 'd') {
                    throw new RuntimeException();
                }
                String[] strArr = A02;
                strArr[5] = "qaKbL4HFQxJ8EsYIPwo8djbeZtUzhvLw";
                strArr[3] = "vBYHvtiSzKKTOlLTNAokAITiGNHhYzko";
                i4++;
            } else {
                continue;
            }
        }
        int i6 = i3 + iA00;
        if (A02[1].charAt(7) == 'd') {
            throw new RuntimeException();
        }
        A02[4] = "JObd6IlQZBy3pGT3U4ZmxPZatKQE2Tlu";
        return i6 > i2 ? i4 + 1 : i4;
    }

    public abstract int A03(int i, int i2);

    public final void A04() {
        this.A01.clear();
    }
}
