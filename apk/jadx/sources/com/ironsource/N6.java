package com.ironsource;

import android.app.Activity;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdInfo;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class N6 implements InterfaceC3949z6, C3859u6.b, C3859u6.a {
    private final C3758p0 a;
    private final InterfaceC3949z6.a b;
    private final InterfaceC3877v6 c;
    private final InterfaceC3913x6 d;
    private final InterfaceC3931y6 e;
    private C3859u6 f;

    public N6(C3758p0 adTools, InterfaceC3949z6.a config, InterfaceC3877v6 fullscreenAdUnitFactory, InterfaceC3913x6 fullscreenAdUnitListener, InterfaceC3931y6 listener) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(fullscreenAdUnitFactory, "fullscreenAdUnitFactory");
        Intrinsics.checkNotNullParameter(fullscreenAdUnitListener, "fullscreenAdUnitListener");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.a = adTools;
        this.b = config;
        this.c = fullscreenAdUnitFactory;
        this.d = fullscreenAdUnitListener;
        this.e = listener;
    }

    public final C3758p0 a() {
        return this.a;
    }

    @Override // com.ironsource.InterfaceC3949z6
    public void a(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        C3859u6 c3859u6 = this.f;
        if (c3859u6 != null) {
            c3859u6.a(activity, this);
        }
    }

    @Override // com.ironsource.C3859u6.b
    public void a(C3859u6 adUnit) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.f = null;
        this.e.a();
    }

    @Override // com.ironsource.C3859u6.a
    public void a(C3859u6 adUnit, IronSourceError ironSourceError) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.e.c(ironSourceError);
    }

    @Override // com.ironsource.C3859u6.a
    public void a(C3859u6 adUnit, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.e.a(adInfo);
    }

    public final InterfaceC3949z6.a b() {
        return this.b;
    }

    @Override // com.ironsource.C3859u6.b
    public void b(C3859u6 adUnit, IronSourceError ironSourceError) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.e.b(ironSourceError);
    }

    @Override // com.ironsource.C3859u6.b
    public void b(C3859u6 adUnit, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.e.b(adInfo);
    }

    @Override // com.ironsource.C3859u6.b
    public void c(C3859u6 adUnit, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.e.onAdInfoChanged(adInfo);
    }

    @Override // com.ironsource.InterfaceC3949z6
    public void loadAd() {
        C3859u6 c3859u6A = this.c.a(true, this.d);
        c3859u6A.a(this);
        this.f = c3859u6A;
    }
}
