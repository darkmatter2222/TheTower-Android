package com.facebook.ads.redexgen.X;

import com.unity3d.ads.core.domain.WebViewScreenCapture;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ck, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1491Ck implements InterfaceC3056q8 {
    public final /* synthetic */ C13315p A00;

    public C1491Ck(C13315p c13315p) {
        this.A00 = c13315p;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3056q8
    public final void AGA(String str) {
        this.A00.A0K.postDelayed(new RunnableC3157rl(this), WebViewScreenCapture.CACHE_TTL_MS);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3056q8
    public final void AGB(String str) {
        this.A00.A0J(EnumC2891nN.A0c);
    }
}
