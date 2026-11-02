package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class UM implements InterfaceC1678Jt {
    public int A00;
    public long A01;
    public long A02;
    public Object A03;
    public Object A04;
    public boolean A05;
    public VN A06 = VN.A08;
    public static String[] A07 = {"ItkeaFWe", "6WrAg6mcAWGGzBTROw7zDRZDD", "Wwao0SLW56a29WTNGp8", "gT", "teHmZwDwoCq4FS69CeBPRJPaC2EVPwIf", "aR9jBsCZ", "MoKyYvb2Zous5roum4h7scGWjPpV56", "sJ6adnpeEW7MCvJCPyuVOyRgq"};
    public static final String A0D = N1.A0h(0);
    public static final String A0A = N1.A0h(1);
    public static final String A0C = N1.A0h(2);
    public static final String A0B = N1.A0h(3);
    public static final String A09 = N1.A0h(4);
    public static final InterfaceC1677Js<UM> A08 = new InterfaceC1677Js() { // from class: com.facebook.ads.redexgen.X.UN
        @Override // com.facebook.ads.redexgen.X.InterfaceC1677Js
        public final InterfaceC1678Jt A7F(Bundle bundle) {
            return UM.A01(bundle);
        }
    };

    public static UM A01(Bundle bundle) {
        int i = bundle.getInt(A0D, 0);
        long j = bundle.getLong(A0A, -9223372036854775807L);
        long j2 = bundle.getLong(A0C, 0L);
        boolean z = bundle.getBoolean(A0B, false);
        Bundle bundle2 = bundle.getBundle(A09);
        VN vn = bundle2 != null ? (VN) VN.A09.A7F(bundle2) : VN.A08;
        UM um = new UM();
        um.A0G(null, null, i, j, j2, vn, z);
        return um;
    }

    public final int A03() {
        return this.A06.A00;
    }

    public final int A04(int i) {
        return this.A06.A07(i).A00;
    }

    public final int A05(int i) {
        return this.A06.A07(i).A04();
    }

    public final int A06(int i, int i2) {
        return this.A06.A07(i).A05(i2);
    }

    public final int A07(long j) {
        return this.A06.A05(j, this.A01);
    }

    public final int A08(long j) {
        return this.A06.A06(j, this.A01);
    }

    public final long A09() {
        return this.A06.A02;
    }

    public final long A0A() {
        return this.A01;
    }

    public final long A0B() {
        return N1.A0P(this.A02);
    }

    public final long A0C() {
        return this.A02;
    }

    public final long A0D(int i) {
        return this.A06.A07(i).A03;
    }

    public final long A0E(int i, int i2) {
        VO voA07 = this.A06.A07(i);
        if (voA07.A00 != -1) {
            return voA07.A06[i2];
        }
        return -9223372036854775807L;
    }

    public final UM A0F(Object obj, Object obj2, int i, long j, long j2) {
        return A0G(obj, obj2, i, j, j2, VN.A08, false);
    }

    public final UM A0G(Object obj, Object obj2, int i, long j, long j2, VN vn, boolean z) {
        this.A03 = obj;
        this.A04 = obj2;
        this.A00 = i;
        this.A01 = j;
        this.A02 = j2;
        this.A06 = vn;
        this.A05 = z;
        return this;
    }

    public final boolean A0H(int i) {
        return !this.A06.A07(i).A07();
    }

    @MetaExoPlayerCustomization
    public final boolean A0I(int i, int i2) {
        VO vo = this.A06.A05[i];
        if (vo.A00 != -1) {
            int i3 = vo.A05[i2];
            String[] strArr = A07;
            if (strArr[5].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            A07[2] = "Yvo2wLmR2r8OIZXUYlP";
            if (i3 != 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0072  */
    /* JADX WARN: Code duplicated, block: B:28:0x0083  */
    /* JADX WARN: Code duplicated, block: B:34:0x0099  */
    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (A07[2].length() != 19) {
            throw new RuntimeException();
        }
        A07[6] = "hST1TXBrmO9yZIniBEaiaCVgYsZxXf";
        if (obj == null || !getClass().equals(obj.getClass())) {
            return false;
        }
        UM um = (UM) obj;
        if (N1.A1E(this.A03, um.A03) && N1.A1E(this.A04, um.A04) && this.A00 == um.A00 && this.A01 == um.A01) {
            long j = this.A02;
            if (A07[4].charAt(11) != '4') {
                A07[1] = "csM5FhKFs8XgaJtUutSMYjOc1";
                if (j == um.A02) {
                    z = this.A05;
                    z2 = um.A05;
                    if (A07[2].length() != 19) {
                        throw new RuntimeException();
                    }
                    A07[4] = "WuW3YLMz4cH4rfaQ7XUgW07gMnzYnWkW";
                    if (z != z2 && N1.A1E(this.A06, um.A06)) {
                        return true;
                    }
                }
            } else {
                A07[2] = "abUE0hdqLPAw0DMnYJb";
                if (j == um.A02) {
                    z = this.A05;
                    z2 = um.A05;
                    if (A07[2].length() != 19) {
                        throw new RuntimeException();
                    }
                    A07[4] = "WuW3YLMz4cH4rfaQ7XUgW07gMnzYnWkW";
                    if (z != z2) {
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((((((((((((7 * 31) + (this.A03 == null ? 0 : this.A03.hashCode())) * 31) + (this.A04 != null ? this.A04.hashCode() : 0)) * 31) + this.A00) * 31) + ((int) (this.A01 ^ (this.A01 >>> 32)))) * 31) + ((int) (this.A02 ^ (this.A02 >>> 32)))) * 31) + (this.A05 ? 1 : 0)) * 31) + this.A06.hashCode();
    }
}
