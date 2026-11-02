package com.ironsource;

import android.app.Activity;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdInfo;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class C6 implements F6 {
    private final A6 a;
    private final C3859u6 b;
    private C3859u6 c;
    private boolean d;

    public C6(A6 strategy, C3859u6 currentAdUnit, C3859u6 c3859u6, boolean z) {
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        Intrinsics.checkNotNullParameter(currentAdUnit, "currentAdUnit");
        this.a = strategy;
        this.b = currentAdUnit;
        this.c = c3859u6;
        this.d = z;
    }

    public /* synthetic */ C6(A6 a6, C3859u6 c3859u6, C3859u6 c3859u7, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(a6, c3859u6, c3859u7, (i & 8) != 0 ? false : z);
    }

    private final void a() {
        F6 d6;
        C3859u6 c3859u6 = this.c;
        if (c3859u6 == null) {
            A6 a6 = this.a;
            a6.a(new B6(a6));
        } else {
            if ((c3859u6 != null ? c3859u6.e() : null) != null) {
                A6 a7 = this.a;
                C3859u6 c3859u7 = this.c;
                Intrinsics.checkNotNull(c3859u7);
                d6 = new C6(a7, c3859u7, null, false, 8, null);
            } else {
                A6 a8 = this.a;
                C3859u6 c3859u8 = this.c;
                Intrinsics.checkNotNull(c3859u8);
                d6 = new D6(a8, c3859u8, false);
            }
            this.a.a(d6);
        }
        this.a.d().a();
    }

    @Override // com.ironsource.F6
    public void a(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.a.a(new E6(this.a, this.b, this.c));
        this.b.a(activity, this.a);
    }

    @Override // com.ironsource.F6
    public void a(C3859u6 adUnit) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        if (Intrinsics.areEqual(adUnit, this.c)) {
            this.c = null;
        } else if (Intrinsics.areEqual(adUnit, this.b)) {
            a();
        }
    }

    @Override // com.ironsource.F6
    public void a(C3859u6 adUnit, IronSourceError ironSourceError) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        if (Intrinsics.areEqual(adUnit, this.b)) {
            this.a.a("show failed when loaded");
        } else {
            this.a.a("progressive show failed while current ad is loaded");
        }
    }

    @Override // com.ironsource.F6
    public void a(C3859u6 adUnit, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        if (Intrinsics.areEqual(adUnit, this.b)) {
            this.a.a("show success when loaded");
        } else {
            this.a.a("progressive show success while current ad is loaded");
        }
    }

    @Override // com.ironsource.F6
    public void b(C3859u6 adUnit, IronSourceError ironSourceError) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        if (Intrinsics.areEqual(adUnit, this.c)) {
            this.c = null;
        } else {
            this.a.a("load failed after current ad is loaded");
        }
    }

    @Override // com.ironsource.F6
    public void b(C3859u6 adUnit, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        if (Intrinsics.areEqual(this.b, adUnit)) {
            this.a.a("load success after current ad is loaded");
        }
    }

    @Override // com.ironsource.F6
    public void c(C3859u6 adUnit, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        if (Intrinsics.areEqual(adUnit, this.b)) {
            this.a.d().onAdInfoChanged(adInfo);
        }
    }

    @Override // com.ironsource.F6
    public void loadAd() {
        if (this.d) {
            this.a.a("load called while current ad is loaded");
            return;
        }
        this.d = true;
        LevelPlayAdInfo levelPlayAdInfoE = this.b.e();
        if (levelPlayAdInfoE == null) {
            this.a.a("current ad is loaded without ad info");
            return;
        }
        this.a.d().b(levelPlayAdInfoE);
        if (this.c == null) {
            C3859u6 c3859u6A = this.a.b().a(false, this.a.c());
            this.c = c3859u6A;
            c3859u6A.a(this.a);
        }
    }
}
