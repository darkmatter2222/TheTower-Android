package com.ironsource;

import android.content.Context;
import android.os.Bundle;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.AdapterUtils;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.unity3d.ironsourceads.AdSize;
import com.unity3d.ironsourceads.banner.BannerAdRequest;
import com.unity3d.ironsourceads.banner.BannerAdView;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;
import p005kotlin.Result;
import p005kotlin.Unit;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.h3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3618h3 implements Gb, L2 {
    private final BannerAdRequest a;
    private final AdSize b;
    private final InterfaceC3909x2 c;
    private final Hb d;
    private final Ac e;
    private final InterfaceC3798r1 f;
    private final U<BannerAdView> g;
    private final O2 h;
    private final InterfaceC3648ig.c i;
    private final Executor j;
    private C3691l5 k;
    private InterfaceC3648ig l;
    private C3599g2 m;
    private boolean n;

    /* JADX INFO: renamed from: com.ironsource.h3$a */
    public static final class a implements InterfaceC3648ig.a {
        a() {
        }

        @Override // com.ironsource.InterfaceC3648ig.a
        public void a() {
            C3618h3.this.a(C3948z5.a.s());
        }
    }

    public C3618h3(BannerAdRequest adRequest, AdSize size, InterfaceC3909x2 auctionResponseFetcher, Hb loadTaskConfig, Ac networkLoadApi, InterfaceC3798r1 analytics, U<BannerAdView> adLoadTaskListener, O2 adLayoutFactory, InterfaceC3648ig.c timerFactory, Executor taskFinishedExecutor) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(size, "size");
        Intrinsics.checkNotNullParameter(auctionResponseFetcher, "auctionResponseFetcher");
        Intrinsics.checkNotNullParameter(loadTaskConfig, "loadTaskConfig");
        Intrinsics.checkNotNullParameter(networkLoadApi, "networkLoadApi");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(adLoadTaskListener, "adLoadTaskListener");
        Intrinsics.checkNotNullParameter(adLayoutFactory, "adLayoutFactory");
        Intrinsics.checkNotNullParameter(timerFactory, "timerFactory");
        Intrinsics.checkNotNullParameter(taskFinishedExecutor, "taskFinishedExecutor");
        this.a = adRequest;
        this.b = size;
        this.c = auctionResponseFetcher;
        this.d = loadTaskConfig;
        this.e = networkLoadApi;
        this.f = analytics;
        this.g = adLoadTaskListener;
        this.h = adLayoutFactory;
        this.i = timerFactory;
        this.j = taskFinishedExecutor;
    }

    public /* synthetic */ C3618h3(BannerAdRequest bannerAdRequest, AdSize adSize, InterfaceC3909x2 interfaceC3909x2, Hb hb, Ac ac, InterfaceC3798r1 interfaceC3798r1, U u, O2 o2, InterfaceC3648ig.c cVar, Executor executor, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(bannerAdRequest, adSize, interfaceC3909x2, hb, ac, interfaceC3798r1, u, o2, (i & 256) != 0 ? new InterfaceC3648ig.d() : cVar, (i & 512) != 0 ? V7.a.e() : executor);
    }

    private final void a(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        Map<String, String> mapA = V5.a.a(bundle);
        for (String str : mapA.keySet()) {
            InterfaceC3669k1.c.a.a(new C3723n1.l(str + C3510b4.j.b + String.valueOf(mapA.get(str)))).a(this.f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3618h3 c3618h3, R9 r9, C3676k8 c3676k8) {
        if (c3618h3.n) {
            return;
        }
        c3618h3.n = true;
        InterfaceC3648ig interfaceC3648ig = c3618h3.l;
        if (interfaceC3648ig != null) {
            interfaceC3648ig.cancel();
        }
        C3691l5 c3691l5 = c3618h3.k;
        if (c3691l5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("taskStartedTime");
            c3691l5 = null;
        }
        InterfaceC3669k1.c.a.a(new C3723n1.f(C3691l5.a(c3691l5))).a(c3618h3.f);
        C3599g2 c3599g2 = c3618h3.m;
        if (c3599g2 != null) {
            c3599g2.c("onBannerLoadSuccess");
        }
        O2 o2 = c3618h3.h;
        C3599g2 c3599g3 = c3618h3.m;
        Intrinsics.checkNotNull(c3599g3);
        c3618h3.g.a(o2.a(r9, c3676k8, c3599g3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3618h3 c3618h3, IronSourceError ironSourceError) {
        if (c3618h3.n) {
            return;
        }
        c3618h3.n = true;
        InterfaceC3648ig interfaceC3648ig = c3618h3.l;
        if (interfaceC3648ig != null) {
            interfaceC3648ig.cancel();
        }
        InterfaceC3669k1.c.a aVar = InterfaceC3669k1.c.a;
        C3723n1.j jVar = new C3723n1.j(ironSourceError.getErrorCode());
        C3723n1.k kVar = new C3723n1.k(ironSourceError.getErrorMessage());
        C3691l5 c3691l5 = c3618h3.k;
        if (c3691l5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("taskStartedTime");
            c3691l5 = null;
        }
        aVar.a(jVar, kVar, new C3723n1.f(C3691l5.a(c3691l5))).a(c3618h3.f);
        C3599g2 c3599g2 = c3618h3.m;
        if (c3599g2 != null) {
            c3599g2.a("onBannerLoadFail");
        }
        c3618h3.g.a(ironSourceError);
    }

    private final void a(Exception exc) {
        IronSourceError ironSourceErrorBuildLoadFailedError = ErrorBuilder.buildLoadFailedError(exc.getMessage());
        InterfaceC3669k1.d.a.a(new C3723n1.k(ironSourceErrorBuildLoadFailedError.getErrorMessage())).a(this.f);
        IronLog.CALLBACK.error(ironSourceErrorBuildLoadFailedError.getErrorMessage());
    }

    public final void a(final IronSourceError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        try {
            this.j.execute(new Runnable() { // from class: com.ironsource.h3$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    C3618h3.a(this.f$0, error);
                }
            });
        } catch (Exception e) {
            a(e);
        }
    }

    @Override // com.ironsource.L2
    public void onBannerLoadFail(String description) {
        Intrinsics.checkNotNullParameter(description, "description");
        a(C3948z5.a.c(description));
    }

    @Override // com.ironsource.L2
    public void onBannerLoadSuccess(final R9 adInstance, final C3676k8 adContainer) {
        Intrinsics.checkNotNullParameter(adInstance, "adInstance");
        Intrinsics.checkNotNullParameter(adContainer, "adContainer");
        try {
            this.j.execute(new Runnable() { // from class: com.ironsource.h3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C3618h3.a(this.f$0, adInstance, adContainer);
                }
            });
        } catch (Exception e) {
            a(e);
        }
    }

    @Override // com.ironsource.Gb
    public void start() {
        this.k = new C3691l5();
        this.f.a(new C3723n1.s(this.d.f()), new C3723n1.n(this.d.g().c()), new C3723n1.c(this.b), new C3723n1.b(this.a.getAdId$mediationsdk_release()));
        InterfaceC3669k1.c.a.a().a(this.f);
        a(this.a.getExtraParams());
        long jH = this.d.h();
        InterfaceC3648ig.c cVar = this.i;
        InterfaceC3648ig.b bVar = new InterfaceC3648ig.b();
        bVar.b(jH);
        Unit unit = Unit.INSTANCE;
        InterfaceC3648ig interfaceC3648igA = cVar.a(bVar);
        this.l = interfaceC3648igA;
        if (interfaceC3648igA != null) {
            interfaceC3648igA.a(new a());
        }
        Object objA = this.c.a();
        Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(objA);
        if (thM3025exceptionOrNullimpl != null) {
            Intrinsics.checkNotNull(thM3025exceptionOrNullimpl, "null cannot be cast to non-null type com.unity3d.ironsourceads.internal.error.ISException");
            a(((C3587f8) thM3025exceptionOrNullimpl).a());
            objA = null;
        }
        C3855u2 c3855u2 = (C3855u2) objA;
        if (c3855u2 == null) {
            return;
        }
        InterfaceC3798r1 interfaceC3798r1 = this.f;
        String strB = c3855u2.b();
        if (strB != null) {
            interfaceC3798r1.a(new C3723n1.d(strB));
        }
        JSONObject jSONObjectF = c3855u2.f();
        if (jSONObjectF != null) {
            interfaceC3798r1.a(new C3723n1.m(jSONObjectF));
        }
        String strA = c3855u2.a();
        if (strA != null) {
            interfaceC3798r1.a(new C3723n1.g(strA));
        }
        EnumC3916x9 enumC3916x9G = this.d.g();
        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        C3641i8 c3641i8 = new C3641i8(AdapterUtils.dpToPixels(applicationContext, this.b.getWidth()), AdapterUtils.dpToPixels(applicationContext, this.b.getHeight()), this.b.getSizeDescription());
        Qc qc = new Qc();
        qc.a(this);
        R9 r9A = new S9(this.a.getProviderName$mediationsdk_release().value(), qc).a(enumC3916x9G.b(EnumC3916x9.Bidder)).a(c3641i8).b(this.d.i()).a(this.a.getAdId$mediationsdk_release()).a(MapsKt.plus(new C3847tc().a(), V5.a.a(this.a.getExtraParams()))).a();
        Cc cc = new Cc(c3855u2, this.d.j());
        this.m = new C3599g2(new C3898w9(this.a.getInstanceId(), enumC3916x9G.c(), c3855u2.a()), new com.ironsource.mediationsdk.d(), c3855u2.c());
        InterfaceC3669k1.d.a.c().a(this.f);
        Ac ac = this.e;
        Intrinsics.checkNotNull(r9A);
        ac.a(r9A, cc);
    }
}
