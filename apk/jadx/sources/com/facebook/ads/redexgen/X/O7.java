package com.facebook.ads.redexgen.X;

import android.util.Pair;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class O7 {
    public static byte[] A0G;

    @MetaExoPlayerCustomization
    public int A00;

    @MetaExoPlayerCustomization
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08;
    public int A09;
    public int A0A;
    public int A0B;

    @MetaExoPlayerCustomization
    public int A0C;
    public int A0D;

    @MetaExoPlayerCustomization
    public int A0E;
    public long A0F;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0G, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 126);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A0G = new byte[]{113, 80, 86, 90, 81, 80, 71, 118, 90, SignedBytes.MAX_POWER_OF_TWO, 91, 65, 80, 71, 70, Ascii.NAK, 78, 63, Ascii.NAK, 81, 80, 86, 90, 81, 80, 71, 124, 91, 92, 65, 70, 8, Ascii.DLE, 70, Ascii.EM, 63, Ascii.NAK, 81, 80, 86, 90, 81, 80, 71, 103, 80, 89, 80, 84, 70, 80, 70, 8, Ascii.DLE, 70, 63, Ascii.NAK, 68, SignedBytes.MAX_POWER_OF_TWO, 80, SignedBytes.MAX_POWER_OF_TWO, 80, 81, 124, 91, 69, SignedBytes.MAX_POWER_OF_TWO, 65, 119, SignedBytes.MAX_POWER_OF_TWO, 83, 83, 80, 71, 70, 8, Ascii.DLE, 70, 63, Ascii.NAK, 70, 94, 92, 69, 69, 80, 81, 124, 91, 69, SignedBytes.MAX_POWER_OF_TWO, 65, 119, SignedBytes.MAX_POWER_OF_TWO, 83, 83, 80, 71, 70, 8, Ascii.DLE, 70, 63, Ascii.NAK, 71, 80, 91, 81, 80, 71, 80, 81, 122, SignedBytes.MAX_POWER_OF_TWO, 65, 69, SignedBytes.MAX_POWER_OF_TWO, 65, 119, SignedBytes.MAX_POWER_OF_TWO, 83, 83, 80, 71, 70, 8, Ascii.DLE, 70, 63, Ascii.NAK, 70, 94, 92, 69, 69, 80, 81, 122, SignedBytes.MAX_POWER_OF_TWO, 65, 69, SignedBytes.MAX_POWER_OF_TWO, 65, 119, SignedBytes.MAX_POWER_OF_TWO, 83, 83, 80, 71, 70, 8, Ascii.DLE, 70, 63, Ascii.NAK, 81, 71, 90, 69, 69, 80, 81, 119, SignedBytes.MAX_POWER_OF_TWO, 83, 83, 80, 71, 70, 8, Ascii.DLE, 70, 63, Ascii.NAK, 81, 71, 90, 69, 69, 80, 81, 124, 91, 69, SignedBytes.MAX_POWER_OF_TWO, 65, 119, SignedBytes.MAX_POWER_OF_TWO, 83, 83, 80, 71, 70, 8, Ascii.DLE, 70, 63, Ascii.NAK, 88, 84, 77, 118, 90, 91, 70, 80, 86, SignedBytes.MAX_POWER_OF_TWO, 65, 92, 67, 80, 113, 71, 90, 69, 69, 80, 81, 119, SignedBytes.MAX_POWER_OF_TWO, 83, 83, 80, 71, 70, 8, Ascii.DLE, 70, 63, Ascii.NAK, 81, 71, 90, 69, 69, 80, 81, 97, 90, 126, 80, 76, 83, 71, 84, 88, 80, 112, 67, 80, 91, 65, 70, 8, Ascii.DLE, 70, 63, Ascii.NAK, 65, 90, 65, 84, 89, 99, 92, 81, 80, 90, 115, 71, 84, 88, 80, 101, 71, 90, 86, 80, 70, 70, 92, 91, 82, 122, 83, 83, 70, 80, 65, 96, 70, 8, Ascii.DLE, 70, 63, Ascii.NAK, 67, 92, 81, 80, 90, 115, 71, 84, 88, 80, 101, 71, 90, 86, 80, 70, 70, 92, 91, 82, 122, 83, 83, 70, 80, 65, 118, 90, SignedBytes.MAX_POWER_OF_TWO, 91, 65, 8, Ascii.DLE, 70, 63, 72};
    }

    public final synchronized void A02() {
    }

    @MetaExoPlayerCustomization
    public final void A03(long j) {
        this.A01 = this.A09 == 0 ? -1 : (int) (j / ((long) this.A09));
    }

    @MetaExoPlayerCustomization
    public final void A04(Pair<Long, Integer> pair) {
        long j = ((long) this.A0C) * ((long) this.A00);
        this.A0C += ((Integer) pair.second).intValue();
        this.A00 = this.A0C == 0 ? -1 : (int) ((((Long) pair.first).longValue() + j) / ((long) this.A0C));
    }

    public final String toString() {
        return N1.A0n(A00(0, 333, 75), Integer.valueOf(this.A02), Integer.valueOf(this.A03), Integer.valueOf(this.A08), Integer.valueOf(this.A0A), Integer.valueOf(this.A09), Integer.valueOf(this.A0B), Integer.valueOf(this.A04), Integer.valueOf(this.A05), Integer.valueOf(this.A07), Integer.valueOf(this.A06), Long.valueOf(this.A0F), Integer.valueOf(this.A0D));
    }
}
