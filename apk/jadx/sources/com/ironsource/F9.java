package com.ironsource;

import android.os.Bundle;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.unity3d.ironsourceads.interstitial.InterstitialAd;
import com.unity3d.ironsourceads.interstitial.InterstitialAdRequest;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;
import p005kotlin.Result;
import p005kotlin.Unit;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class F9 implements Gb, InterfaceC3603g6 {
    private final InterstitialAdRequest a;
    private final Hb b;
    private final U<InterstitialAd> c;
    private final InterfaceC3909x2 d;
    private final Ac e;
    private final InterfaceC3798r1 f;
    private final InterfaceC3542d0<InterstitialAd> g;
    private final InterfaceC3648ig.c h;
    private final Executor i;
    private C3691l5 j;
    private InterfaceC3648ig k;
    private C3599g2 l;
    private boolean m;

    public static final class a implements InterfaceC3648ig.a {
        a() {
        }

        @Override // com.ironsource.InterfaceC3648ig.a
        public void a() {
            F9.this.a(C3948z5.a.s());
        }
    }

    public F9(InterstitialAdRequest adRequest, Hb loadTaskConfig, U<InterstitialAd> adLoadTaskListener, InterfaceC3909x2 auctionResponseFetcher, Ac networkLoadApi, InterfaceC3798r1 analytics, InterfaceC3542d0<InterstitialAd> adObjectFactory, InterfaceC3648ig.c timerFactory, Executor taskFinishedExecutor) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(loadTaskConfig, "loadTaskConfig");
        Intrinsics.checkNotNullParameter(adLoadTaskListener, "adLoadTaskListener");
        Intrinsics.checkNotNullParameter(auctionResponseFetcher, "auctionResponseFetcher");
        Intrinsics.checkNotNullParameter(networkLoadApi, "networkLoadApi");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(adObjectFactory, "adObjectFactory");
        Intrinsics.checkNotNullParameter(timerFactory, "timerFactory");
        Intrinsics.checkNotNullParameter(taskFinishedExecutor, "taskFinishedExecutor");
        this.a = adRequest;
        this.b = loadTaskConfig;
        this.c = adLoadTaskListener;
        this.d = auctionResponseFetcher;
        this.e = networkLoadApi;
        this.f = analytics;
        this.g = adObjectFactory;
        this.h = timerFactory;
        this.i = taskFinishedExecutor;
    }

    public /* synthetic */ F9(InterstitialAdRequest interstitialAdRequest, Hb hb, U u, InterfaceC3909x2 interfaceC3909x2, Ac ac, InterfaceC3798r1 interfaceC3798r1, InterfaceC3542d0 interfaceC3542d0, InterfaceC3648ig.c cVar, Executor executor, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(interstitialAdRequest, hb, u, interfaceC3909x2, ac, interfaceC3798r1, interfaceC3542d0, (i & 128) != 0 ? new InterfaceC3648ig.d() : cVar, (i & 256) != 0 ? V7.a.e() : executor);
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
    public static final void a(F9 f9, R9 r9) {
        if (f9.m) {
            return;
        }
        f9.m = true;
        InterfaceC3648ig interfaceC3648ig = f9.k;
        if (interfaceC3648ig != null) {
            interfaceC3648ig.cancel();
        }
        C3691l5 c3691l5 = f9.j;
        if (c3691l5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("taskStartedTime");
            c3691l5 = null;
        }
        InterfaceC3669k1.c.a.a(new C3723n1.f(C3691l5.a(c3691l5))).a(f9.f);
        C3599g2 c3599g2 = f9.l;
        if (c3599g2 != null) {
            c3599g2.c("onAdInstanceDidLoad");
        }
        InterfaceC3542d0<InterstitialAd> interfaceC3542d0 = f9.g;
        C3599g2 c3599g3 = f9.l;
        Intrinsics.checkNotNull(c3599g3);
        f9.c.a(interfaceC3542d0.a(r9, c3599g3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(F9 f9, IronSourceError ironSourceError) {
        if (f9.m) {
            return;
        }
        f9.m = true;
        InterfaceC3648ig interfaceC3648ig = f9.k;
        if (interfaceC3648ig != null) {
            interfaceC3648ig.cancel();
        }
        InterfaceC3669k1.c.a aVar = InterfaceC3669k1.c.a;
        C3723n1.j jVar = new C3723n1.j(ironSourceError.getErrorCode());
        C3723n1.k kVar = new C3723n1.k(ironSourceError.getErrorMessage());
        C3691l5 c3691l5 = f9.j;
        if (c3691l5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("taskStartedTime");
            c3691l5 = null;
        }
        aVar.a(jVar, kVar, new C3723n1.f(C3691l5.a(c3691l5))).a(f9.f);
        C3599g2 c3599g2 = f9.l;
        if (c3599g2 != null) {
            c3599g2.a("onAdInstanceDidFailToLoad");
        }
        f9.c.a(ironSourceError);
    }

    private final void a(Exception exc) {
        IronSourceError ironSourceErrorBuildLoadFailedError = ErrorBuilder.buildLoadFailedError(exc.getMessage());
        InterfaceC3669k1.d.a.a(new C3723n1.k(ironSourceErrorBuildLoadFailedError.getErrorMessage())).a(this.f);
        IronLog.CALLBACK.error(ironSourceErrorBuildLoadFailedError.getErrorMessage());
    }

    @Override // com.ironsource.InterfaceC3603g6
    public void a(final R9 adInstance) {
        Intrinsics.checkNotNullParameter(adInstance, "adInstance");
        try {
            this.i.execute(new Runnable() { // from class: com.ironsource.F9$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    F9.a(this.f$0, adInstance);
                }
            });
        } catch (Exception e) {
            a(e);
        }
    }

    public final void a(final IronSourceError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        try {
            this.i.execute(new Runnable() { // from class: com.ironsource.F9$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    F9.a(this.f$0, error);
                }
            });
        } catch (Exception e) {
            a(e);
        }
    }

    @Override // com.ironsource.InterfaceC3603g6
    public void a(String description) {
        Intrinsics.checkNotNullParameter(description, "description");
        a(C3948z5.a.c(description));
    }

    @Override // com.ironsource.Gb
    public void start() {
        this.j = new C3691l5();
        this.f.a(new C3723n1.s(this.b.f()), new C3723n1.n(this.b.g().c()), new C3723n1.b(this.a.getAdId$mediationsdk_release()));
        InterfaceC3669k1.c.a.a().a(this.f);
        a(this.a.getExtraParams());
        long jH = this.b.h();
        InterfaceC3648ig.c cVar = this.h;
        InterfaceC3648ig.b bVar = new InterfaceC3648ig.b();
        bVar.b(jH);
        Unit unit = Unit.INSTANCE;
        InterfaceC3648ig interfaceC3648igA = cVar.a(bVar);
        this.k = interfaceC3648igA;
        if (interfaceC3648igA != null) {
            interfaceC3648igA.a(new a());
        }
        Object objA = this.d.a();
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
        EnumC3916x9 enumC3916x9G = this.b.g();
        C3585f6 c3585f6 = new C3585f6();
        c3585f6.a(this);
        R9 r9A = new S9(this.a.getProviderName$mediationsdk_release().value(), c3585f6).a(enumC3916x9G.b(EnumC3916x9.Bidder)).b(this.b.i()).a(this.a.getAdId$mediationsdk_release()).a(MapsKt.plus(new C3847tc().a(), V5.a.a(this.a.getExtraParams()))).a();
        InterfaceC3798r1 interfaceC3798r2 = this.f;
        String strE = r9A.e();
        Intrinsics.checkNotNullExpressionValue(strE, "getId(...)");
        interfaceC3798r2.a(new C3723n1.b(strE));
        Cc cc = new Cc(c3855u2, this.b.j());
        this.l = new C3599g2(new C3898w9(this.a.getInstanceId(), enumC3916x9G.c(), c3855u2.a()), new com.ironsource.mediationsdk.d(), c3855u2.c());
        InterfaceC3669k1.d.a.c().a(this.f);
        Ac ac = this.e;
        Intrinsics.checkNotNull(r9A);
        ac.a(r9A, cc);
    }
}
