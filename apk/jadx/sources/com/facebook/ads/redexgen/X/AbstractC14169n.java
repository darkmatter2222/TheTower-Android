package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9n, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC14169n<E> extends AbstractC1971Vu<E> {
    public static byte[] A03;
    public static String[] A04 = {"5WA4o", "kLEm7uQrw7wXVeOTBlB901JKynqSVQKC", "92QNMMwB5tdcBroQcmhj13poNxwhGWqK", "4qtFDuytyeSziXURfqWjdFmUvI8NTbm7", "H6nlSewXnv5VCNeVwKxgWQjoP0FQ2GNY", "80AOtROsDD", "V", "eyu6VUc1NfxvoYaLMC3xI4ViJIkpz0xI"};
    public int A00;
    public boolean A01;
    public Object[] A02;

    static {
        A01();
    }

    public AbstractC14169n(int i) {
        W7.A00(i, A00(0, 15, 100));
        this.A02 = new Object[i];
        this.A00 = 0;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 117);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{66, 71, 66, 77, 66, 58, 69, Ascii.FS, 58, 73, 58, 60, 66, 77, 82};
    }

    private void A02(int i) {
        Object[] objArr = this.A02;
        int iA03 = AbstractC1971Vu.A03(objArr.length, this.A00 + i);
        if (iA03 <= objArr.length) {
            boolean z = this.A01;
            if (A04[3].charAt(24) == 'B') {
                throw new RuntimeException();
            }
            A04[5] = "Z8cvLeIpo1";
            if (!z) {
                return;
            }
        }
        this.A02 = Arrays.copyOf(this.A02, iA03);
        this.A01 = false;
    }

    public AbstractC14169n<E> A03(E e) {
        AbstractC1995Wu.A04(e);
        A02(1);
        Object[] objArr = this.A02;
        int i = this.A00;
        this.A00 = i + 1;
        objArr[i] = e;
        return this;
    }
}
