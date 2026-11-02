package com.ironsource;

import android.content.Context;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.ads.nativead.AdapterNativeAdData;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinder;
import com.ironsource.mediationsdk.adunit.adapter.listener.NativeAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.logger.IronLog;
import p005kotlin.Unit;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.cc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3536cc extends A implements NativeAdListener {
    private AdapterNativeAdData A;
    private AdapterNativeAdViewBinder B;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3536cc(T0 adTools, B instanceData, H adInstancePayload, E listener) {
        super(adTools, instanceData, adInstancePayload, null, listener, 8, null);
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(instanceData, "instanceData");
        Intrinsics.checkNotNullParameter(adInstancePayload, "adInstancePayload");
        Intrinsics.checkNotNullParameter(listener, "listener");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a(final C3536cc c3536cc) {
        try {
            if (c3536cc.g() instanceof AdapterNativeAdInterface) {
                Object objG = c3536cc.g();
                Intrinsics.checkNotNull(objG, "null cannot be cast to non-null type com.ironsource.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface<*>");
                ((AdapterNativeAdInterface) objG).destroyAd(c3536cc.i());
            } else {
                IronLog.INTERNAL.error(c3536cc.a("adapter not instance of AdapterNativeAdInterface"));
            }
        } catch (Throwable th) {
            c3536cc.f().a(new Runnable() { // from class: com.ironsource.cc$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C3536cc.a(th, c3536cc);
                }
            });
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Throwable th, C3536cc c3536cc) {
        C3801r4.d().a(th);
        String str = "destroyNativeAd - exception = " + th.getLocalizedMessage();
        IronLog.INTERNAL.error(c3536cc.a(str));
        c3536cc.f().f().h().g(str);
    }

    @Override // com.ironsource.A
    protected void D() {
        if (!(g() instanceof AdapterNativeAdInterface)) {
            IronLog.INTERNAL.error(a("adapter not instance of AdapterNativeAdInterface"));
            return;
        }
        AdData adDataI = i();
        if (ContextProvider.getInstance().getCurrentActiveActivity() == null) {
            IronLog.INTERNAL.error(a("activity must not be null"));
            f().f().h().g("activity must not be null");
            return;
        }
        Object objG = g();
        Intrinsics.checkNotNull(objG, "null cannot be cast to non-null type com.ironsource.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface<com.ironsource.mediationsdk.adunit.adapter.listener.NativeAdListener>");
        Context activeContext = ContextProvider.getInstance().getActiveContext();
        Intrinsics.checkNotNullExpressionValue(activeContext, "getActiveContext(...)");
        ((AdapterNativeAdInterface) objG).loadAd(adDataI, activeContext, this);
    }

    public final AdapterNativeAdData L() {
        return this.A;
    }

    public final AdapterNativeAdViewBinder M() {
        return this.B;
    }

    @Override // com.ironsource.A
    public void a(J adInstancePresenter) {
        Intrinsics.checkNotNullParameter(adInstancePresenter, "adInstancePresenter");
        adInstancePresenter.a(this);
    }

    public final void a(Vb nativeAdBinder) {
        Intrinsics.checkNotNullParameter(nativeAdBinder, "nativeAdBinder");
        nativeAdBinder.a(this.A);
        nativeAdBinder.a(this.B);
    }

    @Override // com.ironsource.A
    public void b() {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(q());
        super.b();
        if (g() == null) {
            ironLog.warning("adapter == null");
        } else {
            a(new Function0() { // from class: com.ironsource.cc$$ExternalSyntheticLambda1
                @Override // p005kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return C3536cc.a(this.f$0);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.listener.NativeAdListener
    public void onAdLoadSuccess(AdapterNativeAdData adapterNativeAdData, AdapterNativeAdViewBinder nativeAdViewBinder) {
        Intrinsics.checkNotNullParameter(adapterNativeAdData, "adapterNativeAdData");
        Intrinsics.checkNotNullParameter(nativeAdViewBinder, "nativeAdViewBinder");
        this.A = adapterNativeAdData;
        this.B = nativeAdViewBinder;
        super.onAdLoadSuccess();
    }
}
