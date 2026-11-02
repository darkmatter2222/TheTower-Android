package com.ironsource;

import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.unity3d.mediation.LevelPlay;
import java.util.List;
import org.json.JSONObject;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public class C2 {
    private final T0 a;
    private final AbstractC3907x0 b;
    private final com.ironsource.mediationsdk.e c;
    private final C3760p2 d;

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[LevelPlay.AdFormat.values().length];
            try {
                iArr[LevelPlay.AdFormat.INTERSTITIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LevelPlay.AdFormat.REWARDED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public static final class b implements C3447a2.d {
        final /* synthetic */ D2 b;

        b(D2 d2) {
            this.b = d2;
        }

        @Override // com.ironsource.C3447a2.d
        public void a(C3447a2 auction) {
            Intrinsics.checkNotNullParameter(auction, "auction");
            C2.this.b(auction, this.b);
        }

        @Override // com.ironsource.C3447a2.d
        public void a(C3447a2 auction, String error) {
            Intrinsics.checkNotNullParameter(auction, "auction");
            Intrinsics.checkNotNullParameter(error, "error");
            C2.this.b(auction, this.b);
        }
    }

    public static final class c implements InterfaceC3526c2 {
        final /* synthetic */ D2 a;
        final /* synthetic */ C3447a2 b;
        final /* synthetic */ A c;

        c(D2 d2, C3447a2 c3447a2, A a) {
            this.a = d2;
            this.b = c3447a2;
            this.c = a;
        }

        @Override // com.ironsource.InterfaceC3526c2
        public void a(int i, String str, int i2, String auctionFallback, long j) {
            Intrinsics.checkNotNullParameter(auctionFallback, "auctionFallback");
            this.a.a(i, str, i2, auctionFallback, j, this.c);
        }

        @Override // com.ironsource.InterfaceC3526c2
        public void a(List<C3927y2> newWaterfall, String auctionId, C3927y2 c3927y2, JSONObject jSONObject, JSONObject jSONObject2, int i, long j, int i2, String str) {
            Intrinsics.checkNotNullParameter(newWaterfall, "newWaterfall");
            Intrinsics.checkNotNullParameter(auctionId, "auctionId");
            this.a.a(newWaterfall, this.b.c(), auctionId, c3927y2, jSONObject, jSONObject2, i, j, i2, str, this.c);
        }
    }

    public C2(T0 adTools, AbstractC3907x0 adUnitData) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        this.a = adTools;
        this.b = adUnitData;
        A2 a2E = adUnitData.e();
        String strD = IronSourceUtils.d();
        Intrinsics.checkNotNullExpressionValue(strD, "getSessionId(...)");
        com.ironsource.mediationsdk.e eVar = new com.ironsource.mediationsdk.e(new com.ironsource.mediationsdk.f(a2E, strD));
        this.c = eVar;
        this.d = new C3760p2(adTools, eVar);
    }

    private final com.ironsource.mediationsdk.h a(C3447a2 c3447a2, int i) {
        com.ironsource.mediationsdk.h hVar = new com.ironsource.mediationsdk.h(this.b.b().a());
        hVar.b(IronSourceUtils.g());
        hVar.a(c3447a2.d().a());
        hVar.a(c3447a2.d().b());
        hVar.a(this.a.h());
        hVar.a(i);
        hVar.a(this.a.k());
        Tf tfG = this.b.b().g();
        hVar.e(tfG != null ? tfG.c() : false);
        hVar.a(this.b.b().d());
        A aC = c3447a2.d().c();
        hVar.d(aC != null ? aC.p() : null);
        InterfaceC3817s2 interfaceC3817s2I = this.a.i();
        if (interfaceC3817s2I != null) {
            interfaceC3817s2I.a(hVar);
        }
        return hVar;
    }

    private final String a() {
        return C3758p0.a(this.a, (String) null, (String) null, 2, (Object) null);
    }

    private final String a(String str) {
        return C3758p0.a(this.a, str, (String) null, 2, (Object) null);
    }

    private final void a(C3447a2 c3447a2, D2 d2) {
        if (c3447a2.f()) {
            c3447a2.a(new b(d2));
        } else {
            b(c3447a2, d2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(C3447a2 c3447a2, D2 d2) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(a("auction waterfallString = " + ((Object) c3447a2.d().d())));
        if (!c3447a2.g()) {
            ironLog.verbose(a("auction failed - no candidates"));
            this.a.f().b().a(1005, "No candidates available for auctioning");
            d2.a(A0.e(this.b.b().a()), "no available ad to load");
        } else {
            this.a.f().b().b(c3447a2.d().d().toString());
            this.c.a(ContextProvider.getInstance().getApplicationContext(), a(c3447a2, this.a.g()), new c(d2, c3447a2, c3447a2.d().c()));
        }
    }

    private final Dd c() {
        int i = a.a[this.b.b().e().ordinal()];
        if (i == 1) {
            return Pb.w.d().C();
        }
        if (i != 2) {
            return null;
        }
        return Pb.w.d().H();
    }

    private final C3710m6 d() {
        Dd ddC = c();
        if (ddC != null) {
            return ddC.a(this.b.b().c());
        }
        return null;
    }

    public void a(D2 completionListener) {
        Intrinsics.checkNotNullParameter(completionListener, "completionListener");
        IronLog.INTERNAL.verbose(a());
        this.a.f().b().a(this.b.b().d());
        a(new C3447a2(this.a, this.b, d()), completionListener);
    }

    public final C3760p2 b() {
        return this.d;
    }
}
