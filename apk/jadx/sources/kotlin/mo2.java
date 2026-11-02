package kotlin;

import android.app.Activity;
import android.content.Context;
import android.os.IBinder;
import android.view.View;
import android.view.Window;
import com.google.android.play.core.hsdp.service.HsdpPrewarmRequest;
import com.ironsource.C3510b4;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class mo2 implements ai1 {
    public final i2 a;
    public final ro2 b;
    public final ex0 c;
    public final g83 d;
    public final p61 e;
    public final ur3 f;
    public final CoroutineScope g;
    public final f0 h;

    public mo2(Context context, i2 adConfiguration, ro2 playPrewarmManager, ex0 flags, g83 rootTraceCreator, p61 hsdpDeepLinkServiceWrapper, ur3 traceLogger, CoroutineScope backgroundScope, f0 activityTracker) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(playPrewarmManager, "playPrewarmManager");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(hsdpDeepLinkServiceWrapper, "hsdpDeepLinkServiceWrapper");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        this.a = adConfiguration;
        this.b = playPrewarmManager;
        this.c = flags;
        this.d = rootTraceCreator;
        this.e = hsdpDeepLinkServiceWrapper;
        this.f = traceLogger;
        this.g = backgroundScope;
        this.h = activityTracker;
    }

    /* JADX WARN: Code duplicated, block: B:67:0x0106  */
    /* JADX WARN: Code duplicated, block: B:70:0x010d  */
    /* JADX WARN: Code duplicated, block: B:72:0x011b  */
    /* JADX WARN: Code duplicated, block: B:76:0x0156  */
    /* JADX WARN: Code duplicated, block: B:77:0x0160  */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object a(mo2 mo2Var, boolean z, Continuation continuation) {
        jo2 jo2Var;
        HsdpPrewarmRequest hsdpPrewarmRequestBuild;
        t61 t61Var;
        mo2 mo2Var2;
        t61 t61Var2;
        Window window;
        View decorView;
        uj2 uj2VarE;
        ex0 ex0Var;
        String message;
        mo2Var.getClass();
        if (continuation instanceof jo2) {
            jo2Var = (jo2) continuation;
            int i = jo2Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                jo2Var.e = i - Integer.MIN_VALUE;
            } else {
                jo2Var = new jo2(mo2Var, continuation);
            }
        } else {
            jo2Var = new jo2(mo2Var, continuation);
        }
        Object obj = jo2Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = jo2Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            uo2 uo2Var = mo2Var.a.w0;
            if (uo2Var == null) {
                return p005kotlin.Unit.INSTANCE;
            }
            String str = uo2Var.e;
            if (!z || str.length() <= 0) {
                hsdpPrewarmRequestBuild = null;
            } else {
                HsdpPrewarmRequest.Builder targetAppPackageName = HsdpPrewarmRequest.builder().setTargetAppPackageName(str);
                if (uo2Var.g.length() > 0) {
                    targetAppPackageName.setReferrer(uo2Var.g);
                }
                if (!uo2Var.h.isEmpty()) {
                    targetAppPackageName.setExtraQueryParams(uo2Var.h);
                }
                ex0 ex0Var2 = mo2Var.c;
                ex0Var2.getClass();
                Intrinsics.checkNotNullParameter("gads:hsdp_service_pass_activity_token:enabled", C3510b4.i.W);
                if (((Boolean) ex0Var2.a("gads:hsdp_service_pass_activity_token:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                    Activity activityG = mo2Var.h.g();
                    IBinder windowToken = (activityG == null || (window = activityG.getWindow()) == null || (decorView = window.getDecorView()) == null) ? null : decorView.getWindowToken();
                    if (windowToken != null) {
                        targetAppPackageName.setWindowToken(windowToken);
                    }
                }
                hsdpPrewarmRequestBuild = targetAppPackageName.build();
            }
            t61Var = (!z || str.length() <= 0) ? t61.PREWARM : t61.PREFETCH;
            try {
                p61 p61Var = mo2Var.e;
                jo2Var.a = mo2Var;
                jo2Var.b = t61Var;
                jo2Var.e = 1;
                if (p61Var.a(hsdpPrewarmRequestBuild, jo2Var) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                t61 t61Var3 = t61Var;
                mo2Var2 = mo2Var;
                t61Var2 = t61Var3;
            } catch (Exception e) {
                exception = e;
                rr3 rr3Var = hs3.b().a;
                if (rr3Var != null) {
                }
                if (uj2VarE != null) {
                    s61 s61VarA = u61.v().a(t61Var);
                    message = exception.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    uj2VarE.I = (u61) s61VarA.a(message).b();
                }
                Intrinsics.checkNotNullParameter(exception, "exception");
                rr3 rr3VarA = hs3.a();
                rr3VarA.e().m = false;
                rr3VarA.a(exception);
                ex0Var = mo2Var.c;
                ex0Var.getClass();
                Intrinsics.checkNotNullParameter("gads:hsdp_unsampled_crash_reporting:enabled", C3510b4.i.W);
                if (((Boolean) ex0Var.a("gads:hsdp_unsampled_crash_reporting:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                    ((as3) mo2Var.f).a("HsdpServiceUnsampled.prewarm", exception);
                } else {
                    ((as3) mo2Var.f).a("HsdpService.prewarm", (Throwable) exception);
                }
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            t61Var2 = jo2Var.b;
            mo2Var2 = jo2Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
            } catch (Exception e2) {
                exception = e2;
                mo2 mo2Var3 = mo2Var2;
                t61Var = t61Var2;
                mo2Var = mo2Var3;
                rr3 rr3Var2 = hs3.b().a;
                uj2VarE = rr3Var2 != null ? rr3Var2.e() : null;
                if (uj2VarE != null) {
                    s61 s61VarA2 = u61.v().a(t61Var);
                    message = exception.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    uj2VarE.I = (u61) s61VarA2.a(message).b();
                }
                Intrinsics.checkNotNullParameter(exception, "exception");
                rr3 rr3VarA2 = hs3.a();
                rr3VarA2.e().m = false;
                rr3VarA2.a(exception);
                ex0Var = mo2Var.c;
                ex0Var.getClass();
                Intrinsics.checkNotNullParameter("gads:hsdp_unsampled_crash_reporting:enabled", C3510b4.i.W);
                if (((Boolean) ex0Var.a("gads:hsdp_unsampled_crash_reporting:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                    ((as3) mo2Var.f).a("HsdpServiceUnsampled.prewarm", exception);
                } else {
                    ((as3) mo2Var.f).a("HsdpService.prewarm", (Throwable) exception);
                }
            }
        }
        rr3 rr3Var3 = hs3.b().a;
        uj2 uj2VarE2 = rr3Var3 != null ? rr3Var3.e() : null;
        if (uj2VarE2 != null) {
            uj2VarE2.I = (u61) u61.v().a(t61Var2).b();
        }
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.ai1
    public final Object a(Continuation continuation) {
        uo2 uo2Var = this.a.w0;
        if (uo2Var == null) {
            return p005kotlin.Unit.INSTANCE;
        }
        String str = uo2Var.e;
        if (f()) {
            ex0 ex0Var = this.c;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:hsdp_service_end_session:enabled", C3510b4.i.W);
            if (((Boolean) ex0Var.a("gads:hsdp_service_end_session:enabled", Boolean.FALSE, yr.b)).booleanValue() && str.length() > 0) {
                g83 g83Var = this.d;
                s11 s11Var = s11.CUI_NAME_HSDP_SERVICE;
                List listEmptyList = CollectionsKt.emptyList();
                ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                String str2 = "";
                if (hs3.b().a == null) {
                    tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                    try {
                        try {
                            rr3 rr3Var = hs3.b().a;
                            uj2 uj2VarE = rr3Var != null ? rr3Var.e() : null;
                            if (uj2VarE != null) {
                                uj2VarE.I = (u61) u61.v().a(t61.DESTROY).b();
                            }
                            this.e.a(str);
                        } catch (Throwable th) {
                            try {
                                tu2VarA.b(th);
                                if (th instanceof v24) {
                                    throw th;
                                }
                                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                    tu2VarA.a(th);
                                }
                                if (th instanceof TimeoutCancellationException) {
                                    throw new i21(th);
                                }
                                if (th instanceof CancellationException) {
                                    throw new wz0(th);
                                }
                                if (th instanceof w01) {
                                    throw th;
                                }
                                throw new b01(th);
                            } catch (Throwable th2) {
                                try {
                                    throw th2;
                                } catch (Throwable th3) {
                                    CloseableKt.closeFinally(tu2VarA, th2);
                                    throw th3;
                                }
                            }
                        }
                    } catch (Exception exception) {
                        rr3 rr3Var2 = hs3.b().a;
                        uj2 uj2VarE2 = rr3Var2 != null ? rr3Var2.e() : null;
                        if (uj2VarE2 != null) {
                            s61 s61VarA = u61.v().a(t61.DESTROY);
                            String message = exception.getMessage();
                            if (message != null) {
                                str2 = message;
                            }
                            uj2VarE2.I = (u61) s61VarA.a(str2).b();
                        }
                        Intrinsics.checkNotNullParameter(exception, "exception");
                        rr3 rr3VarA = hs3.a();
                        rr3VarA.e().m = false;
                        rr3VarA.a(exception);
                        ex0 ex0Var2 = this.c;
                        ex0Var2.getClass();
                        Intrinsics.checkNotNullParameter("gads:hsdp_unsampled_crash_reporting:enabled", C3510b4.i.W);
                        if (((Boolean) ex0Var2.a("gads:hsdp_unsampled_crash_reporting:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                            ((as3) this.f).a("HsdpServiceUnsampled.endSession", exception);
                        } else {
                            ((as3) this.f).a("HsdpService.endSession", (Throwable) exception);
                        }
                    }
                    Object obj = p005kotlin.Unit.INSTANCE;
                    if (obj instanceof i01) {
                        xs3.a((i01) obj, false);
                    }
                    CloseableKt.closeFinally(tu2VarA, null);
                } else {
                    rr3 rr3VarA2 = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                    try {
                        try {
                            rr3 rr3Var3 = hs3.b().a;
                            uj2 uj2VarE3 = rr3Var3 != null ? rr3Var3.e() : null;
                            if (uj2VarE3 != null) {
                                uj2VarE3.I = (u61) u61.v().a(t61.DESTROY).b();
                            }
                            this.e.a(str);
                        } catch (Throwable th4) {
                            try {
                                rr3VarA2.b(th4);
                                if (th4 instanceof v24) {
                                    throw th4;
                                }
                                if (!(th4 instanceof TimeoutCancellationException) && !(th4 instanceof CancellationException)) {
                                    rr3VarA2.a(th4);
                                }
                                if (th4 instanceof TimeoutCancellationException) {
                                    throw new i21(th4);
                                }
                                if (th4 instanceof CancellationException) {
                                    throw new wz0(th4);
                                }
                                if (th4 instanceof w01) {
                                    throw th4;
                                }
                                throw new b01(th4);
                            } catch (Throwable th5) {
                                try {
                                    throw th5;
                                } catch (Throwable th6) {
                                    CloseableKt.closeFinally(rr3VarA2, th5);
                                    throw th6;
                                }
                            }
                        }
                    } catch (Exception exception2) {
                        rr3 rr3Var4 = hs3.b().a;
                        uj2 uj2VarE4 = rr3Var4 != null ? rr3Var4.e() : null;
                        if (uj2VarE4 != null) {
                            s61 s61VarA2 = u61.v().a(t61.DESTROY);
                            String message2 = exception2.getMessage();
                            if (message2 != null) {
                                str2 = message2;
                            }
                            uj2VarE4.I = (u61) s61VarA2.a(str2).b();
                        }
                        Intrinsics.checkNotNullParameter(exception2, "exception");
                        rr3 rr3VarA3 = hs3.a();
                        rr3VarA3.e().m = false;
                        rr3VarA3.a(exception2);
                        ex0 ex0Var3 = this.c;
                        ex0Var3.getClass();
                        Intrinsics.checkNotNullParameter("gads:hsdp_unsampled_crash_reporting:enabled", C3510b4.i.W);
                        if (((Boolean) ex0Var3.a("gads:hsdp_unsampled_crash_reporting:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                            ((as3) this.f).a("HsdpServiceUnsampled.endSession", exception2);
                        } else {
                            ((as3) this.f).a("HsdpService.endSession", (Throwable) exception2);
                        }
                    }
                    Object obj2 = p005kotlin.Unit.INSTANCE;
                    if (obj2 instanceof i01) {
                        xs3.a((i01) obj2, false);
                    }
                    CloseableKt.closeFinally(rr3VarA2, null);
                }
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }

    public final boolean a(int i) {
        uo2 uo2Var = this.a.w0;
        return (i & (uo2Var != null ? uo2Var.f : 0)) != 0;
    }

    public final boolean f() {
        uo2 uo2Var;
        ex0 ex0Var = this.c;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:hsdp_service:enabled", C3510b4.i.W);
        return ((Boolean) ex0Var.a("gads:hsdp_service:enabled", Boolean.FALSE, yr.b)).booleanValue() && (uo2Var = this.a.w0) != null && uo2Var.d;
    }

    @Override // kotlin.ai1
    public final Object j(Continuation continuation) {
        uo2 uo2Var = this.a.w0;
        if (uo2Var == null) {
            return p005kotlin.Unit.INSTANCE;
        }
        if (f()) {
            if (!a(1)) {
                return p005kotlin.Unit.INSTANCE;
            }
            boolean zA = a(2);
            CoroutineScope coroutineScope = this.g;
            lo2 block = new lo2(this, zA, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            return p005kotlin.Unit.INSTANCE;
        }
        ex0 ex0Var = this.c;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:play_prewarm:enabled", C3510b4.i.W);
        if (((Boolean) ex0Var.a("gads:play_prewarm:enabled", Boolean.TRUE, yr.b)).booleanValue() && uo2Var.a) {
            ro2 ro2Var = this.b;
            String str = uo2Var.b;
            CoroutineScope coroutineScope2 = ro2Var.a;
            qo2 block2 = new qo2(ro2Var, str, null);
            EmptyCoroutineContext context2 = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope2, "<this>");
            Intrinsics.checkNotNullParameter(context2, "context");
            Intrinsics.checkNotNullParameter(block2, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope2, context2, null, new ws3(block2, null), 2, null);
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return unit;
        }
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.ai1
    public final Object r(Continuation continuation) {
        uo2 uo2Var = this.a.w0;
        if (uo2Var == null) {
            return p005kotlin.Unit.INSTANCE;
        }
        if (f()) {
            if (!a(4)) {
                return p005kotlin.Unit.INSTANCE;
            }
            boolean zA = a(8);
            s11 s11Var = s11.CUI_NAME_HSDP_SERVICE;
            CoroutineScope coroutineScope = this.g;
            ko2 block = new ko2(this, s11Var, zA, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            return p005kotlin.Unit.INSTANCE;
        }
        if (!a(256)) {
            return p005kotlin.Unit.INSTANCE;
        }
        String str = a(512) ? uo2Var.b : "";
        ro2 ro2Var = this.b;
        CoroutineScope coroutineScope2 = ro2Var.a;
        qo2 block2 = new qo2(ro2Var, str, null);
        EmptyCoroutineContext context2 = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope2, "<this>");
        Intrinsics.checkNotNullParameter(context2, "context");
        Intrinsics.checkNotNullParameter(block2, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope2, context2, null, new ws3(block2, null), 2, null);
        p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return unit;
    }
}
