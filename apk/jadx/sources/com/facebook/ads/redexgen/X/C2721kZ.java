package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.kZ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2721kZ {
    public final long A00;
    public final EnumC2720kY A01;
    public final String A02;
    public final boolean A03;

    public C2721kZ(String str, boolean z, EnumC2720kY enumC2720kY) {
        this(str, z, enumC2720kY, System.currentTimeMillis());
    }

    public C2721kZ(String str, boolean z, EnumC2720kY enumC2720kY, long j) {
        this.A02 = str;
        this.A03 = z;
        this.A01 = enumC2720kY;
        this.A00 = j;
    }

    public static C2721kZ A00() {
        return new C2721kZ("", true, EnumC2720kY.A06, -1L);
    }

    public final long A01() {
        return this.A00;
    }

    public final EnumC2720kY A02() {
        return this.A01;
    }

    public final String A03() {
        return this.A02;
    }

    public final boolean A04() {
        return this.A03;
    }
}
