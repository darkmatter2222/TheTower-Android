package com.ironsource;

import android.app.Activity;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdInfo;
import com.unity3d.mediation.rewarded.LevelPlayReward;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class E6 implements F6, InterfaceC3913x6 {
    private final A6 a;
    private final C3859u6 b;
    private C3859u6 c;

    public E6(A6 strategy, C3859u6 currentAdUnit, C3859u6 c3859u6) {
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        Intrinsics.checkNotNullParameter(currentAdUnit, "currentAdUnit");
        this.a = strategy;
        this.b = currentAdUnit;
        this.c = c3859u6;
        currentAdUnit.a(this);
    }

    static /* synthetic */ F6 a(E6 e6, IronSourceError ironSourceError, int i, Object obj) {
        if ((i & 1) != 0) {
            ironSourceError = null;
        }
        return e6.a(ironSourceError);
    }

    private final F6 a(IronSourceError ironSourceError) {
        if (C3584f5.a.a(ironSourceError)) {
            return new C6(this.a, this.b, this.c, true);
        }
        C3859u6 c3859u6 = this.c;
        if (c3859u6 == null) {
            return new B6(this.a);
        }
        return c3859u6.e() != null ? new C6(this.a, c3859u6, null, false, 8, null) : new D6(this.a, c3859u6, false);
    }

    @Override // com.ironsource.F6
    public void a(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.a.a("show called while showing");
    }

    @Override // com.ironsource.F6
    public void a(C3859u6 adUnit) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        if (adUnit == this.c) {
            this.c = null;
        } else {
            this.a.a("ad expired while current ad is showing");
        }
    }

    @Override // com.ironsource.F6
    public void a(C3859u6 adUnit, IronSourceError ironSourceError) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        if (!Intrinsics.areEqual(adUnit, this.b)) {
            this.a.a("progressive show failed while showing current ad");
            return;
        }
        this.a.a(a(ironSourceError));
        this.a.d().c(ironSourceError);
    }

    @Override // com.ironsource.F6
    public void a(C3859u6 adUnit, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        if (Intrinsics.areEqual(adUnit, this.b)) {
            this.a.d().a(adInfo);
        } else {
            this.a.a("progressive show success while showing current ad");
        }
    }

    @Override // com.ironsource.InterfaceC3913x6
    public void a(LevelPlayReward reward) {
        Intrinsics.checkNotNullParameter(reward, "reward");
        this.a.c().a(reward);
    }

    @Override // com.ironsource.F6
    public void b(C3859u6 adUnit, IronSourceError ironSourceError) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        if (adUnit == this.c) {
            this.c = null;
        } else {
            this.a.a("load failed while current ad is showing");
        }
    }

    @Override // com.ironsource.F6
    public void b(C3859u6 adUnit, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        if (adUnit == this.b) {
            this.a.a("load success while current ad is showing");
        }
    }

    @Override // com.ironsource.F6
    public void c(C3859u6 adUnit, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        if (adUnit == this.b) {
            this.a.a("ad info changed while current ad is showing");
        }
    }

    @Override // com.ironsource.J0
    public void e() {
        this.a.c().e();
    }

    @Override // com.ironsource.F6
    public void loadAd() {
        this.a.a("load called while showing");
    }

    @Override // com.ironsource.InterfaceC3913x6
    public void onClosed() {
        this.a.a(a(this, null, 1, null));
        this.a.c().onClosed();
    }
}
