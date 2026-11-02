package com.ironsource;

import android.app.Activity;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.ironsourceads.interstitial.InterstitialAdInfo;
import java.util.Map;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class D9 implements InterfaceC3621h6 {
    private R9 a;
    private InterfaceC3506b0 b;
    private InterfaceC3617h2 c;
    private InterfaceC3798r1 d;
    private InterfaceC3809rc e;
    private InterfaceC3631hg f;
    private Q8 g;
    private Q8.a h;
    private final Map<String, D9> i;
    private InterstitialAdInfo j;
    private E9 k;

    public D9(R9 adInstance, InterfaceC3506b0 adNetworkShow, InterfaceC3617h2 auctionDataReporter, InterfaceC3798r1 analytics, InterfaceC3809rc networkDestroyAPI, InterfaceC3631hg threadManager, Q8 sessionDepthService, Q8.a sessionDepthServiceEditor, Map<String, D9> retainer) {
        Intrinsics.checkNotNullParameter(adInstance, "adInstance");
        Intrinsics.checkNotNullParameter(adNetworkShow, "adNetworkShow");
        Intrinsics.checkNotNullParameter(auctionDataReporter, "auctionDataReporter");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(networkDestroyAPI, "networkDestroyAPI");
        Intrinsics.checkNotNullParameter(threadManager, "threadManager");
        Intrinsics.checkNotNullParameter(sessionDepthService, "sessionDepthService");
        Intrinsics.checkNotNullParameter(sessionDepthServiceEditor, "sessionDepthServiceEditor");
        Intrinsics.checkNotNullParameter(retainer, "retainer");
        this.a = adInstance;
        this.b = adNetworkShow;
        this.c = auctionDataReporter;
        this.d = analytics;
        this.e = networkDestroyAPI;
        this.f = threadManager;
        this.g = sessionDepthService;
        this.h = sessionDepthServiceEditor;
        this.i = retainer;
        String strF = adInstance.f();
        Intrinsics.checkNotNullExpressionValue(strF, "getInstanceId(...)");
        String strE = this.a.e();
        Intrinsics.checkNotNullExpressionValue(strE, "getId(...)");
        this.j = new InterstitialAdInfo(strF, strE);
        C3585f6 c3585f6 = new C3585f6();
        this.a.a(c3585f6);
        c3585f6.a(this);
    }

    public /* synthetic */ D9(R9 r9, InterfaceC3506b0 interfaceC3506b0, InterfaceC3617h2 interfaceC3617h2, InterfaceC3798r1 interfaceC3798r1, InterfaceC3809rc interfaceC3809rc, InterfaceC3631hg interfaceC3631hg, Q8 q8, Q8.a aVar, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(r9, interfaceC3506b0, interfaceC3617h2, interfaceC3798r1, (i & 16) != 0 ? new C3827sc() : interfaceC3809rc, (i & 32) != 0 ? V7.a : interfaceC3631hg, (i & 64) != 0 ? Pb.w.d().s() : q8, (i & 128) != 0 ? Pb.w.a().i() : aVar, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(D9 d9) {
        InterfaceC3669k1.d.a.b().a(d9.d);
        d9.e.a(d9.a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(D9 d9, IronSourceError ironSourceError) {
        E9 e9 = d9.k;
        if (e9 != null) {
            e9.onAdInstanceDidFailedToShow(ironSourceError);
        }
    }

    private final void a(final IronSourceError ironSourceError) {
        this.i.remove(this.j.getAdId());
        InterfaceC3669k1.a.a.a(new C3723n1.j(ironSourceError.getErrorCode()), new C3723n1.k(ironSourceError.getErrorMessage())).a(this.d);
        this.f.a(new Runnable() { // from class: com.ironsource.D9$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                D9.a(this.f$0, ironSourceError);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(D9 d9) {
        E9 e9 = d9.k;
        if (e9 != null) {
            e9.onAdInstanceDidClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(D9 d9) {
        E9 e9 = d9.k;
        if (e9 != null) {
            e9.onAdInstanceDidDismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(D9 d9) {
        E9 e9 = d9.k;
        if (e9 != null) {
            e9.onAdInstanceDidShow();
        }
    }

    public final void a() {
        InterfaceC3631hg.a(this.f, new Runnable() { // from class: com.ironsource.D9$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                D9.a(this.f$0);
            }
        }, 0L, 2, null);
    }

    public final void a(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.i.put(this.j.getAdId(), this);
        if (!this.b.a(this.a)) {
            a(C3948z5.a.t());
        } else {
            InterfaceC3669k1.a.a.d(new InterfaceC3741o1[0]).a(this.d);
            this.b.a(activity, this.a);
        }
    }

    public final void a(E9 e9) {
        this.k = e9;
    }

    public final void a(InterstitialAdInfo interstitialAdInfo) {
        Intrinsics.checkNotNullParameter(interstitialAdInfo, "<set-?>");
        this.j = interstitialAdInfo;
    }

    @Override // com.ironsource.InterfaceC3621h6
    public void a(String str) {
        a(C3948z5.a.c(new IronSourceError(0, str)));
    }

    public final InterstitialAdInfo b() {
        return this.j;
    }

    public final E9 c() {
        return this.k;
    }

    public final boolean d() {
        boolean zA = this.b.a(this.a);
        InterfaceC3669k1.a.a.a(zA).a(this.d);
        return zA;
    }

    protected final void finalize() {
        a();
    }

    @Override // com.ironsource.InterfaceC3621h6
    public void onAdInstanceDidBecomeVisible() {
        InterfaceC3669k1.a.a.f(new InterfaceC3741o1[0]).a(this.d);
    }

    @Override // com.ironsource.InterfaceC3621h6
    public void onAdInstanceDidClick() {
        InterfaceC3669k1.a.a.a().a(this.d);
        this.f.a(new Runnable() { // from class: com.ironsource.D9$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                D9.b(this.f$0);
            }
        });
    }

    @Override // com.ironsource.InterfaceC3621h6
    public void onAdInstanceDidDismiss() {
        this.i.remove(this.j.getAdId());
        InterfaceC3669k1.a.a.a(new InterfaceC3741o1[0]).a(this.d);
        this.f.a(new Runnable() { // from class: com.ironsource.D9$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                D9.c(this.f$0);
            }
        });
    }

    @Override // com.ironsource.InterfaceC3621h6
    public void onAdInstanceDidReward(String str, int i) {
    }

    @Override // com.ironsource.InterfaceC3621h6
    public void onAdInstanceDidShow() {
        Q8 q8 = this.g;
        IronSource.a aVar = IronSource.a.INTERSTITIAL;
        InterfaceC3669k1.a.a.b(new C3723n1.w(q8.a(aVar))).a(this.d);
        this.h.b(aVar);
        this.c.b("onAdInstanceDidShow");
        this.f.a(new Runnable() { // from class: com.ironsource.D9$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                D9.d(this.f$0);
            }
        });
    }
}
