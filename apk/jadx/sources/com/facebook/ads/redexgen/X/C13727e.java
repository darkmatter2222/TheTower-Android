package com.facebook.ads.redexgen.X;

import com.facebook.ads.CacheFlag;
import java.util.EnumSet;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7e, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C13727e extends KI {
    public static String[] A00 = {"Ze8NKKgwBfy46YDq5I0lzRS5nG7yrU8J", "E1ojaS3uTXsRavQORrTdUhX9c7MV5aHd", "ItCt9Q9mXWs9PIywah58uBD5YWxogfVc", "TvzxiXVOv8ol3X69Q34742hsr7pKLonV", "WogP6aaFjSX27EG5W88ejxN6ir7ZffIG", "o9NxBVrFd1YzPTzVCo2rgQ7Rf3HS8hqa", "2XopQN6Gw1", "j82AvX7B8A16DzVk8Gq1uvpNrrFgPLHx"};

    public C13727e(C1618Hi c1618Hi, C2441fy c2441fy) {
        super(c1618Hi, c2441fy);
    }

    private KG A00(Runnable runnable) {
        return new KG(this, runnable);
    }

    @Override // com.facebook.ads.redexgen.X.KI
    public final AbstractC2394fD A0H() {
        C1725Lq c1725Lq = (C1725Lq) this.A01;
        if (c1725Lq != null) {
            return c1725Lq.A09();
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.KI
    public final void A0O() {
        C1725Lq c1725Lq = (C1725Lq) this.A01;
        if (c1725Lq != null) {
            c1725Lq.A0B();
        }
    }

    @Override // com.facebook.ads.redexgen.X.KI
    public final void A0Q(InterfaceC2368en interfaceC2368en, C2805ly c2805ly, C2803lw c2803lw, C2442fz c2442fz) {
        C1725Lq c1725Lq = (C1725Lq) interfaceC2368en;
        KH kh = new KH(this, c2442fz, c1725Lq);
        A0G().postDelayed(kh, c2805ly.A05().A05());
        EnumSet<CacheFlag> enumSet = this.A08.A0B;
        if (enumSet == null) {
            enumSet = CacheFlag.ALL;
            if (A00[7].charAt(1) == 'D') {
                throw new RuntimeException();
            }
            A00[5] = "sZ24rCHUkfT3uSPodHZqWzeJet0EqBqU";
        }
        c1725Lq.A0A(this.A0B, A00(kh), c2442fz, enumSet, this.A08.A04, this.A08.A05, this.A08.A02);
    }
}
