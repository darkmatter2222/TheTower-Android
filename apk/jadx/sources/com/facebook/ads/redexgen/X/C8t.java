package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.8t, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C8t implements InterfaceC1863Rl, InterfaceC1864Rm {
    public static String[] A06 = {"j7ubs5bwgBez5KDYUpPY3y9IUQxc", "JOAIKi1HLeUTl2tk5bOhUejHSMD1BwGe", "YxHHt2R32vuln3OS2w6ZQ7XqQwwfs", "aupLwo0WeDrisWiY1FBdNsKSCvzUPpFe", "KV0q3mJ2COCv3zNe1TKQIxAqT8En", "VvmcfsKIDFg0hFd1fCD4fg9J7lYLhQDg", "7uek9E1vo9MWNmtvovjiW3PoQelKtD61", "xssxyHNHBfHwiy7JIZEyvUKZcMkbPmVh"};
    public long A00;
    public long A01;
    public long A02;
    public InterfaceC1864Rm A03;
    public C1866Ro[] A04 = new C1866Ro[0];
    public final InterfaceC1863Rl A05;

    public C8t(InterfaceC1863Rl interfaceC1863Rl, boolean z, long j, long j2) {
        this.A05 = interfaceC1863Rl;
        this.A02 = z ? j : -9223372036854775807L;
        this.A01 = j;
        this.A00 = j2;
    }

    private C1816Pj A00(long j, C1816Pj c1816Pj) {
        long jA0T = N1.A0T(c1816Pj.A01, 0L, j - this.A01);
        long jA0T2 = N1.A0T(c1816Pj.A00, 0L, this.A00 == Long.MIN_VALUE ? Long.MAX_VALUE : this.A00 - j);
        return (jA0T == c1816Pj.A01 && jA0T2 == c1816Pj.A00) ? c1816Pj : new C1816Pj(jA0T, jA0T2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.VI
    /* JADX INFO: renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final void AEW(InterfaceC1863Rl interfaceC1863Rl) {
        ((InterfaceC1864Rm) AbstractC1722Ln.A01(this.A03)).AEW(this);
    }

    public static boolean A02(long j, RA[] raArr) {
        if (j != 0) {
            for (RA ra : raArr) {
                if (A06[3].charAt(14) == 'B') {
                    throw new RuntimeException();
                }
                String[] strArr = A06;
                strArr[6] = "fGuJHx4aftfK4nNvykLU6KmljzgT82dn";
                strArr[5] = "kD9XBGQyLMsMzCVi6Yj91l7kD05F7qTo";
                if (ra != null) {
                    VC vcA9f = ra.A9f();
                    if (!L8.A0G(vcA9f.A0W, vcA9f.A0R)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean A03() {
        return this.A02 != -9223372036854775807L;
    }

    @Override // com.facebook.ads.redexgen.X.VJ
    @MetaExoPlayerCustomization
    public final void A5O(long j) {
        this.A05.A5O(j);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1863Rl
    public final boolean A5l(long j) {
        return this.A05.A5l(j);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1863Rl
    public final void A6Z(long j, boolean z) {
        this.A05.A6Z(j, z);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1863Rl
    public final long A7R(long j, C1816Pj c1816Pj) {
        if (j == this.A01) {
            return this.A01;
        }
        return this.A05.A7R(j, A00(j, c1816Pj));
    }

    @Override // com.facebook.ads.redexgen.X.VJ
    @MetaExoPlayerCustomization
    public final long A7g(long j) {
        return this.A05.A7g(j);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1863Rl
    public final long A7i() {
        long jA7i = this.A05.A7i();
        if (jA7i == Long.MIN_VALUE || (this.A00 != Long.MIN_VALUE && jA7i >= this.A00)) {
            return Long.MIN_VALUE;
        }
        return jA7i;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1863Rl
    public final long A9E() {
        long jA9E = this.A05.A9E();
        if (jA9E != Long.MIN_VALUE) {
            if (this.A00 != Long.MIN_VALUE) {
                long j = this.A00;
                if (A06[3].charAt(14) == 'B') {
                    throw new RuntimeException();
                }
                String[] strArr = A06;
                strArr[4] = "xQnkrCD7Wc1JZKFxJsjRaCrFf9eL";
                strArr[0] = "QqNj2pBz7mrHzdsygHykcydjOmZN";
                if (jA9E >= j) {
                }
            }
            return jA9E;
        }
        return Long.MIN_VALUE;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1863Rl
    public final RY A9z() {
        return this.A05.A9z();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1863Rl
    public final void ADJ() throws IOException {
        if (0 != 0) {
            throw null;
        }
        this.A05.ADJ();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1864Rm
    public final void AGX(InterfaceC1863Rl interfaceC1863Rl) {
        if (0 != 0) {
            return;
        }
        ((InterfaceC1864Rm) AbstractC1722Ln.A01(this.A03)).AGX(this);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1863Rl
    public final void AII(InterfaceC1864Rm interfaceC1864Rm, long j) {
        this.A03 = interfaceC1864Rm;
        this.A05.AII(this, j);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1863Rl
    public final long AId() {
        if (A03()) {
            long j = this.A02;
            this.A02 = -9223372036854775807L;
            long jAId = AId();
            return jAId != -9223372036854775807L ? jAId : j;
        }
        long jAId2 = this.A05.AId();
        if (jAId2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        boolean z = true;
        AbstractC1722Ln.A08(jAId2 >= this.A01);
        if (this.A00 != Long.MIN_VALUE && jAId2 > this.A00) {
            z = false;
        }
        AbstractC1722Ln.A08(z);
        return jAId2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1863Rl
    public final void AIk(long j) {
        this.A05.AIk(j);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0055  */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1863Rl
    public final long AKQ(@MetaExoPlayerCustomization long j, boolean z) {
        this.A02 = -9223372036854775807L;
        boolean z2 = false;
        for (C1866Ro c1866Ro : this.A04) {
            if (c1866Ro != null) {
                c1866Ro.A00();
            }
        }
        long jAKQ = this.A05.AKQ(j, z);
        if (jAKQ == j) {
            z2 = true;
        } else if (jAKQ >= this.A01) {
            long j2 = this.A00;
            String[] strArr = A06;
            if (strArr[4].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            A06[2] = "YjAFFIZthIBm8p803KJts";
            if (j2 == Long.MIN_VALUE || jAKQ <= this.A00) {
                z2 = true;
            }
        }
        AbstractC1722Ln.A08(z2);
        return jAKQ;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1863Rl
    public final long AKR(RA[] raArr, boolean[] zArr, VF[] vfArr, boolean[] zArr2, long j) {
        this.A04 = new C1866Ro[vfArr.length];
        VF[] vfArr2 = new VF[vfArr.length];
        int i = 0;
        while (true) {
            VF vf = null;
            if (i >= vfArr.length) {
                break;
            }
            this.A04[i] = (C1866Ro) vfArr[i];
            if (this.A04[i] != null) {
                vf = this.A04[i].A01;
            }
            vfArr2[i] = vf;
            i++;
        }
        long jAKR = this.A05.AKR(raArr, zArr, vfArr2, zArr2, j);
        this.A02 = (A03() && j == this.A01 && A02(this.A01, raArr)) ? jAKR : -9223372036854775807L;
        AbstractC1722Ln.A08(jAKR == j || (jAKR >= this.A01 && (this.A00 == Long.MIN_VALUE || jAKR <= this.A00)));
        for (int i2 = 0; i2 < vfArr.length; i2++) {
            if (vfArr2[i2] == null) {
                this.A04[i2] = null;
            } else if (this.A04[i2] == null || this.A04[i2].A01 != vfArr2[i2]) {
                this.A04[i2] = new C1866Ro(this, vfArr2[i2]);
            }
            vfArr[i2] = this.A04[i2];
        }
        return jAKR;
    }

    @Override // com.facebook.ads.redexgen.X.VJ
    @MetaExoPlayerCustomization
    public final void AKu(boolean z) {
        this.A05.AKu(z);
    }

    @Override // com.facebook.ads.redexgen.X.VJ
    @MetaExoPlayerCustomization
    public final void ALv(byte b) {
        this.A05.ALv(b);
    }
}
