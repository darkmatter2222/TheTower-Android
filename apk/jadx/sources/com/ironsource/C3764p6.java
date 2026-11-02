package com.ironsource;

import android.app.Activity;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.p6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3764p6 implements InterfaceC3841t6 {
    private final C3535cb a;
    private LevelPlayAdInfo b;
    private final InterfaceC3839t4 c;
    private final long d;

    public C3764p6(C3535cb adInternal, LevelPlayAdInfo adInfo, InterfaceC3839t4 currentTimeProvider) {
        Intrinsics.checkNotNullParameter(adInternal, "adInternal");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        this.a = adInternal;
        this.b = adInfo;
        this.c = currentTimeProvider;
        this.d = currentTimeProvider.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3764p6 c3764p6, LevelPlayAdInfo levelPlayAdInfo) {
        InterfaceC3554db interfaceC3554dbK = c3764p6.a.k();
        if (interfaceC3554dbK != null) {
            interfaceC3554dbK.onAdInfoChanged(levelPlayAdInfo);
        }
    }

    private final long d() {
        return this.c.a() - this.d;
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void a() {
        IronLog.INTERNAL.verbose(C3758p0.a(this.a.f(), "onAdExpired", (String) null, 2, (Object) null));
        this.a.a(C3692l6.a.Expired);
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void a(Activity activity, String str) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        C3717md c3717mdA = this.a.f().a(this.a.d(), str);
        LevelPlayAdInfo levelPlayAdInfo = new LevelPlayAdInfo(this.b, str);
        this.b = levelPlayAdInfo;
        C3535cb c3535cb = this.a;
        c3535cb.a(new C3803r6(c3535cb, levelPlayAdInfo));
        this.a.c().a(activity, c3717mdA);
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void a(LevelPlayAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.a.b("onAdDisplayFailed on loaded state with error: " + error.getErrorMessage());
    }

    @Override // com.ironsource.InterfaceC3841t6
    public LevelPlayAdInfo b() {
        return this.b;
    }

    @Override // com.ironsource.InterfaceC3841t6
    public InterfaceC3668k0 c() {
        L3 l3A = this.a.l().g().a(this.a.h());
        return l3A.d() ? InterfaceC3668k0.a.c.a(l3A.e()) : InterfaceC3668k0.b.a;
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void loadAd() {
        this.a.f().f().h().a(Long.valueOf(d()));
        this.a.a(this.b);
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void onAdClicked() {
        this.a.b("onAdClicked on loaded state");
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void onAdClosed() {
        this.a.b("onAdClosed on loaded state");
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void onAdDisplayed(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.b("onAdDisplayed on loaded state");
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void onAdInfoChanged(final LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        C3758p0 c3758p0F = this.a.f();
        IronLog.INTERNAL.verbose(C3758p0.a(c3758p0F, "onAdInfoChanged adInfo: " + adInfo, (String) null, 2, (Object) null));
        c3758p0F.f().h().a(this.b, adInfo);
        this.b = adInfo;
        c3758p0F.b(new Runnable() { // from class: com.ironsource.p6$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3764p6.a(this.f$0, adInfo);
            }
        });
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void onAdLoadFailed(LevelPlayAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.a.b("onAdLoadFailed on loaded state with error: " + error.getErrorMessage());
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void onAdLoaded(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.b("onAdLoaded on loaded state");
    }
}
