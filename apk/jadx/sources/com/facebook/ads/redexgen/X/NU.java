package com.facebook.ads.redexgen.X;

import android.net.Uri;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@MetaExoPlayerCustomization
public final class NU {
    public static byte[] A0A;
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public long A04;
    public Uri A05;
    public C2327e7 A06;
    public String A07;
    public Map<String, String> A08;
    public byte[] A09;

    static {
        A01();
    }

    public NU() {
        this.A01 = 1;
        this.A08 = Collections.emptyMap();
        this.A02 = -1L;
    }

    @MetaExoPlayerCustomization
    public NU(NX nx) {
        this.A05 = nx.A06;
        this.A04 = nx.A05;
        this.A01 = nx.A01;
        this.A09 = nx.A0A;
        this.A08 = nx.A09;
        this.A03 = nx.A04;
        this.A02 = nx.A03;
        this.A07 = nx.A08;
        this.A00 = nx.A00;
        this.A06 = nx.A07;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 44);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A0A = new byte[]{SignedBytes.MAX_POWER_OF_TWO, 124, 113, 52, 97, 102, 125, 52, 121, 97, 103, 96, 52, 118, 113, 52, 103, 113, 96, 58};
    }

    public final NU A02(int i) {
        this.A00 = i;
        return this;
    }

    public final NU A03(long j) {
        this.A02 = j;
        return this;
    }

    public final NU A04(long j) {
        this.A03 = j;
        return this;
    }

    public final NU A05(long j) {
        this.A04 = j;
        return this;
    }

    public final NU A06(Uri uri) {
        this.A05 = uri;
        return this;
    }

    @MetaExoPlayerCustomization
    public final NU A07(C2327e7 c2327e7) {
        this.A06 = c2327e7;
        return this;
    }

    public final NU A08(String str) {
        this.A07 = str;
        return this;
    }

    @MetaExoPlayerCustomization
    public final NX A09() {
        AbstractC1722Ln.A03(this.A05, A00(0, 20, 56));
        return new NX(this.A05, this.A04, this.A01, this.A09, this.A08, this.A03, this.A02, this.A07, this.A00, this.A06 != null ? this.A06 : new C2327e7());
    }
}
