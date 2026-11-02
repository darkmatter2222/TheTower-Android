package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdInfo;
import p005kotlin.NotImplementedError;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Yb extends AbstractC3703m implements InterfaceC3716mc, L0, InterfaceC3943z0 {
    private final InterfaceC3518bc b;
    private final C3758p0 c;
    private final C3645ic d;
    private C3680kc e;
    private LevelPlayAdInfo f;

    public Yb(InterfaceC3518bc listener, C3758p0 adTools, C3645ic nativeAdProperties) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(nativeAdProperties, "nativeAdProperties");
        this.b = listener;
        this.c = adTools;
        this.d = nativeAdProperties;
        this.f = m();
    }

    private final C3680kc a(C3758p0 c3758p0, C3645ic c3645ic) {
        IronLog.INTERNAL.verbose();
        return new C3680kc(c3758p0, C3698lc.z.a(c3645ic, l().a()), this);
    }

    private final LevelPlayAdInfo m() {
        String string = this.d.b().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        String strC = this.d.c();
        String string2 = this.d.a().toString();
        Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
        return new LevelPlayAdInfo(string, strC, string2, null, null, null, null, 120, null);
    }

    public final void a(Vb nativeAdBinder) {
        Intrinsics.checkNotNullParameter(nativeAdBinder, "nativeAdBinder");
        C3680kc c3680kc = this.e;
        if (c3680kc == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nativeAdUnit");
            c3680kc = null;
        }
        c3680kc.a(new C3555dc(nativeAdBinder), this);
    }

    @Override // com.ironsource.L0
    public void a(C3853u0 adUnitCallback) {
        Intrinsics.checkNotNullParameter(adUnitCallback, "adUnitCallback");
        LevelPlayAdInfo levelPlayAdInfoC = adUnitCallback.c();
        if (levelPlayAdInfoC != null) {
            this.f = levelPlayAdInfoC;
            this.b.a(levelPlayAdInfoC);
        }
    }

    @Override // com.ironsource.InterfaceC3943z0
    public void a(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.ironsource.L0
    public void b(IronSourceError ironSourceError) {
        this.b.onNativeAdLoadFailed(ironSourceError);
    }

    @Override // com.ironsource.InterfaceC3943z0
    public void c(IronSourceError ironSourceError) {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.ironsource.J0
    public void e() {
        this.b.b(this.f);
    }

    public final void n() {
        this.f = m();
        C3680kc c3680kc = this.e;
        if (c3680kc == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nativeAdUnit");
            c3680kc = null;
        }
        c3680kc.a(true);
    }

    public final void o() {
        C3680kc c3680kcA = a(this.c, this.d);
        this.e = c3680kcA;
        if (c3680kcA == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nativeAdUnit");
            c3680kcA = null;
        }
        c3680kcA.a((L0) this);
    }
}
