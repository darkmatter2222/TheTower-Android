package com.ironsource;

import android.app.Activity;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import com.unity3d.mediation.rewarded.LevelPlayReward;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.i6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3639i6 implements InterfaceC3913x6, InterfaceC3931y6 {
    private final InterfaceC3674k6 a;
    private final C3597g0 b;
    private final InterfaceC3949z6 c;

    public C3639i6(InterfaceC3674k6 listener, C3758p0 adTools, C3597g0 adProperties, InterfaceC3949z6.b adUnitStrategyFactory, InterfaceC3877v6 fullscreenAdUnitFactory) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        Intrinsics.checkNotNullParameter(adUnitStrategyFactory, "adUnitStrategyFactory");
        Intrinsics.checkNotNullParameter(fullscreenAdUnitFactory, "fullscreenAdUnitFactory");
        this.a = listener;
        this.b = adProperties;
        this.c = adUnitStrategyFactory.a(adTools, adTools.b(adProperties.e(), adProperties.c()), fullscreenAdUnitFactory, this, this);
    }

    public /* synthetic */ C3639i6(InterfaceC3674k6 interfaceC3674k6, C3758p0 c3758p0, C3597g0 c3597g0, InterfaceC3949z6.b bVar, InterfaceC3877v6 interfaceC3877v6, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(interfaceC3674k6, c3758p0, c3597g0, (i & 8) != 0 ? new InterfaceC3949z6.b() : bVar, interfaceC3877v6);
    }

    @Override // com.ironsource.InterfaceC3931y6
    public void a() {
        this.a.a();
    }

    public final void a(Activity activity, C3717md c3717md) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.b.a(c3717md);
        this.c.a(activity);
    }

    @Override // com.ironsource.InterfaceC3931y6
    public void a(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.onAdDisplayed(adInfo);
    }

    @Override // com.ironsource.InterfaceC3913x6
    public void a(LevelPlayReward reward) {
        Intrinsics.checkNotNullParameter(reward, "reward");
        this.a.a(reward);
    }

    public final void b() {
        this.c.loadAd();
    }

    @Override // com.ironsource.InterfaceC3931y6
    public void b(IronSourceError ironSourceError) {
        InterfaceC3674k6 interfaceC3674k6 = this.a;
        String string = this.b.b().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        interfaceC3674k6.onAdLoadFailed(new LevelPlayAdError(ironSourceError, string, this.b.c()));
    }

    @Override // com.ironsource.InterfaceC3931y6
    public void b(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.onAdLoaded(adInfo);
    }

    @Override // com.ironsource.InterfaceC3931y6
    public void c(IronSourceError ironSourceError) {
        InterfaceC3674k6 interfaceC3674k6 = this.a;
        String string = this.b.b().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        interfaceC3674k6.a(new LevelPlayAdError(ironSourceError, string, this.b.c()));
    }

    @Override // com.ironsource.J0
    public void e() {
        this.a.onAdClicked();
    }

    @Override // com.ironsource.InterfaceC3931y6
    public void onAdInfoChanged(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.onAdInfoChanged(adInfo);
    }

    @Override // com.ironsource.InterfaceC3913x6
    public void onClosed() {
        this.a.onAdClosed();
    }
}
