package com.ironsource;

import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.sdk.utils.SDKUtils;
import com.unity3d.ironsourceads.interstitial.InterstitialAdLoaderListener;
import com.unity3d.ironsourceads.interstitial.InterstitialAdRequest;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class I9 implements Jb {
    private final InterstitialAdRequest a;
    private final InterstitialAdLoaderListener b;
    private final InterfaceC3562e1 c;
    private final InterfaceC3781q1 d;

    public I9(InterstitialAdRequest adRequest, InterstitialAdLoaderListener publisherListener, InterfaceC3562e1 adapterConfigProvider, InterfaceC3781q1 analyticsFactory) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(publisherListener, "publisherListener");
        Intrinsics.checkNotNullParameter(adapterConfigProvider, "adapterConfigProvider");
        Intrinsics.checkNotNullParameter(analyticsFactory, "analyticsFactory");
        this.a = adRequest;
        this.b = publisherListener;
        this.c = adapterConfigProvider;
        this.d = analyticsFactory;
    }

    public /* synthetic */ I9(InterstitialAdRequest interstitialAdRequest, InterstitialAdLoaderListener interstitialAdLoaderListener, InterfaceC3562e1 interfaceC3562e1, InterfaceC3781q1 interfaceC3781q1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(interstitialAdRequest, interstitialAdLoaderListener, interfaceC3562e1, (i & 8) != 0 ? new C3759p1(IronSource.a.INTERSTITIAL) : interfaceC3781q1);
    }

    @Override // com.ironsource.Jb
    public Gb a() throws Exception {
        IronSourceError ironSourceErrorB;
        String instanceId = this.a.getInstanceId();
        String sDKVersion = SDKUtils.getSDKVersion();
        Intrinsics.checkNotNullExpressionValue(sDKVersion, "getSDKVersion(...)");
        InterfaceC3798r1 interfaceC3798r1A = this.d.a(new C3687l1(sDKVersion, instanceId, IronSource.a.INTERSTITIAL, false, false, false, 56, null));
        try {
            Hb hbA = new Ib(this.a.getAdm(), this.a.getProviderName$mediationsdk_release(), this.c, C3774pc.e.a().c().get()).a();
            new G9(hbA).a();
            Bc bc = new Bc();
            C3891w2 c3891w2 = new C3891w2(this.a.getAdm(), this.a.getProviderName$mediationsdk_release());
            InterstitialAdRequest interstitialAdRequest = this.a;
            Intrinsics.checkNotNull(hbA);
            V7 v7 = V7.a;
            return new F9(interstitialAdRequest, hbA, new H9(v7, this.b), c3891w2, bc, interfaceC3798r1A, new B9(interfaceC3798r1A, v7.e()), null, null, 384, null);
        } catch (Exception e) {
            C3801r4.d().a(e);
            if (e instanceof C3885ve) {
                ironSourceErrorB = ((C3885ve) e).a();
            } else {
                C3948z5 c3948z5 = C3948z5.a;
                String message = e.getMessage();
                if (message == null) {
                    message = "unknown error";
                }
                ironSourceErrorB = c3948z5.b(message);
            }
            return new A5(this.a, new H9(V7.a, this.b), interfaceC3798r1A, ironSourceErrorB);
        }
    }
}
