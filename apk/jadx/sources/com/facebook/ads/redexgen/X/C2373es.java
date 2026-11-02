package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdPlacementType;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.es, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2373es {
    public static InterfaceC2368en A00;

    public final InterfaceC2368en A00(final C1618Hi c1618Hi, AdPlacementType adPlacementType) {
        if (A00 != null) {
            return A00;
        }
        switch (C2372er.A00[adPlacementType.ordinal()]) {
            case 1:
                return new C13857r();
            case 2:
                return C2863mv.A1O(c1618Hi) ? new C13847q() : new C13857r();
            case 3:
                return new C1725Lq();
            case 4:
                return new C1716Lh(c1618Hi);
            case 5:
                return new C1716Lh(c1618Hi) { // from class: com.facebook.ads.redexgen.X.7p
                    @Override // com.facebook.ads.redexgen.X.C1716Lh, com.facebook.ads.redexgen.X.InterfaceC2368en
                    public final AdPlacementType A9N() {
                        return AdPlacementType.NATIVE_BANNER;
                    }
                };
            case 6:
                return new C13807m();
            default:
                return null;
        }
    }
}
