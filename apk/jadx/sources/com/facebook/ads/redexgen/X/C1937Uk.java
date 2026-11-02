package com.facebook.ads.redexgen.X;

import android.os.Bundle;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Uk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1937Uk implements InterfaceC1678Jt {
    public final float A00;
    public final float A01;
    public final long A02;
    public final long A03;
    public final long A04;
    public static String[] A05 = {"qnKsSHhqap", "", "cUTdyaGGiVWkS4mAAsRuvFYFZTmOUWHx", "d9PN3P609LWiHZ4WaJEEigU3Xw52boud", "3Bzj", "t441T8WV9LQC3wNFQfuXYmVulfNtQcUh", "XmSRzun0SVrlpg5CvKpTiSL6VD9nKWrE", "GsIwkPFPk5Xbti76ybE"};
    public static final C1937Uk A07 = new C1700Kp().A05();
    public static final InterfaceC1677Js<C1937Uk> A06 = new InterfaceC1677Js() { // from class: com.facebook.ads.redexgen.X.Ul
        @Override // com.facebook.ads.redexgen.X.InterfaceC1677Js
        public final InterfaceC1678Jt A7F(Bundle bundle) {
            return C1937Uk.A00(bundle);
        }
    };

    @Deprecated
    public C1937Uk(long j, long j2, long j3, float f, float f2) {
        this.A04 = j;
        this.A03 = j2;
        this.A02 = j3;
        this.A01 = f;
        this.A00 = f2;
    }

    public C1937Uk(C1700Kp c1700Kp) {
        this(c1700Kp.A04, c1700Kp.A03, c1700Kp.A02, c1700Kp.A01, c1700Kp.A00);
    }

    public static /* synthetic */ C1937Uk A00(Bundle bundle) {
        return new C1937Uk(bundle.getLong(A01(0), -9223372036854775807L), bundle.getLong(A01(1), -9223372036854775807L), bundle.getLong(A01(2), -9223372036854775807L), bundle.getFloat(A01(3), -3.4028235E38f), bundle.getFloat(A01(4), -3.4028235E38f));
    }

    public static String A01(int i) {
        return Integer.toString(i, 36);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        boolean z = obj instanceof C1937Uk;
        if (A05[7].length() == 24) {
            throw new RuntimeException();
        }
        String[] strArr = A05;
        strArr[4] = "Jm74";
        strArr[0] = "dTDU5I0i2H";
        if (!z) {
            return false;
        }
        C1937Uk c1937Uk = (C1937Uk) obj;
        return this.A04 == c1937Uk.A04 && this.A03 == c1937Uk.A03 && this.A02 == c1937Uk.A02 && this.A01 == c1937Uk.A01 && this.A00 == c1937Uk.A00;
    }

    public final int hashCode() {
        return (((((((((int) (this.A04 ^ (this.A04 >>> 32))) * 31) + ((int) (this.A03 ^ (this.A03 >>> 32)))) * 31) + ((int) (this.A02 ^ (this.A02 >>> 32)))) * 31) + (this.A01 != 0.0f ? Float.floatToIntBits(this.A01) : 0)) * 31) + (this.A00 != 0.0f ? Float.floatToIntBits(this.A00) : 0);
    }
}
