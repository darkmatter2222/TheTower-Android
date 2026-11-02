package com.ironsource;

import android.app.Activity;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.unity3d.ironsourceads.rewarded.RewardedAdInfo;
import java.util.Map;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.ae, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3502ae implements InterfaceC3621h6 {
    private R9 a;
    private InterfaceC3506b0 b;
    private InterfaceC3617h2 c;
    private InterfaceC3798r1 d;
    private InterfaceC3809rc e;
    private InterfaceC3631hg f;
    private Q8 g;
    private Q8.a h;
    private final Map<String, C3502ae> i;
    private RewardedAdInfo j;
    private InterfaceC3520be k;

    public C3502ae(R9 adInstance, InterfaceC3506b0 adNetworkShow, InterfaceC3617h2 auctionDataReporter, InterfaceC3798r1 analytics, InterfaceC3809rc networkDestroyAPI, InterfaceC3631hg threadManager, Q8 sessionDepthService, Q8.a sessionDepthServiceEditor, Map<String, C3502ae> retainer) {
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
        this.j = new RewardedAdInfo(strF, strE);
        C3585f6 c3585f6 = new C3585f6();
        this.a.a(c3585f6);
        c3585f6.a(this);
    }

    public /* synthetic */ C3502ae(R9 r9, InterfaceC3506b0 interfaceC3506b0, InterfaceC3617h2 interfaceC3617h2, InterfaceC3798r1 interfaceC3798r1, InterfaceC3809rc interfaceC3809rc, InterfaceC3631hg interfaceC3631hg, Q8 q8, Q8.a aVar, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(r9, interfaceC3506b0, interfaceC3617h2, interfaceC3798r1, (i & 16) != 0 ? new C3827sc() : interfaceC3809rc, (i & 32) != 0 ? V7.a : interfaceC3631hg, (i & 64) != 0 ? Pb.w.d().s() : q8, (i & 128) != 0 ? Pb.w.a().i() : aVar, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3502ae c3502ae) {
        InterfaceC3669k1.d.a.b().a(c3502ae.d);
        c3502ae.e.a(c3502ae.a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3502ae c3502ae, IronSourceError ironSourceError) {
        InterfaceC3520be interfaceC3520be = c3502ae.k;
        if (interfaceC3520be != null) {
            interfaceC3520be.onRewardedAdFailedToShow(ironSourceError);
        }
    }

    private final void a(final IronSourceError ironSourceError) {
        this.i.remove(this.j.getAdId());
        InterfaceC3669k1.a.a.a(new C3723n1.j(ironSourceError.getErrorCode()), new C3723n1.k(ironSourceError.getErrorMessage())).a(this.d);
        this.f.a(new Runnable() { // from class: com.ironsource.ae$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C3502ae.a(this.f$0, ironSourceError);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(C3502ae c3502ae) {
        InterfaceC3520be interfaceC3520be = c3502ae.k;
        if (interfaceC3520be != null) {
            interfaceC3520be.onRewardedAdClicked();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(C3502ae c3502ae) {
        InterfaceC3520be interfaceC3520be = c3502ae.k;
        if (interfaceC3520be != null) {
            interfaceC3520be.onRewardedAdDismissed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(C3502ae c3502ae) {
        InterfaceC3520be interfaceC3520be = c3502ae.k;
        if (interfaceC3520be != null) {
            interfaceC3520be.onUserEarnedReward();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(C3502ae c3502ae) {
        InterfaceC3520be interfaceC3520be = c3502ae.k;
        if (interfaceC3520be != null) {
            interfaceC3520be.onRewardedAdShown();
        }
    }

    public final void a() {
        InterfaceC3631hg.a(this.f, new Runnable() { // from class: com.ironsource.ae$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3502ae.a(this.f$0);
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

    public final void a(InterfaceC3520be interfaceC3520be) {
        this.k = interfaceC3520be;
    }

    public final void a(RewardedAdInfo rewardedAdInfo) {
        Intrinsics.checkNotNullParameter(rewardedAdInfo, "<set-?>");
        this.j = rewardedAdInfo;
    }

    @Override // com.ironsource.InterfaceC3621h6
    public void a(String str) {
        a(C3948z5.a.c(new IronSourceError(0, str)));
    }

    public final RewardedAdInfo b() {
        return this.j;
    }

    public final InterfaceC3520be c() {
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
        this.f.a(new Runnable() { // from class: com.ironsource.ae$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                C3502ae.b(this.f$0);
            }
        });
    }

    @Override // com.ironsource.InterfaceC3621h6
    public void onAdInstanceDidDismiss() {
        this.i.remove(this.j.getAdId());
        InterfaceC3669k1.a.a.a(new InterfaceC3741o1[0]).a(this.d);
        this.f.a(new Runnable() { // from class: com.ironsource.ae$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                C3502ae.c(this.f$0);
            }
        });
    }

    @Override // com.ironsource.InterfaceC3621h6
    public void onAdInstanceDidReward(String str, int i) {
        C3723n1.u uVar = new C3723n1.u("Virtual Item");
        C3723n1.t tVar = new C3723n1.t(1);
        C3723n1.q qVar = new C3723n1.q("DefaultRewardedVideo");
        String strA = IronSourceUtils.a(System.currentTimeMillis(), this.a.g());
        Intrinsics.checkNotNullExpressionValue(strA, "getTransId(...)");
        InterfaceC3669k1.a.a.c(uVar, tVar, qVar, new C3723n1.y(strA)).a(this.d);
        this.f.a(new Runnable() { // from class: com.ironsource.ae$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                C3502ae.d(this.f$0);
            }
        });
    }

    @Override // com.ironsource.InterfaceC3621h6
    public void onAdInstanceDidShow() {
        Q8 q8 = this.g;
        IronSource.a aVar = IronSource.a.REWARDED_VIDEO;
        InterfaceC3669k1.a.a.b(new C3723n1.w(q8.a(aVar))).a(this.d);
        this.h.b(aVar);
        this.c.b("onAdInstanceDidShow");
        this.f.a(new Runnable() { // from class: com.ironsource.ae$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                C3502ae.e(this.f$0);
            }
        });
    }
}
