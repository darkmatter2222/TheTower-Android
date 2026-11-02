package com.ironsource.mediationsdk;

import android.content.Context;
import android.content.IntentFilter;
import android.os.CountDownTimer;
import android.os.Handler;
import android.text.TextUtils;
import com.google.firebase.firestore.util.ExponentialBackoff;
import com.ironsource.C3450a5;
import com.ironsource.C3516ba;
import com.ironsource.C3663jd;
import com.ironsource.C3801r4;
import com.ironsource.C3934y9;
import com.ironsource.C5;
import com.ironsource.D5;
import com.ironsource.He;
import com.ironsource.Ie;
import com.ironsource.InterfaceC3747o7;
import com.ironsource.Jc;
import com.ironsource.K1;
import com.ironsource.Nd;
import com.ironsource.O1;
import com.ironsource.O6;
import com.ironsource.Pb;
import com.ironsource.Qb;
import com.ironsource.Qd;
import com.ironsource.Sc;
import com.ironsource.U1;
import com.ironsource.Ue;
import com.ironsource.Ye;
import com.ironsource.environment.ContextProvider;
import com.ironsource.environment.NetworkStateReceiver;
import com.ironsource.environment.thread.IronSourceThreadManager;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import p005kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
class q implements Jc {
    private static q z;
    private Ye a;
    private NetworkStateReceiver p;
    private CountDownTimer q;
    private String t;
    private Ue u;
    private long w;
    private int b = e.f;
    private InterfaceC3747o7 c = Pb.k0().k();
    private final String d = "appKey";
    private final String e = getClass().getSimpleName();
    private boolean l = false;
    private boolean n = false;
    private List<Sc> r = new ArrayList();
    private String s = "";
    private f y = new a();
    private Handler m = IronSourceThreadManager.INSTANCE.getInitHandler();
    private int f = 1;
    private int g = 0;
    private int h = 62;
    private int i = 12;
    private int j = 5;
    private AtomicBoolean o = new AtomicBoolean(true);
    private boolean k = false;
    private boolean v = false;
    private C3516ba x = new C3516ba();

    class a extends f {
        a() {
            super();
        }

        /* JADX WARN: Code duplicated, block: B:59:0x02b8 A[Catch: Exception -> 0x0308, TryCatch #0 {Exception -> 0x0308, blocks: (B:2:0x0000, B:4:0x0010, B:5:0x001f, B:7:0x002b, B:8:0x003a, B:10:0x007e, B:12:0x0091, B:14:0x00ce, B:15:0x00f7, B:17:0x0127, B:19:0x012d, B:20:0x0154, B:22:0x017f, B:24:0x0189, B:25:0x0196, B:26:0x01aa, B:28:0x01b0, B:29:0x01ca, B:31:0x01e7, B:32:0x020a, B:34:0x0218, B:36:0x0224, B:38:0x022c, B:39:0x023e, B:41:0x0244, B:42:0x0250, B:44:0x0257, B:45:0x0262, B:47:0x0268, B:48:0x0272, B:50:0x0276, B:52:0x0282, B:54:0x029f, B:55:0x02a8, B:57:0x02ac, B:69:0x02fd, B:59:0x02b8, B:61:0x02c0, B:63:0x02cb, B:64:0x02cf, B:65:0x02d9, B:67:0x02df, B:68:0x02eb), top: B:74:0x0000 }] */
        /* JADX WARN: Code duplicated, block: B:61:0x02c0 A[Catch: Exception -> 0x0308, TryCatch #0 {Exception -> 0x0308, blocks: (B:2:0x0000, B:4:0x0010, B:5:0x001f, B:7:0x002b, B:8:0x003a, B:10:0x007e, B:12:0x0091, B:14:0x00ce, B:15:0x00f7, B:17:0x0127, B:19:0x012d, B:20:0x0154, B:22:0x017f, B:24:0x0189, B:25:0x0196, B:26:0x01aa, B:28:0x01b0, B:29:0x01ca, B:31:0x01e7, B:32:0x020a, B:34:0x0218, B:36:0x0224, B:38:0x022c, B:39:0x023e, B:41:0x0244, B:42:0x0250, B:44:0x0257, B:45:0x0262, B:47:0x0268, B:48:0x0272, B:50:0x0276, B:52:0x0282, B:54:0x029f, B:55:0x02a8, B:57:0x02ac, B:69:0x02fd, B:59:0x02b8, B:61:0x02c0, B:63:0x02cb, B:64:0x02cf, B:65:0x02d9, B:67:0x02df, B:68:0x02eb), top: B:74:0x0000 }] */
        /* JADX WARN: Code duplicated, block: B:63:0x02cb A[Catch: Exception -> 0x0308, TryCatch #0 {Exception -> 0x0308, blocks: (B:2:0x0000, B:4:0x0010, B:5:0x001f, B:7:0x002b, B:8:0x003a, B:10:0x007e, B:12:0x0091, B:14:0x00ce, B:15:0x00f7, B:17:0x0127, B:19:0x012d, B:20:0x0154, B:22:0x017f, B:24:0x0189, B:25:0x0196, B:26:0x01aa, B:28:0x01b0, B:29:0x01ca, B:31:0x01e7, B:32:0x020a, B:34:0x0218, B:36:0x0224, B:38:0x022c, B:39:0x023e, B:41:0x0244, B:42:0x0250, B:44:0x0257, B:45:0x0262, B:47:0x0268, B:48:0x0272, B:50:0x0276, B:52:0x0282, B:54:0x029f, B:55:0x02a8, B:57:0x02ac, B:69:0x02fd, B:59:0x02b8, B:61:0x02c0, B:63:0x02cb, B:64:0x02cf, B:65:0x02d9, B:67:0x02df, B:68:0x02eb), top: B:74:0x0000 }] */
        /* JADX WARN: Code duplicated, block: B:67:0x02df A[Catch: Exception -> 0x0308, LOOP:3: B:65:0x02d9->B:67:0x02df, LOOP_END, TryCatch #0 {Exception -> 0x0308, blocks: (B:2:0x0000, B:4:0x0010, B:5:0x001f, B:7:0x002b, B:8:0x003a, B:10:0x007e, B:12:0x0091, B:14:0x00ce, B:15:0x00f7, B:17:0x0127, B:19:0x012d, B:20:0x0154, B:22:0x017f, B:24:0x0189, B:25:0x0196, B:26:0x01aa, B:28:0x01b0, B:29:0x01ca, B:31:0x01e7, B:32:0x020a, B:34:0x0218, B:36:0x0224, B:38:0x022c, B:39:0x023e, B:41:0x0244, B:42:0x0250, B:44:0x0257, B:45:0x0262, B:47:0x0268, B:48:0x0272, B:50:0x0276, B:52:0x0282, B:54:0x029f, B:55:0x02a8, B:57:0x02ac, B:69:0x02fd, B:59:0x02b8, B:61:0x02c0, B:63:0x02cb, B:64:0x02cf, B:65:0x02d9, B:67:0x02df, B:68:0x02eb), top: B:74:0x0000 }] */
        @Override // java.lang.Runnable
        public void run() {
            q qVar;
            Iterator it;
            try {
                p pVarG = p.g();
                if (!TextUtils.isEmpty(q.this.s)) {
                    O6.a().a("userId", q.this.s);
                }
                if (!TextUtils.isEmpty(q.this.t)) {
                    O6.a().a("appKey", q.this.t);
                }
                q qVar2 = q.this;
                qVar2.x.i(qVar2.s);
                q.this.w = new Date().getTime();
                Nd.c().a();
                q.this.u = pVarG.b(ContextProvider.getInstance().getApplicationContext(), q.this.s, this.c);
                q qVar3 = q.this;
                if (qVar3.u == null) {
                    if (qVar3.g == 3) {
                        qVar3.v = true;
                        Iterator it2 = qVar3.r.iterator();
                        while (it2.hasNext()) {
                            ((Sc) it2.next()).a();
                        }
                    }
                    if (this.a) {
                        q qVar4 = q.this;
                        if (qVar4.g < qVar4.h) {
                            qVar4.k = true;
                            qVar4.m.postDelayed(this, qVar4.f * 1000);
                            q qVar5 = q.this;
                            if (qVar5.g < qVar5.i) {
                                qVar5.f *= 2;
                            }
                        }
                    }
                    if (this.a) {
                        q qVar6 = q.this;
                        if (qVar6.g == qVar6.j) {
                            qVar = q.this;
                            if (!qVar.l) {
                                qVar.l = true;
                                if (TextUtils.isEmpty(this.b)) {
                                    this.b = "noServerResponse";
                                }
                                it = q.this.r.iterator();
                                while (it.hasNext()) {
                                    ((Sc) it.next()).g(this.b);
                                }
                                q.this.b(d.INIT_FAILED);
                                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "Mediation availability false reason: No server response", 1);
                            }
                        }
                    } else {
                        qVar = q.this;
                        if (!qVar.l) {
                            qVar.l = true;
                            if (TextUtils.isEmpty(this.b)) {
                                this.b = "noServerResponse";
                            }
                            it = q.this.r.iterator();
                            while (it.hasNext()) {
                                ((Sc) it.next()).g(this.b);
                            }
                            q.this.b(d.INIT_FAILED);
                            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "Mediation availability false reason: No server response", 1);
                        }
                    }
                    q.this.g++;
                    return;
                }
                qVar3.m.removeCallbacks(this);
                if (!q.this.u.q()) {
                    q qVar7 = q.this;
                    if (qVar7.l) {
                        return;
                    }
                    qVar7.b(d.INIT_FAILED);
                    q qVar8 = q.this;
                    qVar8.l = true;
                    Iterator it3 = qVar8.r.iterator();
                    while (it3.hasNext()) {
                        ((Sc) it3.next()).g("serverResponseIsNotValid");
                    }
                    return;
                }
                q.this.b(d.INITIATED);
                new Qb().a(q.this.u.c().b().e().b(), pVarG.u());
                U1 u1F = q.this.u.c().b().f();
                if (u1F != null) {
                    C3450a5 c3450a5 = C3450a5.a;
                    c3450a5.c(u1F.h());
                    c3450a5.a(u1F.g());
                    c3450a5.a(u1F.k());
                    IronSourceThreadManager.INSTANCE.setUseSharedExecutorService(u1F.i());
                    q.this.c.a(u1F);
                }
                q.this.a(ContextProvider.getInstance().getApplicationContext(), q.this.u);
                long time = new Date().getTime();
                q qVar9 = q.this;
                pVarG.a(time - qVar9.w, qVar9.u.i());
                if (u1F != null && u1F.f()) {
                    new Qd(Pb.k0().q(), new Function0() { // from class: com.ironsource.mediationsdk.q$a$$ExternalSyntheticLambda0
                        @Override // p005kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Long.valueOf(System.currentTimeMillis());
                        }
                    }, Pb.k0(), IronSourceThreadManager.INSTANCE.getThreadPoolExecutor()).c(ContextProvider.getInstance().getApplicationContext());
                }
                q.this.a = new Ye();
                q qVar10 = q.this;
                qVar10.a.a(qVar10.c);
                if (q.this.u.c().b().g() && ContextProvider.getInstance().getApplicationContext() != null) {
                    C3934y9.a.a(ContextProvider.getInstance().getApplicationContext());
                }
                List<IronSource.a> listH = q.this.u.h();
                Iterator it4 = q.this.r.iterator();
                while (it4.hasNext()) {
                    ((Sc) it4.next()).a(listH, q.this.g(), q.this.u.c());
                }
                C3663jd.P.i();
                O1 o1D = q.this.u.c().b().d();
                if (o1D.f()) {
                    C3801r4.d().a(o1D.b(), o1D.d(), o1D.c(), o1D.e(), IronSourceUtils.d(), o1D.a(), o1D.g());
                }
                if (Pb.k0().h().H()) {
                    Pb.k0().u().start();
                }
            } catch (Exception e) {
                C3801r4.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
        }
    }

    class b implements Runnable {

        class a extends CountDownTimer {
            a(long j, long j2) {
                super(j, j2);
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                q qVar = q.this;
                if (qVar.l) {
                    return;
                }
                qVar.l = true;
                Iterator it = qVar.r.iterator();
                while (it.hasNext()) {
                    ((Sc) it.next()).g("noInternetConnection");
                }
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "Mediation availability false reason: No internet connection", 1);
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j) {
                if (j <= 45000) {
                    q qVar = q.this;
                    qVar.v = true;
                    Iterator it = qVar.r.iterator();
                    while (it.hasNext()) {
                        ((Sc) it.next()).a();
                    }
                }
            }
        }

        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q.this.q = new a(ExponentialBackoff.DEFAULT_BACKOFF_MAX_DELAY_MS, 15000L).start();
        }
    }

    static /* synthetic */ class c {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[d.values().length];
            a = iArr;
            try {
                iArr[d.INIT_IN_PROGRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[d.INIT_FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[d.INITIATED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    enum d {
        NOT_INIT,
        INIT_IN_PROGRESS,
        INIT_FAILED,
        INITIATED
    }

    public static class e {
        public static int a = 0;
        public static int b = 1;
        public static int c = 2;
        public static int d = 3;
        public static int e = 4;
        public static int f = 5;
    }

    abstract class f implements Runnable {
        String b;
        boolean a = true;
        protected p.c c = new a();

        class a implements p.c {
            a() {
            }

            @Override // com.ironsource.mediationsdk.p.c
            public void a(String str) {
                f fVar = f.this;
                fVar.a = false;
                fVar.b = str;
            }
        }

        f() {
        }
    }

    private q() {
    }

    private static int a(d dVar) {
        int i = c.a[dVar.ordinal()];
        if (i == 1) {
            return e.d;
        }
        if (i != 2) {
            return i != 3 ? e.a : e.b;
        }
        return e.e;
    }

    public static synchronized q c() {
        if (z == null) {
            z = new q();
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g() {
        return this.k;
    }

    public synchronized d a() {
        return d.values()[Ie.a.a().ordinal()];
    }

    public void a(Context context, Ue ue) {
        this.x.i(ue.g().h());
        this.x.c(ue.g().d());
        K1 k1B = ue.c().b();
        this.x.a(k1B.a());
        this.x.d(k1B.c().b());
        this.x.b(k1B.k().b());
        this.x.a(Boolean.valueOf(IronSourceUtils.c(context)));
        U1 u1F = ue.c().b().f();
        this.x.b(u1F.b());
        Pb.b0().o().a(u1F.c());
    }

    public synchronized void a(Context context, String str, String str2, IronSource.a... aVarArr) {
        try {
            AtomicBoolean atomicBoolean = this.o;
            if (atomicBoolean == null || !atomicBoolean.compareAndSet(true, false)) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, this.e + ": Multiple calls to init are not allowed", 2);
            } else {
                b(d.INIT_IN_PROGRESS);
                this.s = str2;
                this.t = str;
                if (IronSourceUtils.f(context)) {
                    this.m.post(this.y);
                } else {
                    this.n = true;
                    if (this.p == null) {
                        this.p = new NetworkStateReceiver(context, this);
                    }
                    context.registerReceiver(this.p, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                    IronSourceThreadManager.INSTANCE.postMediationBackgroundTask(new b());
                }
            }
        } catch (Exception e2) {
            C3801r4.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
        }
    }

    @Override // com.ironsource.Jc
    public void a(boolean z2) {
        if (this.n && z2) {
            CountDownTimer countDownTimer = this.q;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
            this.n = false;
            this.k = true;
            Pb.k0().q().a(new C5(D5.INIT_AFTER_REACHABILITY_CHANGE, IronSourceUtils.b(false)));
            this.m.post(this.y);
        }
    }

    public int b() {
        return this.b;
    }

    public synchronized void b(d dVar) {
        IronLog.INTERNAL.verbose("old status: " + a() + ", new status: " + dVar + ")");
        Ie.a.a(He.values()[dVar.ordinal()]);
    }

    public synchronized boolean d() {
        return this.v;
    }

    void e() {
        b(d.INIT_FAILED);
    }

    public synchronized void f() {
        int iA = a(a());
        this.b = iA;
        this.x.c(iA);
    }
}
