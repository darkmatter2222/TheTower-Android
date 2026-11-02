package com.ironsource;

import android.app.Activity;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.ads.nativead.AdapterNativeAdData;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener;
import com.ironsource.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinder;
import com.ironsource.mediationsdk.adunit.adapter.listener.NativeAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.Arrays;
import java.util.Map;
import p005kotlin.NotImplementedError;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: renamed from: com.ironsource.jc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3662jc extends AbstractC3761p3<P0> implements NativeAdListener, D0 {
    private AdapterNativeAdData r;
    private AdapterNativeAdViewBinder s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3662jc(InterfaceC3920xd threadInterface, C3722n0 adSmashData, BaseAdAdapter<?, AdapterAdListener> baseAdAdapter, C3717md c3717md, C3927y2 item, P0 p0) {
        super(threadInterface, adSmashData, baseAdAdapter, new C3525c1(adSmashData.g(), adSmashData.g().getNativeAdSettings(), IronSource.a.NATIVE_AD), item, p0);
        Intrinsics.checkNotNullParameter(threadInterface, "threadInterface");
        Intrinsics.checkNotNullParameter(adSmashData, "adSmashData");
        Intrinsics.checkNotNullParameter(item, "item");
        this.g = c3717md;
    }

    private final void J() {
        C3778pg c3778pg;
        IronLog.INTERNAL.verbose(d());
        if (y()) {
            super.onAdOpened();
            return;
        }
        if (this.e != AbstractC3761p3.h.FAILED) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String str = String.format("unexpected onAdOpened for %s, state - %s", Arrays.copyOf(new Object[]{k(), this.e}, 2));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            E0 e0 = this.d;
            if (e0 == null || (c3778pg = e0.j) == null) {
                return;
            }
            c3778pg.q(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3662jc c3662jc) {
        c3662jc.J();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3662jc c3662jc, AdapterNativeAdData adapterNativeAdData, AdapterNativeAdViewBinder adapterNativeAdViewBinder) {
        c3662jc.a(adapterNativeAdData, adapterNativeAdViewBinder);
    }

    private final void a(AdapterNativeAdData adapterNativeAdData, AdapterNativeAdViewBinder adapterNativeAdViewBinder) {
        this.r = adapterNativeAdData;
        this.s = adapterNativeAdViewBinder;
        super.onAdLoadSuccess();
    }

    @Override // com.ironsource.AbstractC3761p3
    protected void G() {
        C3778pg c3778pg;
        if (!(this.c instanceof AdapterNativeAdInterface)) {
            IronLog.INTERNAL.error(a("adapter not instance of AdapterNativeAdInterface"));
            return;
        }
        if (ContextProvider.getInstance().getCurrentActiveActivity() == null) {
            IronLog.INTERNAL.error(a("activity must not be null"));
            E0 e0 = this.d;
            if (e0 == null || (c3778pg = e0.j) == null) {
                return;
            }
            c3778pg.g("activity must not be null");
            return;
        }
        Object obj = this.c;
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.ironsource.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface<com.ironsource.mediationsdk.adunit.adapter.listener.NativeAdListener>");
        AdData mCurrentAdData = this.k;
        Intrinsics.checkNotNullExpressionValue(mCurrentAdData, "mCurrentAdData");
        Activity currentActiveActivity = ContextProvider.getInstance().getCurrentActiveActivity();
        Intrinsics.checkNotNullExpressionValue(currentActiveActivity, "getCurrentActiveActivity(...)");
        ((AdapterNativeAdInterface) obj).loadAd(mCurrentAdData, currentActiveActivity, this);
    }

    public final void P() {
        C3778pg c3778pg;
        Cb cb;
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(k());
        a(AbstractC3761p3.h.NONE);
        Object obj = this.c;
        if (obj == null) {
            ironLog.warning("mAdapter == null");
            return;
        }
        try {
            if (obj instanceof AdapterNativeAdInterface) {
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.ironsource.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface<*>");
                AdData mCurrentAdData = this.k;
                Intrinsics.checkNotNullExpressionValue(mCurrentAdData, "mCurrentAdData");
                ((AdapterNativeAdInterface) obj).destroyAd(mCurrentAdData);
            } else {
                ironLog.error(a("adapter not instance of AdapterNativeAdInterface"));
            }
        } catch (Throwable th) {
            C3801r4.d().a(th);
            String str = "destroyNativeAd - exception = " + th.getLocalizedMessage();
            IronLog.INTERNAL.error(a(str));
            E0 e0 = this.d;
            if (e0 != null && (c3778pg = e0.j) != null) {
                c3778pg.g(str);
            }
        }
        E0 e1 = this.d;
        if (e1 == null || (cb = e1.f) == null) {
            return;
        }
        Integer numR = r();
        Intrinsics.checkNotNullExpressionValue(numR, "getSessionDepth(...)");
        cb.a(numR.intValue());
    }

    public final AdapterNativeAdData Q() {
        return this.r;
    }

    public final AdapterNativeAdViewBinder R() {
        return this.s;
    }

    @Override // com.ironsource.AbstractC3761p3, com.ironsource.D0
    public Map<String, Object> a(B0 event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Map<String, Object> mapA = super.a(event);
        if (this.g != null) {
            Intrinsics.checkNotNull(mapA);
            mapA.put("placement", j());
        }
        Intrinsics.checkNotNull(mapA);
        return mapA;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.listener.NativeAdListener
    public void onAdLoadSuccess(final AdapterNativeAdData adapterNativeAdData, final AdapterNativeAdViewBinder nativeAdViewBinder) {
        Intrinsics.checkNotNullParameter(adapterNativeAdData, "adapterNativeAdData");
        Intrinsics.checkNotNullParameter(nativeAdViewBinder, "nativeAdViewBinder");
        if (u().c()) {
            u().a(new Runnable() { // from class: com.ironsource.jc$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C3662jc.a(this.f$0, adapterNativeAdData, nativeAdViewBinder);
                }
            });
        } else {
            a(adapterNativeAdData, nativeAdViewBinder);
        }
    }

    @Override // com.ironsource.AbstractC3761p3, com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    public void onAdOpened() {
        if (u().c()) {
            u().a(new Runnable() { // from class: com.ironsource.jc$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    C3662jc.a(this.f$0);
                }
            });
        } else {
            J();
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    public void onAdShowFailed(int i, String str) {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }
}
