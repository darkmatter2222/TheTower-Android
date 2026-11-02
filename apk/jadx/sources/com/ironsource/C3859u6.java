package com.ironsource;

import android.app.Activity;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.LevelPlayAdInfo;
import com.unity3d.mediation.rewarded.LevelPlayReward;
import p005kotlin.Unit;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.FunctionReferenceImpl;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: renamed from: com.ironsource.u6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3859u6 implements InterfaceC3728n6 {
    private final Pb a;
    private final T0 b;
    private final AbstractC3907x0 c;
    private InterfaceC3913x6 d;
    private final C3551d9 e;
    private final Function2<B, H, C3710m6> f;
    private final Ff g;
    private final InterfaceC3839t4 h;
    private C3746o6 i;
    private b j;
    private a k;
    private final Hg l;
    private Ff.a m;
    private Long n;

    /* JADX INFO: renamed from: com.ironsource.u6$a */
    public interface a {
        void a(C3859u6 c3859u6, IronSourceError ironSourceError);

        void a(C3859u6 c3859u6, LevelPlayAdInfo levelPlayAdInfo);
    }

    /* JADX INFO: renamed from: com.ironsource.u6$b */
    public interface b {
        void a(C3859u6 c3859u6);

        void b(C3859u6 c3859u6, IronSourceError ironSourceError);

        void b(C3859u6 c3859u6, LevelPlayAdInfo levelPlayAdInfo);

        void c(C3859u6 c3859u6, LevelPlayAdInfo levelPlayAdInfo);
    }

    /* JADX INFO: renamed from: com.ironsource.u6$c */
    public /* synthetic */ class c {
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

    /* JADX INFO: renamed from: com.ironsource.u6$d */
    public static final class d implements Pg {
        d() {
        }

        @Override // com.ironsource.Pg
        public void a(int i, String errorReason) {
            Long lValueOf;
            Intrinsics.checkNotNullParameter(errorReason, "errorReason");
            Long l = C3859u6.this.n;
            if (l != null) {
                lValueOf = Long.valueOf(C3859u6.this.h.a() - l.longValue());
            } else {
                lValueOf = null;
            }
            C3859u6.this.b.f().e().a(lValueOf != null ? lValueOf.longValue() : 0L, i, errorReason, C3859u6.this.c.v());
            b bVar = C3859u6.this.j;
            if (bVar != null) {
                bVar.b(C3859u6.this, new IronSourceError(i, errorReason));
            }
        }

        @Override // com.ironsource.Pg
        public void a(A instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            C3859u6.this.b.f().a().e(C3859u6.this.c());
            C3859u6.this.h();
            b bVar = C3859u6.this.j;
            if (bVar != null) {
                bVar.c(C3859u6.this, instance.e());
            }
        }

        @Override // com.ironsource.Pg
        public void b(A instance) {
            Long lValueOf;
            Intrinsics.checkNotNullParameter(instance, "instance");
            Long l = C3859u6.this.n;
            if (l != null) {
                lValueOf = Long.valueOf(C3859u6.this.h.a() - l.longValue());
            } else {
                lValueOf = null;
            }
            C3859u6.this.b.f().e().a(lValueOf != null ? lValueOf.longValue() : 0L, C3859u6.this.c.v());
            C3859u6.this.h();
            b bVar = C3859u6.this.j;
            if (bVar != null) {
                bVar.b(C3859u6.this, instance.e());
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.u6$e */
    /* synthetic */ class e extends FunctionReferenceImpl implements Function2<B, H, C3710m6> {
        e(Object obj) {
            super(2, obj, C3859u6.class, "createAdInstance", "createAdInstance(Lcom/unity3d/mediation/internal/ads/controllers/adunits/adinstances/AdInstanceData;Lcom/unity3d/mediation/internal/ads/controllers/adunits/adinstances/AdInstancePayload;)Lcom/unity3d/mediation/internal/ads/controllers/adunits/adinstances/FullscreenAdInstance;", 0);
        }

        @Override // p005kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final C3710m6 invoke(B p0, H p1) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            Intrinsics.checkNotNullParameter(p1, "p1");
            return ((C3859u6) this.receiver).a(p0, p1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C3859u6(Pb mediationServices, T0 adUnitTools, AbstractC3907x0 adUnitData, InterfaceC3913x6 fullscreenListener, C3551d9 impressionDataListenerHolder, Jg jg, Function2<? super B, ? super H, C3710m6> function2, Ff taskScheduler, InterfaceC3839t4 currentTimeProvider) {
        Intrinsics.checkNotNullParameter(mediationServices, "mediationServices");
        Intrinsics.checkNotNullParameter(adUnitTools, "adUnitTools");
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        Intrinsics.checkNotNullParameter(fullscreenListener, "fullscreenListener");
        Intrinsics.checkNotNullParameter(impressionDataListenerHolder, "impressionDataListenerHolder");
        Intrinsics.checkNotNullParameter(taskScheduler, "taskScheduler");
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        this.a = mediationServices;
        this.b = adUnitTools;
        this.c = adUnitData;
        this.d = fullscreenListener;
        this.e = impressionDataListenerHolder;
        this.f = function2;
        this.g = taskScheduler;
        this.h = currentTimeProvider;
        this.l = a(jg);
    }

    public /* synthetic */ C3859u6(Pb pb, T0 t0, AbstractC3907x0 abstractC3907x0, InterfaceC3913x6 interfaceC3913x6, C3551d9 c3551d9, Jg jg, Function2 function2, Ff ff, InterfaceC3839t4 interfaceC3839t4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(pb, t0, abstractC3907x0, interfaceC3913x6, c3551d9, (i & 32) != 0 ? null : jg, (i & 64) != 0 ? null : function2, (i & 128) != 0 ? new Ef(null, null, null, 7, null) : ff, (i & 256) != 0 ? new InterfaceC3839t4.a() : interfaceC3839t4);
    }

    private final Hg a(Jg jg) {
        Pg pgA = a();
        if (jg != null) {
            return jg.a(pgA, this);
        }
        return new Hg(this.b, this.c, Pb.w.c().h().x(), pgA, f(), this);
    }

    private final Pg a() {
        return new d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final C3710m6 a(B b2, H h) {
        return new C3710m6(new T0(this.b, E0.b.PROVIDER), b2, h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a(long j, C3859u6 weakScheduleOnLevelPlay) {
        Intrinsics.checkNotNullParameter(weakScheduleOnLevelPlay, "$this$weakScheduleOnLevelPlay");
        b bVar = weakScheduleOnLevelPlay.j;
        if (bVar != null) {
            bVar.a(weakScheduleOnLevelPlay);
        }
        weakScheduleOnLevelPlay.l.a(new Z4.a(j));
        return Unit.INSTANCE;
    }

    private final void a(Pd pd) {
        if (pd == Pd.CAN_RECOVER || pd == Pd.NO_LOADED_ADS) {
            this.b.f().h().a(pd);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final A b(C3859u6 c3859u6, B instanceData, H adInstancePayload) {
        Intrinsics.checkNotNullParameter(instanceData, "instanceData");
        Intrinsics.checkNotNullParameter(adInstancePayload, "adInstancePayload");
        Function2 eVar = c3859u6.f;
        if (eVar == null) {
            eVar = new e(c3859u6);
        }
        C3710m6 c3710m6 = (C3710m6) eVar.invoke(instanceData, adInstancePayload);
        c3710m6.a(c3859u6);
        return c3710m6;
    }

    private final LevelPlay.AdFormat b() {
        return this.c.b().e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String c() {
        return this.c.m();
    }

    private final Dd f() {
        int i = c.a[b().ordinal()];
        if (i == 1) {
            return this.a.C();
        }
        if (i != 2) {
            return null;
        }
        return this.a.H();
    }

    private final InterfaceC3791qb<Unit> g() {
        if (!this.l.g()) {
            return new InterfaceC3791qb.a(new IronSourceError(509, "show called while ad unit is not ready to show"));
        }
        if (this.a.p().a(c(), b()).d()) {
            return new InterfaceC3791qb.a(new IronSourceError(IronSourceError.ERROR_PLACEMENT_CAPPED, "placement " + c() + " is capped"));
        }
        if (!this.a.g().a(this.c.b().c()).d()) {
            return new InterfaceC3791qb.b(Unit.INSTANCE);
        }
        return new InterfaceC3791qb.a(new IronSourceError(IronSourceError.ERROR_AD_UNIT_CAPPED, "adUnitId " + this.c.b().c() + " is capped"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h() {
        Ff.a aVar = this.m;
        if (aVar != null) {
            aVar.a();
        }
        final long jB = this.b.b(b());
        IronLog.INTERNAL.verbose(C3758p0.a(this.b, "scheduling load expiration for " + b() + " in " + jB + " ms", (String) null, 2, (Object) null));
        Ff ff = this.g;
        Duration.Companion companion = Duration.INSTANCE;
        this.m = ff.a(this, DurationKt.toDuration(jB, DurationUnit.MILLISECONDS), new Function1() { // from class: com.ironsource.u6$$ExternalSyntheticLambda1
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return C3859u6.a(jB, (C3859u6) obj);
            }
        });
    }

    private final void i() {
        String strC = c();
        if (strC.length() > 0) {
            this.a.b().b(strC, b());
            L3 l3A = this.a.p().a(strC, b());
            if (l3A.d()) {
                this.b.f().a().b(strC, l3A.e());
            }
        }
    }

    public final void a(Activity activity, a displayListener) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(displayListener, "displayListener");
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(C3758p0.a(this.b, (String) null, (String) null, 3, (Object) null));
        this.k = displayListener;
        this.b.f().a().a(activity, c());
        InterfaceC3791qb<Unit> interfaceC3791qbG = g();
        if (interfaceC3791qbG instanceof InterfaceC3791qb.a) {
            IronSourceError ironSourceErrorB = ((InterfaceC3791qb.a) interfaceC3791qbG).b();
            ironLog.verbose(C3758p0.a(this.b, ironSourceErrorB.getErrorMessage(), (String) null, 2, (Object) null));
            this.b.f().a().a(c(), ironSourceErrorB.getErrorCode(), ironSourceErrorB.getErrorMessage(), this.l.f());
            displayListener.a(this, ironSourceErrorB);
            return;
        }
        Ff.a aVar = this.m;
        if (aVar != null) {
            aVar.a();
        }
        C3746o6 c3746o6 = new C3746o6(activity);
        this.i = c3746o6;
        this.l.a((J) c3746o6, false);
    }

    @Override // com.ironsource.E
    public void a(A instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        this.b.f().a().a(c());
        this.d.e();
    }

    @Override // com.ironsource.E
    public void a(A instance, IronSourceError error) {
        Dd ddF;
        Intrinsics.checkNotNullParameter(instance, "instance");
        Intrinsics.checkNotNullParameter(error, "error");
        IronLog.INTERNAL.verbose(C3758p0.a(this.b, error.toString(), (String) null, 2, (Object) null));
        if (instance.A() && (ddF = f()) != null) {
            ddF.a(this.c.b().c(), true);
        }
        C3746o6 c3746o6 = this.i;
        Pd pdF = this.l.f();
        a(pdF);
        if (pdF == Pd.CAN_RECOVER && c3746o6 != null) {
            this.l.a((J) c3746o6, true);
            return;
        }
        this.l.b();
        this.i = null;
        this.b.f().a().a(c(), error.getErrorCode(), error.getErrorMessage(), pdF);
        a aVar = this.k;
        if (aVar != null) {
            aVar.a(this, error);
        }
    }

    @Override // com.ironsource.InterfaceC3728n6
    public void a(C3710m6 fullscreenInstance) {
        Intrinsics.checkNotNullParameter(fullscreenInstance, "fullscreenInstance");
        this.l.b();
        this.i = null;
        a aVar = this.k;
        if (aVar != null) {
            aVar.a(this, fullscreenInstance.e());
        }
        i();
        this.a.l().b(this.c.b().c());
    }

    @Override // com.ironsource.InterfaceC3728n6
    public void a(C3710m6 fullscreenInstance, LevelPlayReward reward) {
        Intrinsics.checkNotNullParameter(fullscreenInstance, "fullscreenInstance");
        Intrinsics.checkNotNullParameter(reward, "reward");
        IronLog.INTERNAL.verbose(C3758p0.a(this.b, fullscreenInstance.q(), (String) null, 2, (Object) null));
        this.d.a(reward);
    }

    public final void a(b loadListener) {
        Intrinsics.checkNotNullParameter(loadListener, "loadListener");
        IronLog.INTERNAL.verbose(C3758p0.a(this.b, (String) null, (String) null, 3, (Object) null));
        this.j = loadListener;
        this.n = Long.valueOf(this.h.a());
        this.b.a(new C3815s0(this.c.b()));
        D d2 = new D() { // from class: com.ironsource.u6$$ExternalSyntheticLambda0
            @Override // com.ironsource.D
            public final A a(B b2, H h) {
                return C3859u6.b(this.f$0, b2, h);
            }
        };
        this.b.f().e().a(this.c.v());
        this.l.a(d2);
    }

    public final void a(InterfaceC3913x6 interfaceC3913x6) {
        Intrinsics.checkNotNullParameter(interfaceC3913x6, "<set-?>");
        this.d = interfaceC3913x6;
    }

    @Override // com.ironsource.E
    public void b(A instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        this.l.d(instance);
        this.e.a(instance.e());
        this.b.f().a().g(c());
        this.a.i().b(com.unity3d.mediation.a.a(b()));
    }

    @Override // com.ironsource.InterfaceC3728n6
    public void b(C3710m6 fullscreenInstance) {
        Dd ddF;
        Intrinsics.checkNotNullParameter(fullscreenInstance, "fullscreenInstance");
        if (fullscreenInstance.A() && (ddF = f()) != null) {
            ddF.a(this.c.b().c(), true);
        }
        this.b.f().a().b(c());
        this.l.b();
        this.i = null;
        this.d.onClosed();
    }

    public final InterfaceC3913x6 d() {
        return this.d;
    }

    public final LevelPlayAdInfo e() {
        A aD = this.l.d();
        if (aD != null) {
            return aD.e();
        }
        return null;
    }

    protected final void finalize() {
        IronLog.INTERNAL.verbose(C3758p0.a(this.b, "finalizing ad unit", (String) null, 2, (Object) null));
        Ff.a aVar = this.m;
        if (aVar != null) {
            aVar.a();
        }
    }
}
