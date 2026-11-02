package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.2j, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class C2j {
    public static byte[] A01;
    public static String[] A02 = {"fbJZDruusr1r1ap", "K5pFJLc0dCE9hZa85uzgmQiRrPtoJfua", "FJelQoOdCs3YKhyd5FpIgqPUOMoiTrys", "PFy8N3xOTfc9qwZF2GiqcDtMHaON3zMI", "vV0e40TZvFhyRkNzV7GeEhVfGIfjztVM", "huecsYumwoqBHh4eLfJjz", "lFluhjrJnQkdQB9rQytU5L5djmFC242x", "dUhcMBg3SY8juvkeQQi8B85Avgd7ZzpC"};
    public InterfaceC12502k A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 75);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        if (A02[4].charAt(25) != 'I') {
            throw new RuntimeException();
        }
        A02[4] = "aB5IQswNDeQrinuF69zlZiT0LIjC4Anl";
        A01 = new byte[]{8, Ascii.ESC, Ascii.ETB, 41, 34, 33, Ascii.ESC, 32, 38, -2, Ascii.ESC, Ascii.CAN, Ascii.ETB, Ascii.NAK, 43, Ascii.NAK, Ascii.RS, Ascii.ETB, -11, 33, 32, 38, 36, 33, Ascii.RS, Ascii.RS, Ascii.ETB, 36, -32, 37, 38, 19, 36, 38, 5, Ascii.NAK, 19, 32, -78, -59, -63, -45, -52, -53, -59, -54, -48, -88, -59, -62, -63, -65, -43, -65, -56, -63, -97, -53, -54, -48, -50, -53, -56, -56, -63, -50, -118, -49, -48, -53, -52, -81, -65, -67, -54};
    }

    public final void A03() {
        C2Q.A01.A02(A00(0, 38, 103));
        InterfaceC12502k interfaceC12502k = this.A00;
        if (interfaceC12502k != null) {
            interfaceC12502k.onStart();
        }
    }

    public final void A04() {
        C2Q.A01.A02(A00(38, 37, 17));
        InterfaceC12502k interfaceC12502k = this.A00;
        if (interfaceC12502k != null) {
            interfaceC12502k.onStop();
        }
    }

    public final void A05(InterfaceC12502k interfaceC12502k) {
        this.A00 = interfaceC12502k;
    }
}
