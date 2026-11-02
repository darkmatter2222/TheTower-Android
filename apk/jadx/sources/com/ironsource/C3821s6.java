package com.ironsource;

import android.app.Activity;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.s6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3821s6 implements InterfaceC3841t6 {
    private final C3535cb a;
    private final LevelPlayAdInfo b;

    public C3821s6(C3535cb adInternal, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInternal, "adInternal");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a = adInternal;
        this.b = adInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3821s6 c3821s6) {
        InterfaceC3554db interfaceC3554dbK = c3821s6.a.k();
        if (interfaceC3554dbK != null) {
            interfaceC3554dbK.onAdClicked(c3821s6.b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(C3821s6 c3821s6) {
        InterfaceC3554db interfaceC3554dbK = c3821s6.a.k();
        if (interfaceC3554dbK != null) {
            interfaceC3554dbK.onAdClosed(c3821s6.b);
        }
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void a() {
        this.a.b("onAdExpired on shown state");
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void a(Activity activity, String str) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        String string = this.a.e().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        this.a.a(new LevelPlayAdError(string, this.a.h(), LevelPlayAdError.ERROR_CODE_SHOW_WHILE_SHOW, "Ad is already shown"), this.b);
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void a(LevelPlayAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.a.b("onAdDisplayFailed on shown state with error: " + error.getErrorMessage());
    }

    @Override // com.ironsource.InterfaceC3841t6
    public LevelPlayAdInfo b() {
        return this.b;
    }

    @Override // com.ironsource.InterfaceC3841t6
    public InterfaceC3668k0 c() {
        return new InterfaceC3668k0.a("ad is shown");
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void loadAd() {
        String string = this.a.e().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        C3535cb.a(this.a, new LevelPlayAdError(string, this.a.h(), LevelPlayAdError.ERROR_CODE_LOAD_WHILE_SHOW, "Load is called while ad is shown"), 0L, 2, null);
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void onAdClicked() {
        IronLog.INTERNAL.verbose(C3758p0.a(this.a.f(), "onAdClicked adInfo: " + this.b, (String) null, 2, (Object) null));
        this.a.f().b(new Runnable() { // from class: com.ironsource.s6$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C3821s6.a(this.f$0);
            }
        });
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void onAdClosed() {
        IronLog.INTERNAL.verbose(C3758p0.a(this.a.f(), "onAdClosed adInfo: " + this.b, (String) null, 2, (Object) null));
        this.a.a(C3692l6.a.Closed);
        this.a.f().b(new Runnable() { // from class: com.ironsource.s6$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3821s6.b(this.f$0);
            }
        });
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void onAdDisplayed(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.b("onAdDisplayed on shown state");
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void onAdInfoChanged(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.b("onAdInfoChanged on shown state");
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void onAdLoadFailed(LevelPlayAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.a.b("onAdLoadFailed on shown state with error: " + error.getErrorMessage());
    }

    @Override // com.ironsource.InterfaceC3841t6
    public void onAdLoaded(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.b("onAdLoaded on shown state");
    }
}
