package com.ironsource;

import android.app.Activity;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.r6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3803r6 implements InterfaceC3841t6 {
    private final C3535cb a;
    private final LevelPlayAdInfo b;

    public C3803r6(C3535cb adInternal, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInternal, "adInternal");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a = adInternal;
        this.b = adInfo;
    }

    private final InterfaceC3841t6 a(LevelPlayAdError levelPlayAdError, LevelPlayAdInfo levelPlayAdInfo) {
        if (!C3584f5.a.a(C3522bg.a.a(levelPlayAdError))) {
            return new C3692l6(this.a, C3692l6.a.ShowFailed);
        }
        C3535cb c3535cb = this.a;
        return new C3764p6(c3535cb, levelPlayAdInfo, c3535cb.j());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3803r6 c3803r6, LevelPlayAdInfo levelPlayAdInfo) {
        InterfaceC3554db interfaceC3554dbK = c3803r6.a.k();
        if (interfaceC3554dbK != null) {
            interfaceC3554dbK.onAdDisplayed(levelPlayAdInfo);
        }
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void a() {
        this.a.b("onAdExpired on showing state");
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void a(Activity activity, String str) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        String string = this.a.e().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        this.a.a(new LevelPlayAdError(string, this.a.h(), LevelPlayAdError.ERROR_CODE_SHOW_WHILE_SHOW, "Ad is already showing"), this.b);
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void a(LevelPlayAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.a.a(a(error, this.b));
        this.a.a(error, this.b);
    }

    @Override // com.ironsource.InterfaceC3841t6
    public LevelPlayAdInfo b() {
        return this.b;
    }

    @Override // com.ironsource.InterfaceC3841t6
    public InterfaceC3668k0 c() {
        return new InterfaceC3668k0.a("ad is showing");
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void loadAd() {
        String string = this.a.e().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        C3535cb.a(this.a, new LevelPlayAdError(string, this.a.h(), LevelPlayAdError.ERROR_CODE_LOAD_WHILE_SHOW, "Load is called while ad is showing"), 0L, 2, null);
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void onAdClicked() {
        this.a.b("onAdClicked on showing state");
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void onAdClosed() {
        this.a.b("onAdClosed on showing state");
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void onAdDisplayed(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        C3758p0 c3758p0F = this.a.f();
        final LevelPlayAdInfo levelPlayAdInfo = new LevelPlayAdInfo(adInfo, this.b.getPlacementName());
        IronLog.INTERNAL.verbose(C3758p0.a(c3758p0F, "onAdDisplayed adInfo: " + levelPlayAdInfo, (String) null, 2, (Object) null));
        c3758p0F.f().h().c();
        C3535cb c3535cb = this.a;
        c3535cb.a(new C3821s6(c3535cb, levelPlayAdInfo));
        c3758p0F.b(new Runnable() { // from class: com.ironsource.r6$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3803r6.a(this.f$0, levelPlayAdInfo);
            }
        });
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void onAdInfoChanged(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.b("onAdInfoChanged on showing state");
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void onAdLoadFailed(LevelPlayAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.a.b("onAdLoadFailed on showing state with error: " + error.getErrorMessage());
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void onAdLoaded(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.b("onAdLoaded on showing state");
    }
}
