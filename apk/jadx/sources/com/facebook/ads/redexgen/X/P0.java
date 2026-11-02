package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class P0 {
    public static String[] A09 = {"MmCYZgBPri8bmVXa", "J3inhn0J44grqBzsgHfl", "luxmx", "aD89Cmw6ZMy3IRLE5Jpd1StHj7IjoKmQ", "vvXCP", "MmSeJsvfII2Tg6FOzoJQIYN", "VDoaGMZnHNSgWJ9xUvi1", "eI"};
    public final long A00;
    public final long A01;
    public final long A02;
    public final long A03;
    public final C1862Rk A04;
    public final boolean A05;
    public final boolean A06;
    public final boolean A07;
    public final boolean A08;

    @MetaExoPlayerCustomization
    public P0(C1862Rk c1862Rk, long j, long j2, long j3, long j4, boolean z, boolean z2) {
        this.A04 = c1862Rk;
        this.A03 = j;
        this.A01 = j2;
        this.A02 = j3;
        this.A00 = j4;
        this.A07 = z;
        this.A05 = z2;
        this.A06 = false;
        this.A08 = false;
    }

    @MetaExoPlayerCustomization
    public P0(C1862Rk c1862Rk, long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.A04 = c1862Rk;
        this.A03 = j;
        this.A02 = j2;
        this.A01 = j3;
        this.A00 = j4;
        this.A06 = z;
        this.A07 = z2;
        this.A08 = z3;
        this.A05 = z4;
    }

    public final P0 A00(long j) {
        return j == this.A03 ? this : new P0(this.A04, j, this.A02, this.A01, this.A00, this.A06, this.A07, this.A08, this.A05);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0076  */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (A09[5].length() == 1) {
            throw new RuntimeException();
        }
        String[] strArr = A09;
        strArr[0] = "QgrbeDZix4AeaffD";
        strArr[1] = "DNzUJYhBqjbejkLXkccI";
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        P0 p0 = (P0) obj;
        if (this.A03 == p0.A03 && this.A02 == p0.A02 && this.A01 == p0.A01 && this.A00 == p0.A00 && this.A06 == p0.A06 && this.A07 == p0.A07) {
            boolean z = this.A08;
            boolean z2 = p0.A08;
            if (A09[5].length() != 1) {
                String[] strArr2 = A09;
                strArr2[0] = "PW4PujGLkAdsS5e1";
                strArr2[1] = "uJZYz5auQLLxJuAPKnp5";
                if (z == z2) {
                    if (this.A05 != p0.A05 && N1.A1E(this.A04, p0.A04)) {
                        return true;
                    }
                }
            } else {
                String[] strArr3 = A09;
                strArr3[0] = "N0101jdjAMvBEvtR";
                strArr3[1] = "dSSvaMoaZvMqSLv8mM1N";
                if (z == z2) {
                    if (this.A05 != p0.A05) {
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((((((((((((((((17 * 31) + this.A04.hashCode()) * 31) + ((int) this.A03)) * 31) + ((int) this.A02)) * 31) + ((int) this.A01)) * 31) + ((int) this.A00)) * 31) + (this.A06 ? 1 : 0)) * 31) + (this.A07 ? 1 : 0)) * 31) + (this.A08 ? 1 : 0)) * 31) + (this.A05 ? 1 : 0);
    }
}
