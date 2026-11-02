package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.aq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2125aq {
    public static String[] A00 = {"ltmF64ZweBQJPeOdif9BPyh7xrdDqMGm", "1hD4GCEv16m9ULjLseNq8NpSJScOpV4z", "cjybuzvgbX7cmH3axbx3qBHLU46", "3xOl7CJaqVAPHP1avR87ELk8GAlY0bDn", "t7u0RHWzousfLG5LtFWytgwP1DKhggaB", "Lz4xSMhIvLrTjJnzClIMi9mdhGC", "f5Kl57kllqDhIhPF", "i0IJI0KG8A89caPvqz1zLZN3nnLrP5V4"};

    public static C2124ap A00(int i, long[] jArr, int[] iArr, long j) {
        int i2 = 8192 / i;
        int iA05 = 0;
        for (int i3 : iArr) {
            iA05 += N1.A05(i3, i2);
        }
        long[] jArr2 = new long[iA05];
        int[] iArr2 = new int[iA05];
        int iMax = 0;
        long[] jArr3 = new long[iA05];
        int[] iArr3 = new int[iA05];
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            int length = iArr.length;
            String[] strArr = A00;
            if (strArr[0].charAt(21) == strArr[3].charAt(21)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A00;
            strArr2[5] = "wNkrlldVaUTeajb4lzLgF8WCWCG";
            strArr2[2] = "yVUP0nv1OIaEI6s3laAD0V5uevr";
            if (i6 >= length) {
                return new C2124ap(jArr2, iArr2, iMax, jArr3, iArr3, j * ((long) i4));
            }
            int i7 = iArr[i6];
            long j2 = jArr[i6];
            while (i7 > 0) {
                int iMin = Math.min(i2, i7);
                jArr2[i5] = j2;
                iArr2[i5] = i * iMin;
                iMax = Math.max(iMax, iArr2[i5]);
                jArr3[i5] = ((long) i4) * j;
                iArr3[i5] = 1;
                j2 += (long) iArr2[i5];
                i4 += iMin;
                i7 -= iMin;
                i5++;
            }
            i6++;
        }
    }
}
