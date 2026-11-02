package com.facebook.ads.redexgen.X;

import android.net.Uri;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Rj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1861Rj implements X7, Ub {
    public static String[] A0E = {"XaDD5PgyAmJ", "8zmS63z", "j8ciNHuCepgrbIigmG1k2aMiHO0R8", "k8mv2Mp", "LdWYTg8T9Rti", "vTCnbQfzDGS3p1oDNxDazVjLN5", "FIxjTRthEwDZ", ""};
    public long A00;
    public NX A01;
    public ZP A02;
    public boolean A04;
    public final Uri A06;
    public final C1731Lx A07;
    public final AnonymousClass99 A08;
    public final InterfaceC1952Uz A09;
    public final InterfaceC2044Yw A0A;
    public volatile boolean A0C;
    public final /* synthetic */ C8p A0D;
    public final ZH A0B = new ZH();
    public boolean A03 = true;
    public final long A05 = Uc.A00();

    public C1861Rj(C8p c8p, Uri uri, TE te, InterfaceC1952Uz interfaceC1952Uz, InterfaceC2044Yw interfaceC2044Yw, C1731Lx c1731Lx) {
        this.A0D = c8p;
        this.A06 = uri;
        this.A08 = new AnonymousClass99(te);
        this.A09 = interfaceC1952Uz;
        this.A0A = interfaceC2044Yw;
        this.A07 = c1731Lx;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A04(long j, long j2) {
        this.A0B.A00 = j;
        this.A00 = j2;
        this.A03 = true;
        this.A04 = false;
    }

    @Override // com.facebook.ads.redexgen.X.X7
    public final void A5N() {
        this.A0C = true;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x012b */
    @Override // com.facebook.ads.redexgen.X.X7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void ABZ() throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1861Rj.ABZ():void");
    }

    @Override // com.facebook.ads.redexgen.X.Ub
    public final void AF8(C1744Mk c1744Mk) {
        long jMax = !this.A04 ? this.A00 : Math.max(this.A0D.A03(true), this.A00);
        int iA07 = c1744Mk.A07();
        ZP zp = (ZP) AbstractC1722Ln.A01(this.A02);
        zp.AK9(c1744Mk, iA07);
        zp.AKC(jMax, 1, iA07, 0, null);
        this.A04 = true;
    }
}
