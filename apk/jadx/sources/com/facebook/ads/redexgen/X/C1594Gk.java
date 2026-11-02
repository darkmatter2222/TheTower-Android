package com.facebook.ads.redexgen.X;

import com.facebook.ads.NativeAd;
import com.facebook.ads.internal.api.MediaViewVideoRendererApi;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Gk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1594Gk implements InterfaceC2907nd {
    public final /* synthetic */ MediaViewVideoRendererApi A00;
    public final /* synthetic */ C1589Gf A01;

    public C1594Gk(C1589Gf c1589Gf, MediaViewVideoRendererApi mediaViewVideoRendererApi) {
        this.A01 = c1589Gf;
        this.A00 = mediaViewVideoRendererApi;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2907nd
    public final void AKm() {
        this.A01.A00 = 1.0f;
        this.A00.setVolume(1.0f);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2907nd
    public final void AKr(NativeAd nativeAd) {
        this.A01.A02 = nativeAd.getNativeOptions();
        this.A01.A0G();
        this.A01.A0H();
        this.A01.A0Q(GT.A0L(nativeAd.getInternalNativeAd()), new C1590Gg(GT.A0L(nativeAd.getInternalNativeAd())));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2907nd
    public final void ALs() {
        this.A01.A0J();
    }
}
