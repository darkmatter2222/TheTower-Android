package com.ironsource;

import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.ads.nativead.AdapterNativeAdData;
import com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdDataInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinder;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import java.util.UUID;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.mb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3715mb extends Ca implements InterfaceC3518bc {
    private final UUID d;
    private final C3679kb e;
    private Yb f;
    private String g;
    private C3717md h;
    private InterfaceC3751ob i;
    private AdapterNativeAdData j;
    private AdapterNativeAdViewBinder k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3715mb(UUID adId, C3679kb nativeAd) {
        super(new C3758p0(IronSource.a.NATIVE_AD, E0.b.MEDIATION));
        Intrinsics.checkNotNullParameter(adId, "adId");
        Intrinsics.checkNotNullParameter(nativeAd, "nativeAd");
        this.d = adId;
        this.e = nativeAd;
        this.g = "";
        a().a(new Runnable() { // from class: com.ironsource.mb$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                C3715mb.a(this.f$0);
            }
        });
    }

    public /* synthetic */ C3715mb(UUID uuid, C3679kb c3679kb, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? C3950z7.a.a() : uuid, c3679kb);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3715mb c3715mb) {
        c3715mb.a().f().a(new C3721n(IronSource.a.NATIVE_AD, c3715mb.d, c3715mb.b()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3715mb c3715mb, InterfaceC3751ob interfaceC3751ob) {
        c3715mb.i = interfaceC3751ob;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3715mb c3715mb, LevelPlayAdError levelPlayAdError) {
        InterfaceC3751ob interfaceC3751ob = c3715mb.i;
        if (interfaceC3751ob != null) {
            interfaceC3751ob.a(c3715mb.e, levelPlayAdError);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3715mb c3715mb, LevelPlayAdInfo levelPlayAdInfo) {
        InterfaceC3751ob interfaceC3751ob = c3715mb.i;
        if (interfaceC3751ob != null) {
            interfaceC3751ob.c(c3715mb.e, levelPlayAdInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3715mb c3715mb, String str) {
        c3715mb.g = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(C3715mb c3715mb) {
        IronLog.API.info(String.valueOf(c3715mb));
        try {
            Yb yb = c3715mb.f;
            if (yb == null) {
                Intrinsics.throwUninitializedPropertyAccessException("nativeAdController");
                yb = null;
            }
            yb.n();
            c3715mb.i = null;
        } catch (Throwable th) {
            C3801r4.d().a(th);
            IronLog.API.error("destroyNativeAd()");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(C3715mb c3715mb, LevelPlayAdInfo levelPlayAdInfo) {
        InterfaceC3751ob interfaceC3751ob = c3715mb.i;
        if (interfaceC3751ob != null) {
            interfaceC3751ob.b(c3715mb.e, levelPlayAdInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(C3715mb c3715mb) {
        Yb yb = null;
        if (c3715mb.c()) {
            IronLog.INTERNAL.warning(C3758p0.a(c3715mb.a(), "Native ad load already called", (String) null, 2, (Object) null));
            return;
        }
        c3715mb.a(true);
        if (c3715mb.d()) {
            Yb yb2 = c3715mb.f;
            if (yb2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("nativeAdController");
            } else {
                yb = yb2;
            }
            yb.o();
        }
    }

    private final Yb e() {
        this.h = a().c(this.g);
        UUID uuid = this.d;
        String strB = b();
        C3717md c3717md = this.h;
        if (c3717md == null) {
            Intrinsics.throwUninitializedPropertyAccessException("placement");
            c3717md = null;
        }
        C3645ic c3645ic = new C3645ic(uuid, strB, c3717md);
        a(c3645ic);
        return new Yb(this, a(), c3645ic);
    }

    public final void a(final InterfaceC3751ob interfaceC3751ob) {
        a(new Runnable() { // from class: com.ironsource.mb$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                C3715mb.a(this.f$0, interfaceC3751ob);
            }
        });
    }

    @Override // com.ironsource.InterfaceC3518bc
    public void a(final LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        IronLog.CALLBACK.info(String.valueOf(this));
        Vb vb = new Vb();
        Yb yb = this.f;
        if (yb == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nativeAdController");
            yb = null;
        }
        yb.a(vb);
        this.j = vb.a();
        this.k = vb.b();
        b(new Runnable() { // from class: com.ironsource.mb$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                C3715mb.b(this.f$0, adInfo);
            }
        });
    }

    @Override // com.ironsource.InterfaceC3518bc
    public void b(final LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        b(new Runnable() { // from class: com.ironsource.mb$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C3715mb.a(this.f$0, adInfo);
            }
        });
    }

    public final void b(final String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        a(new Runnable() { // from class: com.ironsource.mb$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                C3715mb.a(this.f$0, placementName);
            }
        });
    }

    @Override // com.ironsource.Ca
    public boolean d() {
        this.f = e();
        return true;
    }

    public final void f() {
        a().a(new Runnable() { // from class: com.ironsource.mb$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3715mb.b(this.f$0);
            }
        });
    }

    public final UUID g() {
        return this.d;
    }

    public final String h() {
        AdapterNativeAdData adapterNativeAdData = this.j;
        if (adapterNativeAdData != null) {
            return adapterNativeAdData.getAdvertiser();
        }
        return null;
    }

    public final String i() {
        AdapterNativeAdData adapterNativeAdData = this.j;
        if (adapterNativeAdData != null) {
            return adapterNativeAdData.getBody();
        }
        return null;
    }

    public final String j() {
        AdapterNativeAdData adapterNativeAdData = this.j;
        if (adapterNativeAdData != null) {
            return adapterNativeAdData.getCallToAction();
        }
        return null;
    }

    public final InterfaceC3697lb.a k() {
        NativeAdDataInterface.Image icon;
        AdapterNativeAdData adapterNativeAdData = this.j;
        if (adapterNativeAdData == null || (icon = adapterNativeAdData.getIcon()) == null) {
            return null;
        }
        return new InterfaceC3697lb.a(icon.getDrawable(), icon.getUri());
    }

    public final AdapterNativeAdViewBinder l() {
        return this.k;
    }

    public final String m() {
        AdapterNativeAdData adapterNativeAdData = this.j;
        if (adapterNativeAdData != null) {
            return adapterNativeAdData.getTitle();
        }
        return null;
    }

    public final void n() {
        a().a(new Runnable() { // from class: com.ironsource.mb$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                C3715mb.c(this.f$0);
            }
        });
    }

    @Override // com.ironsource.InterfaceC3518bc
    public void onNativeAdLoadFailed(IronSourceError ironSourceError) {
        String string = this.d.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        final LevelPlayAdError levelPlayAdError = new LevelPlayAdError(ironSourceError, string, b());
        b(new Runnable() { // from class: com.ironsource.mb$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                C3715mb.a(this.f$0, levelPlayAdError);
            }
        });
    }
}
