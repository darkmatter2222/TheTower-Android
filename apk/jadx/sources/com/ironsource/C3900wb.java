package com.ironsource;

import android.content.Context;
import com.ironsource.environment.ContextProvider;
import com.ironsource.environment.thread.IronSourceThreadManager;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.LevelPlayConfiguration;
import com.unity3d.mediation.LevelPlayInitError;
import com.unity3d.mediation.LevelPlayInitListener;
import com.unity3d.mediation.LevelPlayInitRequest;
import com.unity3d.mediation.impression.LevelPlayImpressionDataListener;
import com.unity3d.mediation.segment.LevelPlaySegment;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.Pair;
import p005kotlin.Unit;
import p005kotlin.collections.ArraysKt;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: renamed from: com.ironsource.wb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3900wb {
    public static final C3900wb a = new C3900wb();
    private static final C3936yb b = new C3936yb();

    /* JADX INFO: renamed from: com.ironsource.wb$a */
    public static final class a implements InterfaceC3921xe {
        final /* synthetic */ LevelPlayInitRequest a;
        final /* synthetic */ Context b;
        final /* synthetic */ C3691l5 c;
        final /* synthetic */ LevelPlayInitListener d;

        a(LevelPlayInitRequest levelPlayInitRequest, Context context, C3691l5 c3691l5, LevelPlayInitListener levelPlayInitListener) {
            this.a = levelPlayInitRequest;
            this.b = context;
            this.c = c3691l5;
            this.d = levelPlayInitListener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(LevelPlayInitListener levelPlayInitListener, C3691l5 c3691l5, C3829se c3829se) {
            C3900wb.a.a(levelPlayInitListener, c3691l5, c3829se);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(LevelPlayInitRequest levelPlayInitRequest, C3794qe c3794qe, Context context, C3691l5 c3691l5, LevelPlayInitListener levelPlayInitListener) {
            C3900wb.a.a(levelPlayInitRequest, c3794qe, context, c3691l5, levelPlayInitListener);
        }

        @Override // com.ironsource.InterfaceC3921xe
        public void a(final C3794qe sdkConfig) {
            Intrinsics.checkNotNullParameter(sdkConfig, "sdkConfig");
            C3936yb c3936yb = C3900wb.b;
            final LevelPlayInitRequest levelPlayInitRequest = this.a;
            final Context context = this.b;
            final C3691l5 c3691l5 = this.c;
            final LevelPlayInitListener levelPlayInitListener = this.d;
            c3936yb.a(new Runnable() { // from class: com.ironsource.wb$a$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    C3900wb.a.a(levelPlayInitRequest, sdkConfig, context, c3691l5, levelPlayInitListener);
                }
            });
        }

        @Override // com.ironsource.InterfaceC3921xe
        public void a(final C3829se error) {
            Intrinsics.checkNotNullParameter(error, "error");
            C3936yb c3936yb = C3900wb.b;
            final LevelPlayInitListener levelPlayInitListener = this.d;
            final C3691l5 c3691l5 = this.c;
            c3936yb.a(new Runnable() { // from class: com.ironsource.wb$a$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C3900wb.a.a(levelPlayInitListener, c3691l5, error);
                }
            });
        }
    }

    private C3900wb() {
    }

    private final C3643ia a(LevelPlaySegment levelPlaySegment) {
        C3643ia c3643ia = new C3643ia();
        c3643ia.a(levelPlaySegment.getLevel());
        c3643ia.a(levelPlaySegment.getIapTotal());
        c3643ia.a(levelPlaySegment.isPaying());
        c3643ia.a(levelPlaySegment.getUserCreationDate());
        c3643ia.a(levelPlaySegment.getSegmentName());
        Iterator<T> it = levelPlaySegment.getCustoms$mediationsdk_release().iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            c3643ia.a((String) pair.getFirst(), (String) pair.getSecond());
        }
        return c3643ia;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a(C3456ab c3456ab, C3691l5 c3691l5, long j, LevelPlayInitListener levelPlayInitListener) {
        a.b(c3456ab, c3691l5, j, levelPlayInitListener);
        return Unit.INSTANCE;
    }

    private final void a(long j, final Function0<Unit> function0) {
        if (Pb.w.d().f().c() || j <= 0) {
            function0.invoke();
            return;
        }
        Ef ef = new Ef(null, null, null, 7, null);
        Runnable runnable = new Runnable() { // from class: com.ironsource.wb$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3900wb.a(function0);
            }
        };
        Duration.Companion companion = Duration.INSTANCE;
        ef.b(runnable, DurationKt.toDuration(j, DurationUnit.MILLISECONDS));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3829se c3829se, LevelPlayInitListener levelPlayInitListener, C3829se c3829se2) {
        IronLog.CALLBACK.info("LevelPlayInitListener.LevelPlayInitError() error: " + c3829se);
        if (levelPlayInitListener != null) {
            levelPlayInitListener.onInitFailed(new LevelPlayInitError(b.a(c3829se2)));
        }
    }

    public static /* synthetic */ void a(C3900wb c3900wb, Context context, LevelPlayInitRequest levelPlayInitRequest, LevelPlayInitListener levelPlayInitListener, int i, Object obj) {
        if ((i & 4) != 0) {
            levelPlayInitListener = null;
        }
        c3900wb.a(context, levelPlayInitRequest, levelPlayInitListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(LevelPlayInitListener levelPlayInitListener, C3456ab c3456ab) {
        IronLog.CALLBACK.info("LevelPlayInitListener.onInitSuccess()");
        if (levelPlayInitListener != null) {
            levelPlayInitListener.onInitSuccess(new LevelPlayConfiguration(c3456ab.l(), c3456ab.h()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(final LevelPlayInitListener levelPlayInitListener, C3691l5 c3691l5, final C3829se c3829se) {
        long jA = C3691l5.a(c3691l5);
        C3936yb c3936yb = b;
        final C3829se c3829seB = c3936yb.b(c3829se);
        C3936yb.a(c3936yb, c3829seB, jA, null, 4, null);
        c3936yb.b(new Runnable() { // from class: com.ironsource.wb$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                C3900wb.a(c3829se, levelPlayInitListener, c3829seB);
            }
        });
    }

    private final void a(LevelPlayInitRequest levelPlayInitRequest, C3456ab c3456ab) {
        LevelPlay.AdFormat adFormat = LevelPlay.AdFormat.REWARDED;
        if (a(levelPlayInitRequest, adFormat) && c3456ab.d().c().f() != null) {
            C3611ge.a aVar = C3611ge.A;
            IronSource.a aVar2 = IronSource.a.REWARDED_VIDEO;
            C3611ge c3611geA = aVar.a(new C3597g0(aVar2, C3950z7.a.a(), "", null, null, null, 56, null), c3456ab, true);
            List<Ec> listD = c3456ab.d(adFormat);
            E0.b bVar = E0.b.MEDIATION;
            new Id(new T0(new C3758p0(aVar2, bVar), c3611geA, bVar), adFormat, listD, c3611geA).a();
        }
        LevelPlay.AdFormat adFormat2 = LevelPlay.AdFormat.INTERSTITIAL;
        if (a(levelPlayInitRequest, adFormat2) && c3456ab.d().c().d() != null) {
            J9.a aVar3 = J9.A;
            IronSource.a aVar4 = IronSource.a.INTERSTITIAL;
            J9 j9A = aVar3.a(new C3597g0(aVar4, C3950z7.a.a(), "", null, null, null, 56, null), c3456ab, true);
            List<Ec> listD2 = c3456ab.d(adFormat2);
            E0.b bVar2 = E0.b.MEDIATION;
            new Id(new T0(new C3758p0(aVar4, bVar2), j9A, bVar2), adFormat2, listD2, j9A).a();
        }
        LevelPlay.AdFormat adFormat3 = LevelPlay.AdFormat.BANNER;
        if (!a(levelPlayInitRequest, adFormat3) || c3456ab.d().c().c() == null) {
            return;
        }
        T2 t2A = T2.A.a(new Q2(), c3456ab, true);
        List<Ec> listD3 = c3456ab.d(adFormat3);
        IronSource.a aVar5 = IronSource.a.BANNER;
        E0.b bVar3 = E0.b.MEDIATION;
        new Id(new T0(new C3758p0(aVar5, bVar3), t2A, bVar3), adFormat3, listD3, t2A).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(LevelPlayInitRequest levelPlayInitRequest, C3794qe c3794qe, Context context, final C3691l5 c3691l5, final LevelPlayInitListener levelPlayInitListener) {
        Pb.a aVar = Pb.w;
        M8.a aVarG = aVar.a().G();
        final C3456ab c3456ab = new C3456ab(c3794qe);
        if (c3456ab.m()) {
            b.a(context);
        }
        O7.a aVarB = aVar.a().b();
        C3936yb c3936yb = b;
        c3456ab.b(c3936yb).a(aVarB);
        c3456ab.a(c3936yb).a(aVar.a().l());
        c3456ab.c(c3936yb).a(aVar.a().w());
        C3900wb c3900wb = a;
        c3900wb.a(levelPlayInitRequest, c3456ab);
        aVar.d().C().a(c3456ab);
        aVar.d().H().a(c3456ab);
        if (aVar.d().h().e()) {
            aVar.d().D().a(c3456ab.i());
        }
        final long jP = aVar.d().h().p();
        ContextProvider.getInstance().updateStrategyIfNeeded();
        com.ironsource.mediationsdk.c.c().h();
        c3900wb.a(jP, new Function0() { // from class: com.ironsource.wb$$ExternalSyntheticLambda4
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return C3900wb.a(c3456ab, c3691l5, jP, levelPlayInitListener);
            }
        });
        aVarG.a(c3456ab);
        if (c3794qe.a().f()) {
            new Qd(null, null, null, IronSourceThreadManager.INSTANCE.getThreadPoolExecutor(), 7, null).c(context);
        }
    }

    private final void a(final Class<?> cls) {
        b.a(new Runnable() { // from class: com.ironsource.wb$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() throws JSONException {
                C3900wb.b(cls);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Function0 function0) {
        function0.invoke();
    }

    private final boolean a(LevelPlayInitRequest levelPlayInitRequest, LevelPlay.AdFormat adFormat) {
        return !levelPlayInitRequest.getLegacyAdFormats().contains(adFormat);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b(String str, List list) {
        com.ironsource.mediationsdk.p.g().a(str, (List<String>) list);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Context context, LevelPlayInitRequest levelPlayInitRequest, LevelPlayInitListener levelPlayInitListener) {
        a.c(context, levelPlayInitRequest, levelPlayInitListener);
    }

    private final void b(final C3456ab c3456ab, C3691l5 c3691l5, long j, final LevelPlayInitListener levelPlayInitListener) {
        Pb.w.a().G().d();
        long jA = C3691l5.a(c3691l5);
        C3936yb c3936yb = b;
        C3936yb.a(c3936yb, jA, c3456ab.f(), j, null, 8, null);
        c3936yb.b(new Runnable() { // from class: com.ironsource.wb$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                C3900wb.a(levelPlayInitListener, c3456ab);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Class cls) throws JSONException {
        JSONObject jSONObjectB = IronSourceUtils.b(false);
        jSONObjectB.put(IronSourceConstants.EVENTS_EXT1, cls.getName());
        Pb.w.d().q().a(new C5(D5.TROUBLESHOOTING_ILR_SUBSCRIPTION_LEGACY, jSONObjectB));
    }

    private final void c(Context context, LevelPlayInitRequest levelPlayInitRequest, LevelPlayInitListener levelPlayInitListener) {
        IronLog.API.info("LevelPlay.init() appkey: " + levelPlayInitRequest.getAppKey() + ", userId: " + levelPlayInitRequest.getUserId() + ", legacyAdFormats: " + levelPlayInitRequest.getLegacyAdFormats() + ", context: " + context.getClass().getSimpleName());
        C3691l5 c3691l5 = new C3691l5();
        C3936yb c3936yb = b;
        LevelPlay.AdFormat[] adFormatArr = (LevelPlay.AdFormat[]) levelPlayInitRequest.getLegacyAdFormats().toArray(new LevelPlay.AdFormat[0]);
        Ge.a.a(context, new C3957ze(levelPlayInitRequest.getAppKey(), levelPlayInitRequest.getUserId(), ArraysKt.toMutableList(c3936yb.a((LevelPlay.AdFormat[]) Arrays.copyOf(adFormatArr, adFormatArr.length)))), new a(levelPlayInitRequest, context, c3691l5, levelPlayInitListener));
    }

    public final void a(final Context context, final LevelPlayInitRequest initRequest, final LevelPlayInitListener levelPlayInitListener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initRequest, "initRequest");
        b.a(new Runnable() { // from class: com.ironsource.wb$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                C3900wb.b(context, initRequest, levelPlayInitListener);
            }
        });
    }

    public final void a(LevelPlayImpressionDataListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        com.ironsource.mediationsdk.p.g().b(new C3572eb(listener));
        a(listener.getClass());
    }

    public final void a(LevelPlayImpressionDataListener listener, String subscriberId) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(subscriberId, "subscriberId");
        Pb.a aVar = Pb.w;
        if (aVar.d().h().e()) {
            aVar.d().D().a(subscriberId, listener);
        } else {
            a(listener);
        }
    }

    public final void a(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        ArrayList arrayList = new ArrayList();
        arrayList.add(value);
        a(key, arrayList);
    }

    public final void a(final String key, final List<String> values) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(values, "values");
        IronSourceThreadManager.postMediationBackgroundTask$default(IronSourceThreadManager.INSTANCE, com.ironsource.environment.thread.a.a.a(new Function0() { // from class: com.ironsource.wb$$ExternalSyntheticLambda3
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return C3900wb.b(key, values);
            }
        }), 0L, 2, null);
    }

    public final void b(LevelPlayImpressionDataListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        com.ironsource.mediationsdk.p.g().a(new C3572eb(listener));
    }

    public final void b(LevelPlaySegment segment) {
        Intrinsics.checkNotNullParameter(segment, "segment");
        com.ironsource.mediationsdk.p.g().a(a(segment));
    }

    public final void c(LevelPlayImpressionDataListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Pb.a aVar = Pb.w;
        if (aVar.d().h().e()) {
            aVar.d().D().a(listener);
        } else {
            b(listener);
        }
    }
}
