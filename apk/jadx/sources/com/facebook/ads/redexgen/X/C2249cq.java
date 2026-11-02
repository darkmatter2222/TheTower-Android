package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.cq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@MetaExoPlayerCustomization
public final class C2249cq {
    public static String[] A05 = {"Vb0rnhhXZ", "S1HOuo1xwfbiDwDLGiRTFh2wuBfdXzxW", "7QQbs0Ke0W6tPDtsGwKxYBqUcookiAn7", "vPq2yIXtj8uDfcqO7kVYfGPK4H", "mFWZ0wXNeJl", "RQ1OsPsuWIm0OlFx8VQ9Yla42yQLBgEQ", "j8omZtV14adW09ZVIj2PYLr", "jNGsijCBD"};
    public int A00;
    public byte[] A01;
    public boolean A02;
    public boolean A03;
    public final int A04;

    public C2249cq(int i, int i2) {
        this.A04 = i;
        this.A01 = new byte[i2 + 3];
        this.A01[2] = 1;
    }

    public final void A00() {
        this.A03 = false;
        this.A02 = false;
    }

    public final void A01(int i) {
        AbstractC1722Ln.A08(!this.A03);
        this.A03 = i == this.A04;
        if (this.A03) {
            this.A00 = 3;
            this.A02 = false;
        }
    }

    public final void A02(byte[] bArr, int i, int i2) {
        if (this.A03) {
            int i3 = i2 - i;
            byte[] bArr2 = this.A01;
            if (A05[1].charAt(2) != 'H') {
                throw new RuntimeException();
            }
            A05[3] = "ULBSWvxwfUboKOvCxyPO6XWiUU";
            if (bArr2.length < this.A00 + i3) {
                this.A01 = Arrays.copyOf(this.A01, (this.A00 + i3) * 2);
            }
            System.arraycopy(bArr, i, this.A01, this.A00, i3);
            this.A00 += i3;
        }
    }

    public final boolean A03() {
        return this.A02;
    }

    public final boolean A04(int i) {
        if (!this.A03) {
            return false;
        }
        this.A00 -= i;
        this.A03 = false;
        this.A02 = true;
        return true;
    }
}
