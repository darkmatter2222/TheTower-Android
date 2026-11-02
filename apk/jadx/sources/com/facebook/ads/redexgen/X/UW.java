package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class UW implements InterfaceC1678Jt {
    public static byte[] A03;
    public static final InterfaceC1677Js<UW> A04;
    public static final UW A05;
    public static final String A06;
    public static final String A07;
    public final float A00;
    public final float A01;
    public final int A02;

    static {
        A02();
        A05 = new UW(1.0f);
        A07 = N1.A0h(0);
        A06 = N1.A0h(1);
        A04 = new InterfaceC1677Js() { // from class: com.facebook.ads.redexgen.X.UX
            @Override // com.facebook.ads.redexgen.X.InterfaceC1677Js
            public final InterfaceC1678Jt A7F(Bundle bundle) {
                return UW.A00(bundle);
            }
        };
    }

    public UW(float f) {
        this(f, 1.0f);
    }

    public UW(float f, float f2) {
        AbstractC1722Ln.A07(f > 0.0f);
        AbstractC1722Ln.A07(f2 > 0.0f);
        this.A01 = f;
        this.A00 = f2;
        this.A02 = Math.round(1000.0f * f);
    }

    public static /* synthetic */ UW A00(Bundle bundle) {
        return new UW(bundle.getFloat(A07, 1.0f), bundle.getFloat(A06, 1.0f));
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 94);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A03 = new byte[]{Ascii.NAK, 41, 36, 60, 39, 36, 38, 46, Ascii.NAK, 36, 55, 36, 40, 32, 49, 32, 55, 54, 109, 54, 53, 32, 32, 33, 120, 96, 107, 119, 35, 105, 101, 53, 44, 49, 38, 45, 120, 96, 107, 119, 35, 108};
    }

    public final long A03(long j) {
        return ((long) this.A02) * j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        UW uw = (UW) obj;
        return this.A01 == uw.A01 && this.A00 == uw.A00;
    }

    public final int hashCode() {
        return (((17 * 31) + Float.floatToRawIntBits(this.A01)) * 31) + Float.floatToRawIntBits(this.A00);
    }

    public final String toString() {
        return N1.A0n(A01(0, 42, 27), Float.valueOf(this.A01), Float.valueOf(this.A00));
    }
}
