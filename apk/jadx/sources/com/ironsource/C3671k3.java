package com.ironsource;

import com.google.firebase.database.core.ValidationPath;
import com.ironsource.adapters.applovin.AppLovinConstants;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.sdk.utils.SDKUtils;
import com.unity3d.ironsourceads.AdSize;
import com.unity3d.ironsourceads.banner.BannerAdLoaderListener;
import com.unity3d.ironsourceads.banner.BannerAdRequest;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.k3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3671k3 implements Jb {
    private final BannerAdRequest a;
    private final BannerAdLoaderListener b;
    private final InterfaceC3562e1 c;
    private final InterfaceC3781q1 d;

    public C3671k3(BannerAdRequest adRequest, BannerAdLoaderListener publisherListener, InterfaceC3562e1 adapterConfigProvider, InterfaceC3781q1 analyticsFactory) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(publisherListener, "publisherListener");
        Intrinsics.checkNotNullParameter(adapterConfigProvider, "adapterConfigProvider");
        Intrinsics.checkNotNullParameter(analyticsFactory, "analyticsFactory");
        this.a = adRequest;
        this.b = publisherListener;
        this.c = adapterConfigProvider;
        this.d = analyticsFactory;
    }

    public /* synthetic */ C3671k3(BannerAdRequest bannerAdRequest, BannerAdLoaderListener bannerAdLoaderListener, InterfaceC3562e1 interfaceC3562e1, InterfaceC3781q1 interfaceC3781q1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(bannerAdRequest, bannerAdLoaderListener, interfaceC3562e1, (i & 8) != 0 ? new C3759p1(IronSource.a.BANNER) : interfaceC3781q1);
    }

    @Override // com.ironsource.Jb
    public Gb a() throws Exception {
        IronSourceError ironSourceErrorA;
        String instanceId = this.a.getInstanceId();
        String sDKVersion = SDKUtils.getSDKVersion();
        Intrinsics.checkNotNullExpressionValue(sDKVersion, "getSDKVersion(...)");
        InterfaceC3798r1 interfaceC3798r1A = this.d.a(new C3687l1(sDKVersion, instanceId, IronSource.a.BANNER, false, false, false, 56, null));
        try {
            Hb hbA = new Ib(this.a.getAdm(), this.a.getProviderName$mediationsdk_release(), this.c, C3774pc.e.a().c().get()).a();
            new C3636i3(hbA, this.a.getSize()).a();
            Bc bc = new Bc();
            C3891w2 c3891w2 = new C3891w2(this.a.getAdm(), this.a.getProviderName$mediationsdk_release());
            BannerAdRequest bannerAdRequest = this.a;
            AdSize size = bannerAdRequest.getSize();
            Intrinsics.checkNotNull(hbA);
            V7 v7 = V7.a;
            return new C3618h3(bannerAdRequest, size, c3891w2, hbA, bc, interfaceC3798r1A, new C3653j3(v7, this.b), new P2(interfaceC3798r1A, v7.e()), null, null, ValidationPath.MAX_PATH_LENGTH_BYTES, null);
        } catch (Exception e) {
            C3801r4.d().a(e);
            if (e instanceof C3885ve) {
                ironSourceErrorA = ((C3885ve) e).a();
            } else {
                C3948z5 c3948z5 = C3948z5.a;
                String message = e.getMessage();
                if (message == null) {
                    message = AppLovinConstants.Logs.ERROR_UNKNOWN;
                }
                ironSourceErrorA = c3948z5.a(message);
            }
            return new C3930y5(ironSourceErrorA, new C3653j3(V7.a, this.b), interfaceC3798r1A);
        }
    }
}
