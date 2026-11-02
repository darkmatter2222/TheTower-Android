package com.facebook.ads.redexgen.X;

import android.media.MediaCodec;
import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Sx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1901Sx extends Exception {
    public static byte[] A05;
    public final C1894Sq A00;
    public final C1901Sx A01;
    public final String A02;
    public final String A03;
    public final boolean A04;

    static {
        A05();
    }

    public C1901Sx(VC vc, Throwable th, boolean z, int i) {
        this(A03(23, 22, 55) + i + A03(45, 3, 21) + vc, th, vc.A0W, z, null, A02(i), null);
    }

    public C1901Sx(VC vc, Throwable th, boolean z, C1894Sq c1894Sq) {
        this(A03(2, 21, 74) + c1894Sq.A03 + A03(0, 2, 45) + vc, th, vc.A0W, z, c1894Sq, N1.A02 >= 21 ? A04(th) : null, null);
    }

    public C1901Sx(String str, Throwable th, String str2, boolean z, C1894Sq c1894Sq, String str3, C1901Sx c1901Sx) {
        super(str, th);
        this.A03 = str2;
        this.A04 = z;
        this.A00 = c1894Sq;
        this.A02 = str3;
        this.A01 = c1901Sx;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C1901Sx A00(C1901Sx c1901Sx) {
        return new C1901Sx(getMessage(), getCause(), this.A03, this.A04, this.A00, this.A02, c1901Sx);
    }

    public static String A02(int i) {
        return A03(48, 73, 25) + (i < 0 ? A03(121, 4, 23) : A03(0, 0, 52)) + Math.abs(i);
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 118);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A04(Throwable th) {
        if (th instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) th).getDiagnosticInfo();
        }
        return null;
    }

    public static void A05() {
        A05 = new byte[]{-49, -61, 4, 37, 35, 47, 36, 37, 50, -32, 41, 46, 41, 52, -32, 38, 33, 41, 44, 37, 36, -6, -32, -15, Ascii.DC2, Ascii.DLE, Ascii.FS, 17, Ascii.DC2, Ascii.US, -51, Ascii.SYN, Ascii.ESC, Ascii.SYN, 33, -51, 19, Ascii.SO, Ascii.SYN, Ascii.EM, Ascii.DC2, 17, -25, -51, 8, -24, -73, -85, -14, -2, -4, -67, -11, -16, -14, -12, -15, -2, -2, -6, -67, -16, -13, 2, -67, -16, -3, -13, 1, -2, -8, -13, 7, -67, -4, -12, -13, -8, -16, -62, -67, -12, 7, -2, -1, -5, -16, 8, -12, 1, -67, -4, -12, -13, -8, -16, -14, -2, -13, -12, -14, -67, -36, -12, -13, -8, -16, -46, -2, -13, -12, -14, -31, -12, -3, -13, -12, 1, -12, 1, -18, -5, -14, -12, -20};
    }
}
