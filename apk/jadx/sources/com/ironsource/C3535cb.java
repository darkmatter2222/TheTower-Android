package com.ironsource;

import android.app.Activity;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import com.unity3d.mediation.impression.LevelPlayImpressionDataListener;
import com.unity3d.mediation.rewarded.LevelPlayReward;
import java.util.UUID;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.cb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3535cb implements InterfaceC3674k6 {
    public static final a p = new a(null);
    public static final String q = "Fullscreen Ad Internal";
    private final LevelPlay.AdFormat a;
    private final String b;
    private final b c;
    private final C3758p0 d;
    private final C3656j6 e;
    private final X0 f;
    private final InterfaceC3925y0 g;
    private final M7 h;
    private final InterfaceC3839t4 i;
    private C3639i6 j;
    private InterfaceC3554db k;
    private final C3551d9 l;
    private final UUID m;
    private InterfaceC3841t6 n;
    private C3691l5 o;

    /* JADX INFO: renamed from: com.ironsource.cb$a */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(C3758p0 c3758p0, String str) {
            c3758p0.f().a().a(str, W0.b, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(C3758p0 c3758p0, String str, L3 l3, boolean z) {
            c3758p0.f().a().a(str, l3.e(), z);
        }

        public final boolean a(final String placementName, LevelPlay.AdFormat adFormat) {
            Intrinsics.checkNotNullParameter(placementName, "placementName");
            Intrinsics.checkNotNullParameter(adFormat, "adFormat");
            final C3758p0 c3758p0A = C3758p0.a.a(com.unity3d.mediation.a.a(adFormat), E0.b.MEDIATION);
            if (!c3758p0A.a()) {
                c3758p0A.a(new Runnable() { // from class: com.ironsource.cb$a$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        C3535cb.a.a(c3758p0A, placementName);
                    }
                });
                return false;
            }
            final L3 l3A = Pb.w.d().p().a(placementName, adFormat);
            final boolean zD = l3A.d();
            c3758p0A.a(new Runnable() { // from class: com.ironsource.cb$a$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    C3535cb.a.a(c3758p0A, placementName, l3A, zD);
                }
            });
            return zD;
        }
    }

    /* JADX INFO: renamed from: com.ironsource.cb$b */
    public interface b {
        Double getBidFloor();
    }

    /* JADX INFO: renamed from: com.ironsource.cb$c */
    public static final class c {
        private final C3758p0 a;
        private final C3656j6 b;
        private final M7 c;
        private final InterfaceC3839t4 d;
        private final C3950z7 e;
        private final b f;
        private final X0 g;

        public c(C3758p0 adTools, C3656j6 adControllerFactory, M7 provider, InterfaceC3839t4 currentTimeProvider, C3950z7 idFactory, b config, X0 adUnitValidator) {
            Intrinsics.checkNotNullParameter(adTools, "adTools");
            Intrinsics.checkNotNullParameter(adControllerFactory, "adControllerFactory");
            Intrinsics.checkNotNullParameter(provider, "provider");
            Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
            Intrinsics.checkNotNullParameter(idFactory, "idFactory");
            Intrinsics.checkNotNullParameter(config, "config");
            Intrinsics.checkNotNullParameter(adUnitValidator, "adUnitValidator");
            this.a = adTools;
            this.b = adControllerFactory;
            this.c = provider;
            this.d = currentTimeProvider;
            this.e = idFactory;
            this.f = config;
            this.g = adUnitValidator;
        }

        public final C3656j6 a() {
            return this.b;
        }

        public final C3758p0 b() {
            return this.a;
        }

        public final X0 c() {
            return this.g;
        }

        public final b d() {
            return this.f;
        }

        public final InterfaceC3839t4 e() {
            return this.d;
        }

        public final C3950z7 f() {
            return this.e;
        }

        public final M7 g() {
            return this.c;
        }
    }

    /* JADX INFO: renamed from: com.ironsource.cb$d */
    public static final class d implements InterfaceC3877v6 {
        final /* synthetic */ C3597g0 b;

        d(C3597g0 c3597g0) {
            this.b = c3597g0;
        }

        @Override // com.ironsource.InterfaceC3877v6
        public C3859u6 a(boolean z, InterfaceC3913x6 listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            AbstractC3907x0 abstractC3907x0A = C3535cb.this.g().a(z, this.b);
            return new C3859u6(Pb.w.c(), new T0(C3535cb.this.f(), abstractC3907x0A, E0.b.MEDIATION), abstractC3907x0A, listener, C3535cb.this.l, null, null, null, null, 480, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C3535cb(LevelPlay.AdFormat adFormat, String adUnitId, b config, C3758p0 adTools, C3656j6 fullscreenAdControllerFactory, X0 adUnitValidator, InterfaceC3925y0 adUnitDataFactory, M7 mediationServicesProvider, InterfaceC3839t4 currentTimeProvider, C3950z7 idFactory) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(fullscreenAdControllerFactory, "fullscreenAdControllerFactory");
        Intrinsics.checkNotNullParameter(adUnitValidator, "adUnitValidator");
        Intrinsics.checkNotNullParameter(adUnitDataFactory, "adUnitDataFactory");
        Intrinsics.checkNotNullParameter(mediationServicesProvider, "mediationServicesProvider");
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        Intrinsics.checkNotNullParameter(idFactory, "idFactory");
        this.a = adFormat;
        this.b = adUnitId;
        this.c = config;
        this.d = adTools;
        this.e = fullscreenAdControllerFactory;
        this.f = adUnitValidator;
        this.g = adUnitDataFactory;
        this.h = mediationServicesProvider;
        this.i = currentTimeProvider;
        this.l = new C3551d9(adTools);
        this.m = idFactory.a();
        this.n = new C3692l6(this, null, 2, 0 == true ? 1 : 0);
        adTools.a(new Runnable() { // from class: com.ironsource.cb$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3535cb.a(this.f$0);
            }
        });
    }

    public /* synthetic */ C3535cb(LevelPlay.AdFormat adFormat, String str, b bVar, C3758p0 c3758p0, C3656j6 c3656j6, X0 x0, InterfaceC3925y0 interfaceC3925y0, M7 m7, InterfaceC3839t4 interfaceC3839t4, C3950z7 c3950z7, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(adFormat, str, bVar, c3758p0, c3656j6, x0, interfaceC3925y0, (i & 128) != 0 ? Pb.w.d() : m7, interfaceC3839t4, c3950z7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Activity activity, C3535cb c3535cb, String str) {
        ContextProvider.getInstance().updateActivity(activity);
        c3535cb.d.f().h().b();
        c3535cb.n.a(activity, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3458ad c3458ad, LevelPlayReward levelPlayReward, String str) {
        C3458ad.a(c3458ad, levelPlayReward, str, null, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3458ad c3458ad, LevelPlayReward levelPlayReward, String str, V0 v0) {
        c3458ad.a(levelPlayReward, str, ((V0.a) v0).b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3535cb c3535cb) {
        c3535cb.d.f().a(new C3721n(com.unity3d.mediation.a.a(c3535cb.a), c3535cb.m, c3535cb.b));
        c3535cb.p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3535cb c3535cb, long j) {
        c3535cb.d.f().f().a(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3535cb c3535cb, long j, LevelPlayAdError levelPlayAdError) {
        String errorMessage;
        C3458ad c3458adF = c3535cb.d.f().f();
        int errorCode = levelPlayAdError != null ? levelPlayAdError.getErrorCode() : 0;
        if (levelPlayAdError == null || (errorMessage = levelPlayAdError.getErrorMessage()) == null) {
            errorMessage = "";
        }
        c3458adF.a(j, errorCode, errorMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3535cb c3535cb, LevelPlayAdError levelPlayAdError) {
        c3535cb.d.f().h().a(levelPlayAdError);
    }

    public static /* synthetic */ void a(C3535cb c3535cb, LevelPlayAdError levelPlayAdError, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        c3535cb.a(levelPlayAdError, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3535cb c3535cb, LevelPlayAdError levelPlayAdError, LevelPlayAdInfo levelPlayAdInfo) {
        InterfaceC3554db interfaceC3554db = c3535cb.k;
        if (interfaceC3554db != null) {
            interfaceC3554db.onAdDisplayFailed(levelPlayAdError, levelPlayAdInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3535cb c3535cb, LevelPlayAdInfo levelPlayAdInfo) {
        InterfaceC3554db interfaceC3554db = c3535cb.k;
        if (interfaceC3554db != null) {
            interfaceC3554db.onAdLoaded(levelPlayAdInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3535cb c3535cb, LevelPlayImpressionDataListener levelPlayImpressionDataListener) {
        c3535cb.l.a(levelPlayImpressionDataListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3535cb c3535cb, LevelPlayReward levelPlayReward, LevelPlayAdInfo levelPlayAdInfo) {
        InterfaceC3554db interfaceC3554db = c3535cb.k;
        if (interfaceC3554db != null) {
            interfaceC3554db.onAdRewarded(levelPlayReward, levelPlayAdInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(InterfaceC3668k0 interfaceC3668k0, C3535cb c3535cb) {
        c3535cb.d.f().e().a(Boolean.valueOf(interfaceC3668k0.a()), interfaceC3668k0 instanceof InterfaceC3668k0.a ? ((InterfaceC3668k0.a) interfaceC3668k0).c() : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(LevelPlayAdError levelPlayAdError, C3535cb c3535cb) {
        InterfaceC3554db interfaceC3554db;
        if (levelPlayAdError == null || (interfaceC3554db = c3535cb.k) == null) {
            return;
        }
        interfaceC3554db.onAdLoadFailed(levelPlayAdError);
    }

    private final C3639i6 b() {
        C3597g0 c3597g0 = new C3597g0(com.unity3d.mediation.a.a(this.a), this.m, this.b, null, this.h.B().a(), this.c.getBidFloor(), 8, null);
        d dVar = new d(c3597g0);
        E5 e5F = this.d.f();
        C3758p0 c3758p0 = this.d;
        e5F.a(new C0(c3758p0, c3597g0, c3758p0.b(this.a, this.b).b().b()));
        return this.e.a(this, this.d, c3597g0, dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(C3535cb c3535cb) {
        c3535cb.d.f().f().a();
        c3535cb.n.loadAd();
    }

    private final void p() {
        Double bidFloor = this.c.getBidFloor();
        if (bidFloor != null) {
            this.d.f().f().a(bidFloor.doubleValue());
        }
    }

    public final LevelPlayReward a(final String str) {
        S7 s7E = this.h.E();
        M8 m8F = this.h.f();
        final C3458ad c3458adF = this.d.f().f();
        final V0 v0A = this.f.a(this.b, this.a, m8F);
        if (!(v0A instanceof V0.a)) {
            final LevelPlayReward levelPlayRewardA = s7E.a(str, this.b);
            this.d.a(new Runnable() { // from class: com.ironsource.cb$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    C3535cb.a(c3458adF, levelPlayRewardA, str);
                }
            });
            return levelPlayRewardA;
        }
        IronLog.INTERNAL.warning(C3758p0.a(this.d, "getReward() returned a default reward. Reason: " + ((V0.a) v0A).b(), (String) null, 2, (Object) null));
        final LevelPlayReward levelPlayReward = new LevelPlayReward("", 0);
        this.d.a(new Runnable() { // from class: com.ironsource.cb$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                C3535cb.a(c3458adF, levelPlayReward, str, v0A);
            }
        });
        return levelPlayReward;
    }

    @Override // com.ironsource.InterfaceC3674k6
    public void a() {
        this.n.a();
    }

    public final void a(final Activity activity, final String str) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.d.a(new Runnable() { // from class: com.ironsource.cb$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                C3535cb.a(activity, this, str);
            }
        });
    }

    public final void a(InterfaceC3554db interfaceC3554db) {
        this.k = interfaceC3554db;
    }

    public final void a(C3692l6.a status) {
        Intrinsics.checkNotNullParameter(status, "status");
        this.n = new C3692l6(this, status);
    }

    public final void a(InterfaceC3841t6 state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.n = state;
    }

    @Override // com.ironsource.InterfaceC3674k6
    public void a(LevelPlayAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.n.a(error);
    }

    public final void a(final LevelPlayAdError levelPlayAdError, final long j) {
        IronLog.INTERNAL.verbose(C3758p0.a(this.d, "onAdLoadFailed error: " + levelPlayAdError, (String) null, 2, (Object) null));
        this.d.a(new Runnable() { // from class: com.ironsource.cb$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                C3535cb.a(this.f$0, j, levelPlayAdError);
            }
        });
        this.d.b(new Runnable() { // from class: com.ironsource.cb$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                C3535cb.a(levelPlayAdError, this);
            }
        });
    }

    public final void a(final LevelPlayAdError error, final LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        IronLog.INTERNAL.verbose(C3758p0.a(this.d, "onAdDisplayFailed error: " + error + ", adInfo: " + adInfo, (String) null, 2, (Object) null));
        this.d.a(new Runnable() { // from class: com.ironsource.cb$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                C3535cb.a(this.f$0, error);
            }
        });
        this.d.b(new Runnable() { // from class: com.ironsource.cb$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                C3535cb.a(this.f$0, error, adInfo);
            }
        });
    }

    public final void a(final LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        IronLog.INTERNAL.verbose(C3758p0.a(this.d, "onAdLoaded adInfo: " + adInfo, (String) null, 2, (Object) null));
        final long jA = C3691l5.a(this.o);
        this.d.a(new Runnable() { // from class: com.ironsource.cb$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C3535cb.a(this.f$0, jA);
            }
        });
        this.d.b(new Runnable() { // from class: com.ironsource.cb$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                C3535cb.a(this.f$0, adInfo);
            }
        });
    }

    public final void a(final LevelPlayImpressionDataListener levelPlayImpressionDataListener) {
        IronLog.INTERNAL.verbose(C3758p0.a(this.d, "setImpressionDataListener listener: " + levelPlayImpressionDataListener, (String) null, 2, (Object) null));
        this.d.a(new Runnable() { // from class: com.ironsource.cb$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                C3535cb.a(this.f$0, levelPlayImpressionDataListener);
            }
        });
    }

    @Override // com.ironsource.InterfaceC3674k6
    public void a(final LevelPlayReward reward) {
        Intrinsics.checkNotNullParameter(reward, "reward");
        final LevelPlayAdInfo levelPlayAdInfoB = this.n.b();
        IronLog.INTERNAL.verbose(C3758p0.a(this.d, "onAdRewarded adInfo: " + levelPlayAdInfoB + " reward: " + reward, (String) null, 2, (Object) null));
        this.d.b(new Runnable() { // from class: com.ironsource.cb$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                C3535cb.a(this.f$0, reward, levelPlayAdInfoB);
            }
        });
    }

    public final void b(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.d.f().h().f("Fullscreen Ad Internal - " + message);
    }

    public final C3639i6 c() {
        C3639i6 c3639i6 = this.j;
        if (c3639i6 != null) {
            return c3639i6;
        }
        C3639i6 c3639i6B = b();
        this.j = c3639i6B;
        return c3639i6B;
    }

    public final LevelPlay.AdFormat d() {
        return this.a;
    }

    public final UUID e() {
        return this.m;
    }

    public final C3758p0 f() {
        return this.d;
    }

    public final InterfaceC3925y0 g() {
        return this.g;
    }

    public final String h() {
        return this.b;
    }

    public final b i() {
        return this.c;
    }

    public final InterfaceC3839t4 j() {
        return this.i;
    }

    public final InterfaceC3554db k() {
        return this.k;
    }

    public final M7 l() {
        return this.h;
    }

    public final boolean m() {
        final InterfaceC3668k0 interfaceC3668k0C = this.n.c();
        this.d.a(new Runnable() { // from class: com.ironsource.cb$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                C3535cb.a(interfaceC3668k0C, this);
            }
        });
        return interfaceC3668k0C.a();
    }

    public final void n() {
        this.o = new C3691l5();
        this.d.a(new Runnable() { // from class: com.ironsource.cb$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                C3535cb.c(this.f$0);
            }
        });
    }

    public final void o() {
        a(new C3786q6(this, this.i));
        c().b();
    }

    @Override // com.ironsource.InterfaceC3674k6
    public void onAdClicked() {
        this.n.onAdClicked();
    }

    @Override // com.ironsource.InterfaceC3674k6
    public void onAdClosed() {
        this.n.onAdClosed();
    }

    @Override // com.ironsource.InterfaceC3674k6
    public void onAdDisplayed(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.n.onAdDisplayed(adInfo);
    }

    @Override // com.ironsource.InterfaceC3674k6
    public void onAdInfoChanged(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.n.onAdInfoChanged(adInfo);
    }

    @Override // com.ironsource.InterfaceC3674k6
    public void onAdLoadFailed(LevelPlayAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.n.onAdLoadFailed(error);
    }

    @Override // com.ironsource.InterfaceC3674k6
    public void onAdLoaded(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.n.onAdLoaded(adInfo);
    }
}
