package com.facebook.ads.redexgen.X;

import android.os.Looper;
import com.facebook.ads.AdError;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class SE implements InterfaceC1872Ru {
    @Override // com.facebook.ads.redexgen.X.InterfaceC1872Ru
    public final InterfaceC1858Rg A3Y(C1867Rp c1867Rp, VC vc) {
        if (vc.A0O == null) {
            return null;
        }
        return new SC(new C1856Re(new SP(1), AdError.MEDIAVIEW_MISSING_ERROR_CODE));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1872Ru
    public final int A87(VC vc) {
        return vc.A0O != null ? 1 : 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1872Ru
    public final /* synthetic */ InterfaceC1871Rt AIG(C1867Rp c1867Rp, VC vc) {
        return AbstractC1869Rr.A00(this, c1867Rp, vc);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1872Ru
    public final /* synthetic */ void AIH() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1872Ru
    public final void AKw(Looper looper, QD qd) {
    }
}
