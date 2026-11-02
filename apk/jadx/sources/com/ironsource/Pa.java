package com.ironsource;

import com.ironsource.adapters.applovin.AppLovinConstants;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdInfo;
import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.Unit;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class Pa implements Sa {
    private final Ja a;
    private final S2 b;
    private final S2 c;
    private final long d;
    private final boolean e;
    private InterfaceC3791qb<LevelPlayAdInfo> f;
    private Ff.a g;

    public Pa(Ja strategy, S2 currentAdUnit, S2 reloadingAdUnit, long j, boolean z) {
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        Intrinsics.checkNotNullParameter(currentAdUnit, "currentAdUnit");
        Intrinsics.checkNotNullParameter(reloadingAdUnit, "reloadingAdUnit");
        this.a = strategy;
        this.b = currentAdUnit;
        this.c = reloadingAdUnit;
        this.d = j;
        this.e = z;
        g();
    }

    public /* synthetic */ Pa(Ja ja, S2 s2, S2 s3, long j, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(ja, s2, s3, j, (i & 16) != 0 ? true : z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a(Pa weakScheduleOnLevelPlay) {
        Intrinsics.checkNotNullParameter(weakScheduleOnLevelPlay, "$this$weakScheduleOnLevelPlay");
        weakScheduleOnLevelPlay.e();
        return Unit.INSTANCE;
    }

    private final void a(IronSourceError ironSourceError) {
        this.a.a(ironSourceError, this.b, (AbstractC3707m3) new AbstractC3707m3.c(this.a.o().a() - this.d, AbstractC3707m3.d.g.a), this.e, false, Long.valueOf(this.d));
    }

    private final void a(InterfaceC3791qb<LevelPlayAdInfo> interfaceC3791qb) {
        if (this.f == null) {
            this.f = interfaceC3791qb;
            return;
        }
        this.a.a("Received excessive load " + Qa.b(interfaceC3791qb) + " while reloading");
    }

    private final void a(LevelPlayAdInfo levelPlayAdInfo) {
        long jA = this.a.o().a() - this.d;
        this.a.a(new C3853u0(this.c, levelPlayAdInfo), this.c, this.b, (AbstractC3707m3) new AbstractC3707m3.c(jA, AbstractC3707m3.d.h.a), false, Long.valueOf(this.d));
    }

    private final void e() {
        InterfaceC3791qb<LevelPlayAdInfo> interfaceC3791qb = this.f;
        if (interfaceC3791qb == null) {
            Ja ja = this.a;
            ja.a((Sa) new Ra(ja, this.b, this.c, this.d, this.e));
        } else if (interfaceC3791qb instanceof InterfaceC3791qb.b) {
            a((LevelPlayAdInfo) ((InterfaceC3791qb.b) interfaceC3791qb).b());
        } else {
            if (!(interfaceC3791qb instanceof InterfaceC3791qb.a)) {
                throw new NoWhenBranchMatchedException();
            }
            a(((InterfaceC3791qb.a) interfaceC3791qb).b());
        }
    }

    private final void g() {
        Ff ffN = this.a.n();
        Duration.Companion companion = Duration.INSTANCE;
        this.g = ffN.a(this, DurationKt.toDuration(this.a.k(), DurationUnit.MILLISECONDS), new Function1() { // from class: com.ironsource.Pa$$ExternalSyntheticLambda0
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Pa.a((Pa) obj);
            }
        });
    }

    @Override // com.ironsource.L0
    public void a(C3853u0 adUnitCallback) {
        Intrinsics.checkNotNullParameter(adUnitCallback, "adUnitCallback");
        LevelPlayAdInfo levelPlayAdInfoC = adUnitCallback.c();
        if (levelPlayAdInfoC != null) {
            a(new InterfaceC3791qb.b(levelPlayAdInfoC));
        } else {
            a(new InterfaceC3791qb.a(new IronSourceError(0, "Missing ad info")));
        }
    }

    @Override // com.ironsource.Sa
    public void b() {
        this.a.a("Loading an ad while reloading");
    }

    @Override // com.ironsource.L0
    public void b(IronSourceError ironSourceError) {
        if (ironSourceError == null) {
            ironSourceError = new IronSourceError(0, AppLovinConstants.Logs.ERROR_UNKNOWN);
        }
        a(new InterfaceC3791qb.a(ironSourceError));
    }

    @Override // com.ironsource.Sa
    public void c() {
        Ff.a aVar = this.g;
        if (aVar != null) {
            aVar.a();
        }
        this.b.a(true);
        this.c.a(true);
        Ja ja = this.a;
        ja.a((Sa) new La(ja));
    }

    @Override // com.ironsource.Sa
    public void d() {
        Ff.a aVar = this.g;
        if (aVar != null) {
            aVar.a();
        }
        Ja ja = this.a;
        ja.a((Sa) new Oa(ja, this.b));
    }

    @Override // com.ironsource.Sa
    public void f() {
        Ja ja = this.a;
        ja.a((Sa) new Pa(ja, this.b, this.c, ja.o().a(), false, 16, null));
    }
}
