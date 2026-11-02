package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class KH extends AbstractRunnableC2979oq {
    public static String[] A03 = {"yrAoLlhy", "vjKRanDE0ikxU4tUHx1JmWQDvFUAaqx2", "G8wXLa7S", "9J53mmPk6os8gDVcVJiXfdfZJDEQMT6X", "kfMskHW9TbZqzkqhamfHgTOsKT3rM1iE", "Mg52vw4TxXqfT32sREgq1aGh5Zqj2TwE", "nRFH5QMgskhjbVKjSOKCK9T059kaNprb", "vKZwNFsd8PUl35Ni"};
    public final /* synthetic */ C1725Lq A00;
    public final /* synthetic */ C2442fz A01;
    public final /* synthetic */ C13727e A02;

    public KH(C13727e c13727e, C2442fz c2442fz, C1725Lq c1725Lq) {
        this.A02 = c13727e;
        this.A01 = c2442fz;
        this.A00 = c1725Lq;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2979oq
    public final void A07() {
        this.A02.A0S(this.A01);
        this.A02.A0P(this.A00);
        this.A02.A00 = null;
        C2922nt c2922ntA00 = C2922nt.A00(AdErrorType.INTERSTITIAL_AD_TIMEOUT);
        this.A02.A0B.A0F().A6F(c2922ntA00.A03().getErrorCode(), c2922ntA00.A04());
        if (this.A02.A07 != null) {
            AbstractC2369eo abstractC2369eo = this.A02.A07;
            if (A03[2].length() == 26) {
                throw new RuntimeException();
            }
            A03[2] = "dFgz35Aa9EKDn";
            abstractC2369eo.A0G(c2922ntA00);
        }
    }
}
