package com.facebook.ads.redexgen.X;

import android.os.Bundle;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class VL implements InterfaceC1678Jt {
    public Jo A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public static String[] A06 = {"RzYfNoMYcraHdY97o72y5SaeihK1Ztvv", "vjYG0c31y56prRel8vYk8Bpak1PocMUh", "dfxmatFiNvP9hSuL3LPmUKiC9gG3nQht", "JTv6rEt7nFdMJkwWS0x5u0IiQaF5ze30", "vmQpx5ObQbEZCmEzbP9elPWMJRFmrKCr", "uNbuNYUsV0K9GgwPFq3yj1D7AAPzTxzO", "9HMy9JZguRbTXmE2huzWeI0Wqqj6RWZB", "emZZOWdTIcdM1EwrEwZ0sIkDdyRItzd8"};
    public static final VL A07 = new C1674Jp().A05();
    public static final String A0A = N1.A0h(0);
    public static final String A0B = N1.A0h(1);
    public static final String A0D = N1.A0h(2);
    public static final String A09 = N1.A0h(3);
    public static final String A0C = N1.A0h(4);
    public static final InterfaceC1677Js<VL> A08 = new InterfaceC1677Js() { // from class: com.facebook.ads.redexgen.X.VM
        @Override // com.facebook.ads.redexgen.X.InterfaceC1677Js
        public final InterfaceC1678Jt A7F(Bundle bundle) {
            return VL.A00(bundle);
        }
    };

    public VL(int i, int i2, int i3, int i4, int i5) {
        this.A02 = i;
        this.A03 = i2;
        this.A05 = i3;
        this.A01 = i4;
        this.A04 = i5;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00c2  */
    public static /* synthetic */ VL A00(Bundle bundle) {
        C1674Jp c1674Jp = new C1674Jp();
        if (bundle.containsKey(A0A)) {
            c1674Jp.A01(bundle.getInt(A0A));
        }
        String str = A0B;
        String[] strArr = A06;
        if (strArr[2].charAt(11) != strArr[5].charAt(11)) {
            throw new RuntimeException();
        }
        A06[0] = "BDJMlDo374UketnZHhjsaAQuXMvBfL8j";
        if (bundle.containsKey(str)) {
            c1674Jp.A02(bundle.getInt(A0B));
        }
        if (bundle.containsKey(A0D)) {
            c1674Jp.A04(bundle.getInt(A0D));
        }
        boolean zContainsKey = bundle.containsKey(A09);
        if (A06[6].charAt(30) != 'Z') {
            throw new RuntimeException();
        }
        A06[0] = "RtwsZfQG04lSbZehVoP0W9xyBqJj0Gzk";
        if (zContainsKey) {
            int i = bundle.getInt(A09);
            String[] strArr2 = A06;
            if (strArr2[2].charAt(11) != strArr2[5].charAt(11)) {
                String[] strArr3 = A06;
                strArr3[3] = "mEYys3L0sWZXkXwakusUkC67cz3yqHmi";
                strArr3[7] = "5jsJzopOJGGKQawYRLOazGcM1zbZBInC";
                c1674Jp.A00(i);
            } else {
                String[] strArr4 = A06;
                strArr4[3] = "1r5tQTpbk4HuOkw9sEh6hX3jRMRONPTe";
                strArr4[7] = "ioWFQBHJAMsirtwz30BvtnrZgqC6cgbZ";
                c1674Jp.A00(i);
            }
        }
        String str2 = A0C;
        String[] strArr5 = A06;
        if (strArr5[3].charAt(14) == strArr5[7].charAt(14)) {
            A06[0] = "w4sI9LL672mUB7xVTEYvGR6ZeBZDPBEE";
            if (bundle.containsKey(str2)) {
                c1674Jp.A03(bundle.getInt(A0C));
            }
        } else if (bundle.containsKey(str2)) {
            c1674Jp.A03(bundle.getInt(A0C));
        }
        return c1674Jp.A05();
    }

    public final Jo A01() {
        if (this.A00 == null) {
            this.A00 = new Jo(this);
        }
        return this.A00;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        VL vl = (VL) obj;
        return this.A02 == vl.A02 && this.A03 == vl.A03 && this.A05 == vl.A05 && this.A01 == vl.A01 && this.A04 == vl.A04;
    }

    public final int hashCode() {
        return (((((((((17 * 31) + this.A02) * 31) + this.A03) * 31) + this.A05) * 31) + this.A01) * 31) + this.A04;
    }
}
