package com.ironsource.sdk.controller;

import android.app.Activity;
import android.content.Context;
import android.os.CountDownTimer;
import android.util.Log;
import com.ironsource.A4;
import com.ironsource.A8;
import com.ironsource.B4;
import com.ironsource.B8;
import com.ironsource.C3510b4;
import com.ironsource.C3512b6;
import com.ironsource.C3565e4;
import com.ironsource.C3655j5;
import com.ironsource.C3700le;
import com.ironsource.C3801r4;
import com.ironsource.C3836t1;
import com.ironsource.C3843t8;
import com.ironsource.C3861u8;
import com.ironsource.C3865uc;
import com.ironsource.C3879v8;
import com.ironsource.EnumC3531c7;
import com.ironsource.G5;
import com.ironsource.HandlerC3451a6;
import com.ironsource.InterfaceC3452a7;
import com.ironsource.InterfaceC3893w4;
import com.ironsource.InterfaceC3911x4;
import com.ironsource.InterfaceC3929y4;
import com.ironsource.M;
import com.ironsource.Pb;
import com.ironsource.Q3;
import com.ironsource.Sb;
import com.ironsource.Ub;
import com.ironsource.V7;
import com.ironsource.X4;
import com.ironsource.Y4;
import com.ironsource.ch;
import com.ironsource.sdk.IronSourceNetwork;
import com.ironsource.sdk.utils.IronSourceStorageUtils;
import com.ironsource.sdk.utils.Logger;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class e implements com.ironsource.sdk.controller.c, com.ironsource.sdk.controller.l {
    private com.ironsource.sdk.controller.l b;
    private CountDownTimer d;
    private final V7 g;
    private final ch h;
    private final C3865uc k;
    private final String a = "e";
    private C3843t8.b c = C3843t8.b.None;
    private final Q3 e = new Q3("NativeCommandExecutor");
    private final Q3 f = new Q3("ControllerCommandsExecutor");
    private final Map<String, com.ironsource.sdk.controller.l.a> i = new HashMap();
    private final Map<String, com.ironsource.sdk.controller.l.b> j = new HashMap();

    class a implements Runnable {
        final /* synthetic */ JSONObject a;
        final /* synthetic */ InterfaceC3911x4 b;

        a(JSONObject jSONObject, InterfaceC3911x4 interfaceC3911x4) {
            this.a = jSONObject;
            this.b = interfaceC3911x4;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.a(this.a, this.b);
            }
        }
    }

    class b implements Runnable {
        final /* synthetic */ X4 a;
        final /* synthetic */ Map b;
        final /* synthetic */ InterfaceC3911x4 c;

        b(X4 x4, Map map, InterfaceC3911x4 interfaceC3911x4) {
            this.a = x4;
            this.b = map;
            this.c = interfaceC3911x4;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.a(this.a, this.b, this.c);
            }
        }
    }

    class c implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ X4 c;
        final /* synthetic */ InterfaceC3893w4 d;

        c(String str, String str2, X4 x4, InterfaceC3893w4 interfaceC3893w4) {
            this.a = str;
            this.b = str2;
            this.c = x4;
            this.d = interfaceC3893w4;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.a(this.a, this.b, this.c, this.d);
            }
        }
    }

    class d implements Runnable {
        final /* synthetic */ JSONObject a;
        final /* synthetic */ InterfaceC3893w4 b;

        d(JSONObject jSONObject, InterfaceC3893w4 interfaceC3893w4) {
            this.a = jSONObject;
            this.b = interfaceC3893w4;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.a(this.a, this.b);
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.sdk.controller.e$e, reason: collision with other inner class name */
    class RunnableC1122e implements Runnable {
        final /* synthetic */ X4 a;

        RunnableC1122e(X4 x4) {
            this.a = x4;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.a(this.a);
            }
        }
    }

    class f implements Runnable {
        final /* synthetic */ X4 a;

        f(X4 x4) {
            this.a = x4;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.b(this.a);
            }
        }
    }

    class g implements Runnable {
        final /* synthetic */ X4 a;
        final /* synthetic */ Map b;
        final /* synthetic */ InterfaceC3893w4 c;

        g(X4 x4, Map map, InterfaceC3893w4 interfaceC3893w4) {
            this.a = x4;
            this.b = map;
            this.c = interfaceC3893w4;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.a(this.a, this.b, this.c);
            }
        }
    }

    class h implements Runnable {
        final /* synthetic */ com.ironsource.sdk.controller.l.a a;
        final /* synthetic */ com.ironsource.sdk.controller.f.c b;

        h(com.ironsource.sdk.controller.l.a aVar, com.ironsource.sdk.controller.f.c cVar) {
            this.a = aVar;
            this.b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            e eVar = e.this;
            if (eVar.b != null) {
                if (this.a != null) {
                    eVar.i.put(this.b.f(), this.a);
                }
                e.this.b.a(this.b, this.a);
            }
        }
    }

    class i implements Runnable {
        final /* synthetic */ JSONObject a;

        i(JSONObject jSONObject) {
            this.a = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.b(this.a);
            }
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.a();
                e.this.b = null;
            }
        }
    }

    class k extends CountDownTimer {
        k(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            Logger.i(e.this.a, "Global Controller Timer Finish");
            e.this.d(C3510b4.c.k);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.d();
        }
    }

    class m implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;

        m(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                e eVar = e.this;
                eVar.b = eVar.b(eVar.h.b(), e.this.h.d(), e.this.h.f(), e.this.h.e(), e.this.h.g(), e.this.h.c(), this.a, this.b);
                e.this.b.b();
            } catch (Throwable th) {
                C3801r4.d().a(th);
                e.this.d(Log.getStackTraceString(th));
            }
        }
    }

    class n extends CountDownTimer {
        n(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            Logger.i(e.this.a, "Recovered Controller | Global Controller Timer Finish");
            e.this.d(C3510b4.c.k);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
        }
    }

    class o implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ X4 c;
        final /* synthetic */ InterfaceC3929y4 d;

        o(String str, String str2, X4 x4, InterfaceC3929y4 interfaceC3929y4) {
            this.a = str;
            this.b = str2;
            this.c = x4;
            this.d = interfaceC3929y4;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.a(this.a, this.b, this.c, this.d);
            }
        }
    }

    class p implements Runnable {
        final /* synthetic */ JSONObject a;
        final /* synthetic */ InterfaceC3929y4 b;

        p(JSONObject jSONObject, InterfaceC3929y4 interfaceC3929y4) {
            this.a = jSONObject;
            this.b = interfaceC3929y4;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.a(this.a, this.b);
            }
        }
    }

    class q implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ X4 c;
        final /* synthetic */ InterfaceC3911x4 d;

        q(String str, String str2, X4 x4, InterfaceC3911x4 interfaceC3911x4) {
            this.a = str;
            this.b = str2;
            this.c = x4;
            this.d = interfaceC3911x4;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.a(this.a, this.b, this.c, this.d);
            }
        }
    }

    class r implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ InterfaceC3911x4 b;

        r(String str, InterfaceC3911x4 interfaceC3911x4) {
            this.a = str;
            this.b = interfaceC3911x4;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.a(this.a, this.b);
            }
        }
    }

    class s implements Runnable {
        final /* synthetic */ X4 a;
        final /* synthetic */ Map b;
        final /* synthetic */ InterfaceC3911x4 c;

        s(X4 x4, Map map, InterfaceC3911x4 interfaceC3911x4) {
            this.a = x4;
            this.b = map;
            this.c = interfaceC3911x4;
        }

        @Override // java.lang.Runnable
        public void run() {
            A8.a(C3700le.j, new C3879v8().a(G5.v, this.a.f()).a(G5.w, B8.a(this.a, C3843t8.e.Interstitial)).a(G5.x, Boolean.valueOf(B8.a(this.a))).a(G5.I, Long.valueOf(M.a.b(this.a.h()))).a());
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.b(this.a, this.b, this.c);
            }
        }
    }

    public e(Context context, C3565e4 c3565e4, Y4 y4, V7 v7, int i2, JSONObject jSONObject, String str, String str2, C3865uc c3865uc) {
        this.k = c3865uc;
        this.g = v7;
        String networkStorageDir = IronSourceStorageUtils.getNetworkStorageDir(context);
        C3655j5 c3655j5A = C3655j5.a(networkStorageDir, v7, jSONObject);
        this.h = new ch(context, c3565e4, y4, i2, c3655j5A, networkStorageDir);
        a(context, c3565e4, y4, i2, c3655j5A, networkStorageDir, str, str2);
    }

    private void a(final Context context, final C3565e4 c3565e4, final Y4 y4, final int i2, final C3655j5 c3655j5, final String str, final String str2, final String str3) {
        int iE = Pb.k0().h().E();
        if (iE > 0) {
            A8.a(C3700le.B, new C3879v8().a(G5.y, String.valueOf(iE)).a());
        }
        Runnable runnable = new Runnable() { // from class: com.ironsource.sdk.controller.e$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.c(context, c3565e4, y4, i2, c3655j5, str, str2, str3);
            }
        };
        if (Pb.k0().h().v()) {
            this.g.b(runnable, iE);
        } else {
            a(runnable, iE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Sb sb) {
        com.ironsource.sdk.controller.l.b bVar = this.j.get(sb.d());
        if (bVar != null) {
            bVar.a(sb);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.ironsource.sdk.controller.f.a aVar) {
        com.ironsource.sdk.controller.l.a aVarRemove = this.i.remove(aVar.c());
        if (aVarRemove != null) {
            aVarRemove.a(aVar);
        }
    }

    private void a(C3843t8.e eVar, X4 x4, String str, String str2) {
        Logger.i(this.a, "recoverWebController for product: " + eVar.toString());
        C3879v8 c3879v8 = new C3879v8();
        c3879v8.a(G5.w, eVar.toString());
        c3879v8.a(G5.v, x4.f());
        A8.a(C3700le.b, c3879v8.a());
        this.h.n();
        a();
        m mVar = new m(str, str2);
        if (Pb.k0().h().v()) {
            this.g.b(mVar);
        } else {
            b(mVar);
        }
        this.d = new n(200000L, 1000L).start();
    }

    private void a(Runnable runnable, long j2) {
        V7 v7 = this.g;
        if (v7 != null) {
            v7.d(runnable, j2);
        } else {
            Logger.e(this.a, "mThreadManager = null");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public v b(Context context, C3565e4 c3565e4, Y4 y4, int i2, C3655j5 c3655j5, String str, String str2, String str3) throws Throwable {
        A8.a(C3700le.c, new C3879v8().a(G5.y, "thread-" + Thread.currentThread().getName()).a());
        v vVar = new v(context, y4, c3565e4, this, this.g, i2, c3655j5, str, i(), j(), str2, str3);
        C3512b6 c3512b6 = new C3512b6(context, c3655j5, new HandlerC3451a6(this.g.b()), new Ub(c3655j5.a()));
        vVar.a(new u(context));
        vVar.a(new com.ironsource.sdk.controller.o(context));
        vVar.a(new com.ironsource.sdk.controller.q(context));
        vVar.a(new com.ironsource.sdk.controller.i(context));
        vVar.a(new com.ironsource.sdk.controller.a(context));
        vVar.a(new com.ironsource.sdk.controller.j(c3655j5.a(), c3512b6));
        vVar.a(new C3836t1());
        vVar.a(new B4(context, new A4()));
        return vVar;
    }

    private void b(Runnable runnable) {
        a(runnable, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(Context context, C3565e4 c3565e4, Y4 y4, int i2, C3655j5 c3655j5, String str, String str2, String str3) {
        try {
            try {
                this.d = new k(200000L, 1000L).start();
                v vVarB = b(context, c3565e4, y4, i2, c3655j5, str, str2, str3);
                this.b = vVarB;
                vVarB.b();
            } catch (Throwable th) {
                th = th;
                Throwable th2 = th;
                C3801r4.d().a(th2);
                d(Log.getStackTraceString(th2));
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str) {
        A8.a(C3700le.d, new C3879v8().a(G5.A, str).a());
        this.c = C3843t8.b.Loading;
        this.b = new com.ironsource.sdk.controller.n(str, this.g);
        this.e.c();
        this.e.a();
        V7 v7 = this.g;
        if (v7 != null) {
            v7.c(new l());
        }
    }

    private void e(String str) {
        IronSourceNetwork.updateInitFailed(new C3861u8(1001, str));
    }

    private com.ironsource.sdk.controller.l.a i() {
        return new com.ironsource.sdk.controller.l.a() { // from class: com.ironsource.sdk.controller.e$$ExternalSyntheticLambda1
            @Override // com.ironsource.sdk.controller.l.a
            public final void a(f.a aVar) {
                this.f$0.a(aVar);
            }
        };
    }

    private com.ironsource.sdk.controller.l.b j() {
        return new com.ironsource.sdk.controller.l.b() { // from class: com.ironsource.sdk.controller.e$$ExternalSyntheticLambda2
            @Override // com.ironsource.sdk.controller.l.b
            public final void a(Sb sb) {
                this.f$0.a(sb);
            }
        };
    }

    private void l() {
        Logger.i(this.a, "handleReadyState");
        this.c = C3843t8.b.Ready;
        CountDownTimer countDownTimer = this.d;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        n();
        this.f.c();
        this.f.a();
        com.ironsource.sdk.controller.l lVar = this.b;
        if (lVar != null) {
            lVar.f();
        }
    }

    private boolean m() {
        return C3843t8.b.Ready.equals(this.c);
    }

    private void n() {
        this.h.a(true);
        com.ironsource.sdk.controller.l lVar = this.b;
        if (lVar != null) {
            lVar.a(this.h.i());
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void a() {
        Logger.i(this.a, "destroy controller");
        CountDownTimer countDownTimer = this.d;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        Q3 q3 = this.f;
        if (q3 != null) {
            q3.b();
        }
        this.d = null;
        b(new j());
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(Activity activity) {
        this.b.a(activity);
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(Context context) {
        com.ironsource.sdk.controller.l lVar;
        if (!m() || (lVar = this.b) == null) {
            return;
        }
        lVar.a(context);
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(X4 x4) {
        this.f.a(new RunnableC1122e(x4));
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(X4 x4, Map<String, String> map, InterfaceC3893w4 interfaceC3893w4) {
        this.f.a(new g(x4, map, interfaceC3893w4));
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(X4 x4, Map<String, String> map, InterfaceC3911x4 interfaceC3911x4) {
        this.f.a(new b(x4, map, interfaceC3911x4));
    }

    @Override // com.ironsource.InterfaceC3568e7
    public void a(InterfaceC3452a7 interfaceC3452a7) {
        EnumC3531c7 enumC3531c7B = interfaceC3452a7.b();
        if (enumC3531c7B == EnumC3531c7.SendEvent) {
            A8.a(C3700le.A, new C3879v8().a(G5.y, interfaceC3452a7.a() + " : strategy: " + enumC3531c7B).a());
            return;
        }
        if (enumC3531c7B == EnumC3531c7.NativeController) {
            com.ironsource.sdk.controller.n nVar = new com.ironsource.sdk.controller.n(interfaceC3452a7.a(), this.g);
            this.b = nVar;
            this.k.a(nVar.h());
            A8.a(C3700le.d, new C3879v8().a(G5.A, interfaceC3452a7.a() + " : strategy: " + enumC3531c7B).a());
            A8.a(C3700le.A, new C3879v8().a(G5.y, interfaceC3452a7.a() + " : strategy: " + enumC3531c7B).a());
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(com.ironsource.sdk.controller.f.c cVar, com.ironsource.sdk.controller.l.a aVar) {
        this.f.a(new h(aVar, cVar));
    }

    public void a(Runnable runnable) {
        this.e.a(runnable);
    }

    public void a(String str, com.ironsource.sdk.controller.l.b bVar) {
        this.j.put(str, bVar);
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(String str, InterfaceC3911x4 interfaceC3911x4) {
        Logger.i(this.a, "load interstitial");
        this.f.a(new r(str, interfaceC3911x4));
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(String str, String str2, X4 x4, InterfaceC3893w4 interfaceC3893w4) {
        if (this.h.a(h(), this.c)) {
            a(C3843t8.e.Banner, x4, str, str2);
        }
        this.f.a(new c(str, str2, x4, interfaceC3893w4));
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(String str, String str2, X4 x4, InterfaceC3911x4 interfaceC3911x4) {
        if (this.h.a(h(), this.c)) {
            a(C3843t8.e.Interstitial, x4, str, str2);
        }
        this.f.a(new q(str, str2, x4, interfaceC3911x4));
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(String str, String str2, X4 x4, InterfaceC3929y4 interfaceC3929y4) {
        if (this.h.a(h(), this.c)) {
            a(C3843t8.e.RewardedVideo, x4, str, str2);
        }
        this.f.a(new o(str, str2, x4, interfaceC3929y4));
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(JSONObject jSONObject) {
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(JSONObject jSONObject, InterfaceC3893w4 interfaceC3893w4) {
        this.f.a(new d(jSONObject, interfaceC3893w4));
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(JSONObject jSONObject, InterfaceC3911x4 interfaceC3911x4) {
        this.f.a(new a(jSONObject, interfaceC3911x4));
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(JSONObject jSONObject, InterfaceC3929y4 interfaceC3929y4) {
        this.f.a(new p(jSONObject, interfaceC3929y4));
    }

    @Override // com.ironsource.sdk.controller.l
    public boolean a(String str) {
        if (this.b == null || !m()) {
            return false;
        }
        return this.b.a(str);
    }

    @Override // com.ironsource.sdk.controller.l
    public void b() {
    }

    @Override // com.ironsource.sdk.controller.l
    public void b(Context context) {
        com.ironsource.sdk.controller.l lVar;
        if (!m() || (lVar = this.b) == null) {
            return;
        }
        lVar.b(context);
    }

    @Override // com.ironsource.sdk.controller.l
    public void b(X4 x4) {
        this.f.a(new f(x4));
    }

    @Override // com.ironsource.sdk.controller.l
    public void b(X4 x4, Map<String, String> map, InterfaceC3911x4 interfaceC3911x4) {
        this.f.a(new s(x4, map, interfaceC3911x4));
    }

    @Override // com.ironsource.sdk.controller.c
    public void b(String str) {
        A8.a(C3700le.y, new C3879v8().a(G5.y, str).a());
        CountDownTimer countDownTimer = this.d;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        d(str);
    }

    @Override // com.ironsource.sdk.controller.l
    public void b(JSONObject jSONObject) {
        this.f.a(new i(jSONObject));
    }

    @Override // com.ironsource.sdk.controller.c
    public void c() {
        Logger.i(this.a, "handleControllerLoaded");
        this.c = C3843t8.b.Loaded;
        this.e.c();
        this.e.a();
    }

    @Override // com.ironsource.sdk.controller.c
    public void c(String str) {
        Logger.i(this.a, "handleControllerFailed ");
        C3879v8 c3879v8 = new C3879v8();
        c3879v8.a(G5.A, str);
        c3879v8.a(G5.y, String.valueOf(this.h.l()));
        A8.a(C3700le.o, c3879v8.a());
        this.h.a(false);
        e(str);
        if (this.d != null) {
            Logger.i(this.a, "cancel timer mControllerReadyTimer");
            this.d.cancel();
        }
        d(str);
    }

    @Override // com.ironsource.sdk.controller.c
    public void d() {
        Logger.i(this.a, "handleControllerReady ");
        this.k.a(h());
        if (C3843t8.c.Web.equals(h())) {
            A8.a(C3700le.e, new C3879v8().a(G5.y, String.valueOf(this.h.l())).a());
            IronSourceNetwork.updateInitSucceeded();
        }
        l();
    }

    @Override // com.ironsource.sdk.controller.l
    public void e() {
        com.ironsource.sdk.controller.l lVar;
        if (!m() || (lVar = this.b) == null) {
            return;
        }
        lVar.e();
    }

    @Override // com.ironsource.sdk.controller.l
    @Deprecated
    public void f() {
    }

    @Override // com.ironsource.sdk.controller.l
    public void g() {
        com.ironsource.sdk.controller.l lVar;
        if (!m() || (lVar = this.b) == null) {
            return;
        }
        lVar.g();
    }

    @Override // com.ironsource.sdk.controller.l
    public C3843t8.c h() {
        com.ironsource.sdk.controller.l lVar = this.b;
        return lVar != null ? lVar.h() : C3843t8.c.None;
    }

    public com.ironsource.sdk.controller.l k() {
        return this.b;
    }
}
