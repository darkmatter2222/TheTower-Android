package com.facebook.ads.redexgen.X;

import java.io.IOException;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ab, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2110ab {
    public static String[] A02 = {"RilK1F7N344ypDKNPd", "AF2McISSatZntXc1OXfwhP6HhvcbVIA8", "68T7ON3jiWnjytd50OtPB1oihFsZq3Td", "9ltXOhe4rEl9D6Xz9Jj93gWCIKjfaKJ6", "RmFYNsK5OSBe6ctF2P", "7AaZtb9o8V0qzEqRiUo4F6zL3Y8e85QG", "84oEuapUC1wliP0bhFKbzwqSb8st3Ddw", "Z6ud32nN6RNV1ZOgUQtAKTx38wQVrCFc"};
    public int A00;
    public final C1744Mk A01 = new C1744Mk(8);

    private long A00(Q9 q9) throws IOException {
        q9.AI6(this.A01.A0l(), 0, 1);
        int i = this.A01.A0l()[0] & 255;
        if (i == 0) {
            return Long.MIN_VALUE;
        }
        int i2 = 128;
        int i3 = 0;
        while ((i & i2) == 0) {
            i2 >>= 1;
            i3++;
        }
        int i4 = i & (~i2);
        q9.AI6(this.A01.A0l(), 1, i3);
        for (int i5 = 0; i5 < i3; i5++) {
            i4 = (i4 << 8) + (this.A01.A0l()[i5 + 1] & 255);
        }
        this.A00 += i3 + 1;
        return i4;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00d0  */
    public final boolean A01(Q9 q9) throws IOException {
        long jA90 = q9.A90();
        long j = 1024;
        if (jA90 != -1) {
            String[] strArr = A02;
            if (strArr[4].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[3] = "xnI6hG3YBopNkRZuC7s1TkxlBAtqgudv";
            strArr2[7] = "ZPHLQDCqV1TNGQ3V5dTKiVh0sKgYFh6X";
            if (jA90 <= 1024) {
                j = jA90;
            }
        }
        int i = (int) j;
        boolean z = false;
        q9.AI6(this.A01.A0l(), 0, 4);
        long jA0Q = this.A01.A0Q();
        this.A00 = 4;
        while (jA0Q != 440786851) {
            int i2 = this.A00 + 1;
            this.A00 = i2;
            if (i2 == i) {
                return false;
            }
            q9.AI6(this.A01.A0l(), 0, 1);
            jA0Q = ((jA0Q << 8) & (-256)) | ((long) (this.A01.A0l()[0] & 255));
        }
        long jA00 = A00(q9);
        long j2 = this.A00;
        if (jA00 == Long.MIN_VALUE) {
            return false;
        }
        if (jA90 != -1 && j2 + jA00 >= jA90) {
            return false;
        }
        while (this.A00 < j2 + jA00) {
            if (A00(q9) == Long.MIN_VALUE) {
                return z;
            }
            long jA01 = A00(q9);
            if (jA01 < 0 || jA01 > 2147483647L) {
                return false;
            }
            String[] strArr3 = A02;
            if (strArr3[4].length() == strArr3[0].length()) {
                String[] strArr4 = A02;
                strArr4[4] = "buBxE24T7F7XbhqcZM";
                strArr4[0] = "5BVOi08EEwaH5CNGWm";
                if (jA01 != 0) {
                    int i3 = (int) jA01;
                    q9.A4X(i3);
                    this.A00 += i3;
                }
            } else if (jA01 != 0) {
                int i4 = (int) jA01;
                q9.A4X(i4);
                this.A00 += i4;
            }
            z = false;
        }
        return ((long) this.A00) == j2 + jA00;
    }
}
