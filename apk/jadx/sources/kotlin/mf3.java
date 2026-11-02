package kotlin;

import android.app.Activity;
import android.content.Context;
import android.view.InputEvent;
import android.view.MotionEvent;
import android.view.View;
import com.google.common.base.Strings;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.FluentFuture;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final class mf3 implements hf3 {
    public final rj3 a;
    public final cw2 b;
    public final vv2 c;
    public final lh2 d;
    public final ExecutorService e;
    public final Executor f;
    public final hl3 g;
    public final ts3 h;
    public final Object i = new Object();
    public final String j;
    public final long k;
    public final long l;
    public final boolean m;
    public final boolean n;
    public final boolean o;
    public lf3 p;

    public mf3(rj3 rj3Var, dw2 dw2Var, vv2 vv2Var, lh2 lh2Var, hl3 hl3Var, ts3 ts3Var, na naVar, ExecutorService executorService) {
        this.a = rj3Var;
        this.b = dw2Var;
        this.c = vv2Var;
        this.d = lh2Var;
        this.e = executorService;
        this.g = hl3Var;
        this.h = ts3Var;
        this.j = naVar.M();
        this.k = naVar.O();
        this.l = naVar.K();
        this.m = naVar.w();
        this.n = naVar.J();
        boolean zC = naVar.C();
        this.o = zC;
        this.f = zC ? MoreExecutors.newSequentialExecutor(executorService) : executorService;
    }

    public static /* synthetic */ iv2 a(Throwable th) {
        return null;
    }

    @Override // kotlin.hf3
    public final ListenableFuture a() {
        return this.n ? d() : FluentFuture.from(this.d.a()).catching(Throwable.class, new com.google.common.base.Function() { // from class: ads_mobile_sdk.mf3$$ExternalSyntheticLambda6
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return mf3.a((Throwable) obj);
            }
        }, this.e).transformAsync(new AsyncFunction() { // from class: ads_mobile_sdk.mf3$$ExternalSyntheticLambda7
            @Override // com.google.common.util.concurrent.AsyncFunction
            public final ListenableFuture apply(Object obj) {
                return this.f$0.a((iv2) obj);
            }
        }, this.e).catchingAsync(Throwable.class, new AsyncFunction() { // from class: ads_mobile_sdk.mf3$$ExternalSyntheticLambda8
            @Override // com.google.common.util.concurrent.AsyncFunction
            public final ListenableFuture apply(Object obj) {
                return this.f$0.b((Throwable) obj);
            }
        }, MoreExecutors.directExecutor());
    }

    public final ListenableFuture a(iv2 iv2Var) {
        if (iv2Var != null) {
            rj3 rj3Var = this.a;
            yh1.c cVarV = iv2Var.v();
            st1 st1Var = (st1) rj3Var;
            synchronized (st1Var.n) {
                st1Var.q.a(cVarV);
            }
        }
        if (this.c.b(iv2Var)) {
            return Futures.transform(this.d.b(), new com.google.common.base.Function() { // from class: ads_mobile_sdk.mf3$$ExternalSyntheticLambda3
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    return this.f$0.b((byte[]) obj);
                }
            }, MoreExecutors.directExecutor());
        }
        this.h.b(lq0.EVENT_ID_ORCAS_ENGINE_INIT_SKIP_INVALID_METADATA);
        throw new kf3(1);
    }

    @Override // kotlin.hf3
    public final ListenableFuture a(final Context context) {
        return Futures.submit(new Callable() { // from class: ads_mobile_sdk.mf3$$ExternalSyntheticLambda11
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.c(context);
            }
        }, this.e);
    }

    @Override // kotlin.hf3
    public final ListenableFuture a(final Context context, final String str, final View view, final Activity activity) {
        return Futures.submit(new Callable() { // from class: ads_mobile_sdk.mf3$$ExternalSyntheticLambda4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.f(context, str, view, activity);
            }
        }, this.e);
    }

    public final String a(HashMap map) {
        ts3 ts3Var = this.h;
        qr3 qr3Var = new qr3(lq0.EVENT_ID_ORCAS_ENGINE_COLLECT_SIGNAL_VM_INVOCATION, ts3Var.b, ts3Var.a);
        try {
            qr3Var.b();
            synchronized (this.i) {
                lf3 lf3Var = this.p;
                if (lf3Var == null) {
                    this.h.b(lq0.EVENT_ID_ORCAS_ENGINE_COLLECT_SIGNAL_NULL_HOLDER);
                    qr3Var.a();
                    return "";
                }
                String strA = lf3Var.a(map);
                qr3Var.a();
                return strA;
            }
        } catch (Throwable th) {
            try {
                qr3Var.a(th);
                throw th;
            } catch (Throwable th2) {
                qr3Var.a();
                throw th2;
            }
        }
    }

    public final /* synthetic */ Void a(byte[] bArr) {
        a((iy3) this.b.get(), bArr, true);
        return null;
    }

    public final void a(iy3 iy3Var, byte[] bArr, boolean z) {
        ts3 ts3Var = this.h;
        qr3 qr3Var = new qr3(lq0.EVENT_ID_ORCAS_ENGINE_INIT_VM_LOAD, ts3Var.b, ts3Var.a);
        try {
            try {
                qr3Var.b();
                synchronized (this.i) {
                    this.p = lf3.a(iy3Var, bArr, z);
                }
                qr3Var.a();
            } catch (lp1 e) {
                e = e;
                qr3Var.a(e);
                throw new kf3(e);
            } catch (my3 e2) {
                e = e2;
                qr3Var.a(e);
                throw new kf3(e);
            } catch (Throwable th) {
                qr3Var.a(th);
                throw th;
            }
        } catch (Throwable th2) {
            qr3Var.a();
            throw th2;
        }
    }

    @Override // kotlin.hf3
    public final void a(final InputEvent inputEvent) {
        if (!this.o) {
            b(inputEvent);
            return;
        }
        if (inputEvent instanceof MotionEvent) {
            inputEvent = MotionEvent.obtain((MotionEvent) inputEvent);
        }
        this.f.execute(new Runnable() { // from class: ads_mobile_sdk.mf3$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.c(inputEvent);
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:108:0x0167  */
    /* JADX WARN: Code duplicated, block: B:110:0x016e  */
    /* JADX WARN: Code duplicated, block: B:112:0x0175  */
    /* JADX WARN: Code duplicated, block: B:69:0x00da  */
    /* JADX WARN: Code duplicated, block: B:70:0x00db  */
    /* JADX WARN: Code duplicated, block: B:85:0x010e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:89:0x0130  */
    /* JADX WARN: Multi-variable type inference failed */
    public final void a(Map map) {
        String strW;
        String strW2;
        Long lValueOf;
        qr3 qr3Var;
        String str;
        Throwable cause;
        map.put("v", this.j);
        ListenableFuture listenableFuture = (ListenableFuture) map.get("gs");
        ListenableFuture listenableFuture2 = (ListenableFuture) map.get("ai");
        long jV = -1;
        String str2 = null;
        if (listenableFuture != null) {
            ts3 ts3Var = this.h;
            qr3 qr3Var2 = new qr3(lq0.EVENT_ID_ORCAS_ENGINE_COMPOSE_GASS_SIGNAL_STATE, ts3Var.b, ts3Var.a);
            try {
                try {
                    qr3Var2.b();
                    fh fhVar = (fh) listenableFuture.get(this.l, TimeUnit.MILLISECONDS);
                    if (fhVar != null) {
                        if (fhVar.C()) {
                            xh xhVarY = fhVar.y();
                            String strA = xhVarY.y() ? xhVarY.v().a(StandardCharsets.ISO_8859_1) : null;
                            try {
                                lValueOf = xhVarY.A() ? Long.valueOf(xhVarY.x()) : null;
                                try {
                                    strW2 = xhVarY.z() ? xhVarY.w() : null;
                                    str2 = strA;
                                } catch (ClassCastException e) {
                                    e = e;
                                    strW2 = null;
                                    str2 = strA;
                                    strW = "E";
                                    qr3Var2.a(e);
                                    if (strW.equals("E")) {
                                        ts3 ts3Var2 = this.h;
                                        qr3Var = new qr3(lq0.EVENT_ID_ORCAS_ENGINE_COMPOSE_LOCAL_INT_SIGNAL_STATE, ts3Var2.b, ts3Var2.a);
                                        try {
                                            qr3Var.b();
                                            str = (String) listenableFuture2.get(this.k, TimeUnit.MILLISECONDS);
                                            if (!Strings.isNullOrEmpty(str)) {
                                                strW = str;
                                            }
                                        } catch (ClassCastException e2) {
                                            qr3Var.a(e2);
                                        } catch (TimeoutException unused) {
                                            this.h.b(lq0.EVENT_ID_ORCAS_ENGINE_COMPOSE_LOCAL_INT_SIGNAL_TIMEOUT);
                                        } catch (InterruptedException unused2) {
                                            Thread.currentThread().interrupt();
                                        } catch (ExecutionException e3) {
                                            e = e3;
                                            Throwable cause2 = e.getCause();
                                            if (cause2 != null) {
                                                e = cause2;
                                            }
                                            qr3Var.a(e);
                                        } finally {
                                            qr3Var.a();
                                        }
                                    }
                                    map.put("int", strW);
                                    if (str2 != null) {
                                        map.put("att", str2);
                                    }
                                    if (lValueOf != null) {
                                        map.put("attts", lValueOf);
                                    }
                                    if (strW2 != null) {
                                        map.put("attkid", strW2);
                                    }
                                    map.put("gv", Long.valueOf(jV));
                                } catch (InterruptedException unused3) {
                                    strW2 = null;
                                    str2 = strA;
                                    strW = "E";
                                    Thread.currentThread().interrupt();
                                    if (strW.equals("E")) {
                                        ts3 ts3Var3 = this.h;
                                        qr3Var = new qr3(lq0.EVENT_ID_ORCAS_ENGINE_COMPOSE_LOCAL_INT_SIGNAL_STATE, ts3Var3.b, ts3Var3.a);
                                        qr3Var.b();
                                        str = (String) listenableFuture2.get(this.k, TimeUnit.MILLISECONDS);
                                        if (!Strings.isNullOrEmpty(str)) {
                                            strW = str;
                                        }
                                    }
                                    map.put("int", strW);
                                    if (str2 != null) {
                                        map.put("att", str2);
                                    }
                                    if (lValueOf != null) {
                                        map.put("attts", lValueOf);
                                    }
                                    if (strW2 != null) {
                                        map.put("attkid", strW2);
                                    }
                                    map.put("gv", Long.valueOf(jV));
                                } catch (ExecutionException e4) {
                                    e = e4;
                                    strW2 = null;
                                    str2 = strA;
                                    strW = "E";
                                    cause = e.getCause();
                                    if (cause != null) {
                                        e = cause;
                                    }
                                    qr3Var2.a(e);
                                    if (strW.equals("E")) {
                                        ts3 ts3Var4 = this.h;
                                        qr3Var = new qr3(lq0.EVENT_ID_ORCAS_ENGINE_COMPOSE_LOCAL_INT_SIGNAL_STATE, ts3Var4.b, ts3Var4.a);
                                        qr3Var.b();
                                        str = (String) listenableFuture2.get(this.k, TimeUnit.MILLISECONDS);
                                        if (!Strings.isNullOrEmpty(str)) {
                                            strW = str;
                                        }
                                    }
                                    map.put("int", strW);
                                    if (str2 != null) {
                                        map.put("att", str2);
                                    }
                                    if (lValueOf != null) {
                                        map.put("attts", lValueOf);
                                    }
                                    if (strW2 != null) {
                                        map.put("attkid", strW2);
                                    }
                                    map.put("gv", Long.valueOf(jV));
                                } catch (TimeoutException unused4) {
                                    strW2 = null;
                                    str2 = strA;
                                    strW = "E";
                                    this.h.b(lq0.EVENT_ID_ORCAS_ENGINE_COMPOSE_GASS_SIGNAL_TIMEOUT);
                                    if (strW.equals("E")) {
                                        ts3 ts3Var5 = this.h;
                                        qr3Var = new qr3(lq0.EVENT_ID_ORCAS_ENGINE_COMPOSE_LOCAL_INT_SIGNAL_STATE, ts3Var5.b, ts3Var5.a);
                                        qr3Var.b();
                                        str = (String) listenableFuture2.get(this.k, TimeUnit.MILLISECONDS);
                                        if (!Strings.isNullOrEmpty(str)) {
                                            strW = str;
                                        }
                                    }
                                    map.put("int", strW);
                                    if (str2 != null) {
                                        map.put("att", str2);
                                    }
                                    if (lValueOf != null) {
                                        map.put("attts", lValueOf);
                                    }
                                    if (strW2 != null) {
                                        map.put("attkid", strW2);
                                    }
                                    map.put("gv", Long.valueOf(jV));
                                }
                            } catch (ClassCastException e5) {
                                e = e5;
                                strW2 = null;
                                lValueOf = null;
                            } catch (InterruptedException unused5) {
                                strW2 = null;
                                lValueOf = null;
                            } catch (ExecutionException e6) {
                                e = e6;
                                strW2 = null;
                                lValueOf = null;
                            } catch (TimeoutException unused6) {
                                strW2 = null;
                                lValueOf = null;
                            }
                        } else {
                            strW2 = null;
                            lValueOf = null;
                        }
                        try {
                            strW = (fhVar.w().length() <= 1 || fhVar.w().equals("0000000000000000000000000000000000000000000000000000000000000000")) ? "E" : fhVar.w();
                            try {
                                if (fhVar.A()) {
                                    jV = fhVar.v();
                                }
                            } catch (ClassCastException e7) {
                                e = e7;
                                qr3Var2.a(e);
                            } catch (InterruptedException unused7) {
                                Thread.currentThread().interrupt();
                            } catch (ExecutionException e8) {
                                e = e8;
                                cause = e.getCause();
                                if (cause != null) {
                                    e = cause;
                                }
                                qr3Var2.a(e);
                            } catch (TimeoutException unused8) {
                                this.h.b(lq0.EVENT_ID_ORCAS_ENGINE_COMPOSE_GASS_SIGNAL_TIMEOUT);
                            }
                        } catch (ClassCastException e9) {
                            e = e9;
                            strW = "E";
                            qr3Var2.a(e);
                            if (strW.equals("E")) {
                                ts3 ts3Var6 = this.h;
                                qr3Var = new qr3(lq0.EVENT_ID_ORCAS_ENGINE_COMPOSE_LOCAL_INT_SIGNAL_STATE, ts3Var6.b, ts3Var6.a);
                                qr3Var.b();
                                str = (String) listenableFuture2.get(this.k, TimeUnit.MILLISECONDS);
                                if (!Strings.isNullOrEmpty(str)) {
                                    strW = str;
                                }
                            }
                            map.put("int", strW);
                            if (str2 != null) {
                                map.put("att", str2);
                            }
                            if (lValueOf != null) {
                                map.put("attts", lValueOf);
                            }
                            if (strW2 != null) {
                                map.put("attkid", strW2);
                            }
                            map.put("gv", Long.valueOf(jV));
                        } catch (InterruptedException unused9) {
                            strW = "E";
                            Thread.currentThread().interrupt();
                            if (strW.equals("E")) {
                                ts3 ts3Var7 = this.h;
                                qr3Var = new qr3(lq0.EVENT_ID_ORCAS_ENGINE_COMPOSE_LOCAL_INT_SIGNAL_STATE, ts3Var7.b, ts3Var7.a);
                                qr3Var.b();
                                str = (String) listenableFuture2.get(this.k, TimeUnit.MILLISECONDS);
                                if (!Strings.isNullOrEmpty(str)) {
                                    strW = str;
                                }
                            }
                            map.put("int", strW);
                            if (str2 != null) {
                                map.put("att", str2);
                            }
                            if (lValueOf != null) {
                                map.put("attts", lValueOf);
                            }
                            if (strW2 != null) {
                                map.put("attkid", strW2);
                            }
                            map.put("gv", Long.valueOf(jV));
                        } catch (ExecutionException e10) {
                            e = e10;
                            strW = "E";
                            cause = e.getCause();
                            if (cause != null) {
                                e = cause;
                            }
                            qr3Var2.a(e);
                            if (strW.equals("E")) {
                                ts3 ts3Var8 = this.h;
                                qr3Var = new qr3(lq0.EVENT_ID_ORCAS_ENGINE_COMPOSE_LOCAL_INT_SIGNAL_STATE, ts3Var8.b, ts3Var8.a);
                                qr3Var.b();
                                str = (String) listenableFuture2.get(this.k, TimeUnit.MILLISECONDS);
                                if (!Strings.isNullOrEmpty(str)) {
                                    strW = str;
                                }
                            }
                            map.put("int", strW);
                            if (str2 != null) {
                                map.put("att", str2);
                            }
                            if (lValueOf != null) {
                                map.put("attts", lValueOf);
                            }
                            if (strW2 != null) {
                                map.put("attkid", strW2);
                            }
                            map.put("gv", Long.valueOf(jV));
                        } catch (TimeoutException unused10) {
                            strW = "E";
                            this.h.b(lq0.EVENT_ID_ORCAS_ENGINE_COMPOSE_GASS_SIGNAL_TIMEOUT);
                            if (strW.equals("E")) {
                                ts3 ts3Var9 = this.h;
                                qr3Var = new qr3(lq0.EVENT_ID_ORCAS_ENGINE_COMPOSE_LOCAL_INT_SIGNAL_STATE, ts3Var9.b, ts3Var9.a);
                                qr3Var.b();
                                str = (String) listenableFuture2.get(this.k, TimeUnit.MILLISECONDS);
                                if (!Strings.isNullOrEmpty(str)) {
                                    strW = str;
                                }
                            }
                            map.put("int", strW);
                            if (str2 != null) {
                                map.put("att", str2);
                            }
                            if (lValueOf != null) {
                                map.put("attts", lValueOf);
                            }
                            if (strW2 != null) {
                                map.put("attkid", strW2);
                            }
                            map.put("gv", Long.valueOf(jV));
                        }
                    } else {
                        strW = "E";
                        strW2 = null;
                        lValueOf = null;
                    }
                } finally {
                    qr3Var2.a();
                }
            } catch (ClassCastException e11) {
                e = e11;
                strW = "E";
                strW2 = null;
                lValueOf = null;
            } catch (InterruptedException unused11) {
                strW = "E";
                strW2 = null;
                lValueOf = null;
            } catch (ExecutionException e12) {
                e = e12;
                strW = "E";
                strW2 = null;
                lValueOf = null;
            } catch (TimeoutException unused12) {
                strW = "E";
                strW2 = null;
                lValueOf = null;
            }
        } else {
            strW = "E";
            strW2 = null;
            lValueOf = null;
        }
        if (strW.equals("E") && listenableFuture2 != null) {
            ts3 ts3Var10 = this.h;
            qr3Var = new qr3(lq0.EVENT_ID_ORCAS_ENGINE_COMPOSE_LOCAL_INT_SIGNAL_STATE, ts3Var10.b, ts3Var10.a);
            qr3Var.b();
            str = (String) listenableFuture2.get(this.k, TimeUnit.MILLISECONDS);
            if (!Strings.isNullOrEmpty(str)) {
                strW = str;
            }
        }
        map.put("int", strW);
        if (str2 != null) {
            map.put("att", str2);
        }
        if (lValueOf != null) {
            map.put("attts", lValueOf);
        }
        if (strW2 != null) {
            map.put("attkid", strW2);
        }
        map.put("gv", Long.valueOf(jV));
    }

    public final void a(Map map, Context context) {
        hl3 hl3Var = this.g;
        hl3Var.getClass();
        HashMap map2 = new HashMap();
        Iterator it = hl3Var.a.iterator();
        while (it.hasNext()) {
            ((bt3) it.next()).a(map2);
        }
        map.putAll(map2);
        a(map);
        map.put("f", "q");
        map.put("ctx", context);
    }

    public final void a(Map map, Context context, View view, Activity activity, String str) {
        hl3 hl3Var = this.g;
        hl3Var.getClass();
        HashMap map2 = new HashMap();
        Iterator it = hl3Var.a.iterator();
        while (it.hasNext()) {
            ((bt3) it.next()).b(map2);
        }
        map.putAll(map2);
        a(map);
        map.put("f", "c");
        map.put("ctx", context);
        map.put("view", view);
        map.put("act", activity);
        map.put("bds", str);
    }

    @Override // kotlin.hf3
    public final ListenableFuture b(final Context context, final String str, final View view, final Activity activity) {
        return Futures.submit(new Callable() { // from class: ads_mobile_sdk.mf3$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.e(context, str, view, activity);
            }
        }, this.f);
    }

    public final ListenableFuture b(Throwable th) {
        return this.m ? d() : Futures.immediateFailedFuture(th);
    }

    @Override // kotlin.hf3
    public final String b() {
        synchronized (this.i) {
            lf3 lf3Var = this.p;
            if (lf3Var == null) {
                return "3.975916745.-1";
            }
            return lf3Var.d;
        }
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final String c(final Context context) {
        final HashMap map = new HashMap();
        this.h.a(lq0.EVENT_ID_ORCAS_ENGINE_COMPOSE_STATE, new Runnable() { // from class: ads_mobile_sdk.mf3$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(map, context);
            }
        });
        String strA = a(map);
        map.clear();
        return strA;
    }

    public final /* synthetic */ Void b(byte[] bArr) {
        a((iy3) this.b.get(), bArr, false);
        return null;
    }

    public final void b(InputEvent inputEvent) {
        try {
            synchronized (this.i) {
                lf3 lf3Var = this.p;
                if (lf3Var != null) {
                    HashMap map = new HashMap();
                    map.put("evt", inputEvent);
                    lf3Var.b(map);
                } else {
                    this.h.b(lq0.EVENT_ID_ORCAS_ENGINE_REPORT_TOUCH_EVENT_NULL_HOLDER);
                }
            }
        } catch (lp1 | my3 e) {
            ts3 ts3Var = this.h;
            lq0 lq0Var = lq0.EVENT_ID_UNSPECIFIED;
            ((st1) ts3Var.a).a(20103, -1L, e, null);
        }
    }

    public final void b(Map map, Context context, View view, Activity activity, String str) {
        hl3 hl3Var = this.g;
        hl3Var.getClass();
        HashMap map2 = new HashMap();
        Iterator it = hl3Var.a.iterator();
        while (it.hasNext()) {
            ((bt3) it.next()).a(map2, context, view);
        }
        map.putAll(map2);
        a(map);
        map.put("f", "v");
        map.put("ctx", context);
        map.put("view", view);
        map.put("act", activity);
        map.put("bds", str);
    }

    @Override // kotlin.hf3
    public final kb c() {
        return kb.ADSHIELD_VERSION_3;
    }

    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final String e(final Context context, final String str, final View view, final Activity activity) {
        final HashMap map = new HashMap();
        this.h.a(lq0.EVENT_ID_ORCAS_ENGINE_COMPOSE_STATE, new Runnable() { // from class: ads_mobile_sdk.mf3$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(map, context, view, activity, str);
            }
        });
        String strA = a(map);
        map.clear();
        return strA;
    }

    public final /* synthetic */ void c(InputEvent inputEvent) {
        try {
            b(inputEvent);
        } finally {
            if (inputEvent instanceof MotionEvent) {
                ((MotionEvent) inputEvent).recycle();
            }
        }
    }

    public final ListenableFuture d() {
        return Futures.transform(this.d.d(), new com.google.common.base.Function() { // from class: ads_mobile_sdk.mf3$$ExternalSyntheticLambda0
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return this.f$0.a((byte[]) obj);
            }
        }, MoreExecutors.directExecutor());
    }

    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final String f(final Context context, final String str, final View view, final Activity activity) {
        final HashMap map = new HashMap();
        this.h.a(lq0.EVENT_ID_ORCAS_ENGINE_COMPOSE_STATE, new Runnable() { // from class: ads_mobile_sdk.mf3$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b(map, context, view, activity, str);
            }
        });
        String strA = a(map);
        map.clear();
        return strA;
    }
}
