package com.ironsource;

import android.app.Activity;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdInfo;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class A6 implements InterfaceC3949z6, C3859u6.b, C3859u6.a {
    public static final a f = new a(null);
    public static final String g = "Fullscreen ProgressiveOnLoaded Strategy";
    private final C3758p0 a;
    private final InterfaceC3877v6 b;
    private final InterfaceC3913x6 c;
    private final InterfaceC3931y6 d;
    private F6 e;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public A6(C3758p0 adTools, InterfaceC3877v6 factory, InterfaceC3913x6 fullscreenAdUnitListener, InterfaceC3931y6 listener) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(fullscreenAdUnitListener, "fullscreenAdUnitListener");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.a = adTools;
        this.b = factory;
        this.c = fullscreenAdUnitListener;
        this.d = listener;
        this.e = new B6(this);
    }

    public final C3758p0 a() {
        return this.a;
    }

    @Override // com.ironsource.InterfaceC3949z6
    public void a(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.e.a(activity);
    }

    public final void a(F6 state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.e = state;
    }

    @Override // com.ironsource.C3859u6.b
    public void a(C3859u6 adUnit) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.e.a(adUnit);
    }

    @Override // com.ironsource.C3859u6.a
    public void a(C3859u6 adUnit, IronSourceError ironSourceError) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.e.a(adUnit, ironSourceError);
    }

    @Override // com.ironsource.C3859u6.a
    public void a(C3859u6 adUnit, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.e.a(adUnit, adInfo);
    }

    public final void a(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.a.f().h().f("Fullscreen ProgressiveOnLoaded Strategy - " + message);
    }

    public final InterfaceC3877v6 b() {
        return this.b;
    }

    @Override // com.ironsource.C3859u6.b
    public void b(C3859u6 adUnit, IronSourceError ironSourceError) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.e.b(adUnit, ironSourceError);
    }

    @Override // com.ironsource.C3859u6.b
    public void b(C3859u6 adUnit, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.e.b(adUnit, adInfo);
    }

    public final InterfaceC3913x6 c() {
        return this.c;
    }

    @Override // com.ironsource.C3859u6.b
    public void c(C3859u6 adUnit, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.e.c(adUnit, adInfo);
    }

    public final InterfaceC3931y6 d() {
        return this.d;
    }

    @Override // com.ironsource.InterfaceC3949z6
    public void loadAd() {
        this.e.loadAd();
    }
}
