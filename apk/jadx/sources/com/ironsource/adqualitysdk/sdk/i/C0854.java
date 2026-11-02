package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.⁔, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0854 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0853 f3124;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0944 f3125;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0455 f3126;

    public C0854(C0853 c0853, InterfaceC0455 interfaceC0455, C0944 c0944) {
        this.f3124 = c0853;
        this.f3126 = interfaceC0455;
        this.f3125 = c0944;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        boolean z;
        InterfaceC0455 interfaceC0455 = this.f3126;
        C0944 c0944 = this.f3125;
        C0835 c0835 = this.f3124.f3123;
        synchronized (c0835) {
            z = c0835.f3098;
        }
        if (!z) {
            m2293(interfaceC0455, c0944);
            return;
        }
        try {
            C0639 c0639M2357 = AbstractC0958.m2357(c0944.f3365, c0944.f3364, c0944.f3363, c0944.f3362, c0944.f3361);
            if (c0639M2357 == null) {
                AbstractC0340.m2053(new C0911(c0639M2357, interfaceC0455));
                return;
            }
            AbstractC0250.m1991(StringFog.decrypt("nPKJBIQL7CCz+ZwUjgs=\n", "0pf9c+t5h20=\n"), StringFog.decrypt("VjCjoRgfv05yPLLyCh++XmIvuO8KWuxdYzC6oQpavk10Lff2EEukG3U+o+BDHw==\n", "EV/XgXk/zDs=\n") + c0639M2357.f2518);
            AbstractC0340.m2053(new C0912(c0639M2357, interfaceC0455));
        } catch (Exception e) {
            interfaceC0455.mo2105(null, StringFog.decrypt("q6ITVOFYpgyR7AFT41mmG4u/BlngHfQdj7kXRfkd\n", "/sxyNo09hng=\n") + e.getLocalizedMessage());
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2293(InterfaceC0455 interfaceC0455, C0944 c0944) {
        C0835 c0835 = this.f3124.f3123;
        C0899 c0899 = new C0899(this, interfaceC0455, c0944);
        synchronized (c0835) {
            c0835.f3097.add(c0899);
        }
    }
}
