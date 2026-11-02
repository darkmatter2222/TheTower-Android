package com.facebook.ads.redexgen.X;

import android.webkit.WebView;
import com.facebook.ads.AdError;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class KS implements InterfaceC2738kr {
    public final C2418fb A00;
    public final InterfaceC2437fu A01;
    public final C2746kz A02;
    public final C1618Hi A03;
    public final boolean A04;

    public KS(C1618Hi c1618Hi, InterfaceC2437fu interfaceC2437fu, C2746kz c2746kz, C2418fb c2418fb, boolean z) {
        this.A03 = c1618Hi;
        this.A01 = interfaceC2437fu;
        this.A02 = c2746kz;
        this.A00 = c2418fb;
        this.A04 = z;
    }

    private final void A00() {
        WebView webView = new WebView(this.A03);
        webView.getSettings().setCacheMode(1);
        C2438fv c2438fv = new C2438fv(this.A00, this.A01, this.A04);
        webView.setWebViewClient(c2438fv);
        webView.loadUrl(this.A00.A0M());
        c2438fv.A03();
    }

    private void A01(boolean z) {
        if (this.A00.A0G() == EnumC2419fc.A05) {
            A00();
            return;
        }
        String strA0M = this.A00.A0M();
        if (z) {
            strA0M = this.A02.A0S(this.A00.A0M());
        }
        this.A00.A0U(strA0M);
        this.A01.AGL();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2738kr
    public final void AEJ() {
        if (this.A04) {
            this.A01.AGK(AdError.CACHE_ERROR);
        } else {
            A01(false);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2738kr
    public final void AEU() {
        A01(true);
    }
}
