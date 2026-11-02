package kotlin;

import android.content.Context;
import android.view.View;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class kd2 extends nc1 {
    public final Context c;
    public final CoroutineContext d;
    public final CoroutineScope e;
    public final ur3 f;
    public final g83 g;
    public final String h;
    public final CompletableJob i;
    public final bj2 j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kd2(Context applicationContext, CoroutineContext uiContext, CoroutineScope backgroundScope, ur3 traceLogger, g83 rootTraceCreator, String gmaVersion) {
        super((s11) null, 3);
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(gmaVersion, "gmaVersion");
        this.c = applicationContext;
        this.d = uiContext;
        this.e = backgroundScope;
        this.f = traceLogger;
        this.g = rootTraceCreator;
        this.h = gmaVersion;
        this.i = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        this.j = bj2.a("Google", gmaVersion);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(kd2 kd2Var, r31 r31Var, xh2 xh2Var, x91 x91Var, l40 l40Var, xh2 xh2Var2, String str, Continuation continuation) {
        uc2 uc2Var;
        kd2 kd2Var2;
        xh2 xh2Var3;
        r31 r31Var2;
        xh2 xh2Var4;
        String str2;
        if (continuation instanceof uc2) {
            uc2Var = (uc2) continuation;
            int i = uc2Var.j;
            if ((i & Integer.MIN_VALUE) != 0) {
                uc2Var.j = i - Integer.MIN_VALUE;
            } else {
                uc2Var = new uc2(kd2Var, continuation);
            }
        } else {
            uc2Var = new uc2(kd2Var, continuation);
        }
        Object obj = uc2Var.h;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = uc2Var.j;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            CompletableJob completableJob = kd2Var.i;
            uc2Var.a = kd2Var;
            uc2Var.b = r31Var;
            uc2Var.c = xh2Var;
            uc2Var.d = x91Var;
            uc2Var.e = l40Var;
            uc2Var.f = xh2Var2;
            uc2Var.g = str;
            uc2Var.j = 1;
            if (completableJob.join(uc2Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            kd2Var2 = kd2Var;
            xh2Var3 = xh2Var;
            r31Var2 = r31Var;
            xh2Var4 = xh2Var2;
            str2 = str;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            String str3 = uc2Var.g;
            xh2 xh2Var5 = uc2Var.f;
            l40Var = uc2Var.e;
            x91Var = uc2Var.d;
            xh2 xh2Var6 = uc2Var.c;
            r31 r31Var3 = uc2Var.b;
            kd2 kd2Var3 = uc2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            str2 = str3;
            xh2Var4 = xh2Var5;
            xh2Var3 = xh2Var6;
            kd2Var2 = kd2Var3;
            r31Var2 = r31Var3;
        }
        if (!jd2.a.a) {
            return null;
        }
        x91 x91Var2 = x91Var;
        return kd2Var2.f.a("CreateOmidSession", new vc2(kd2Var2, r31Var2, str2, l40Var, x91Var2, xh2Var3, xh2Var4));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public static Object a(kd2 kd2Var, r31 r31Var, String str, String str2, l40 l40Var, x91 x91Var, xh2 xh2Var, xh2 xh2Var2, Continuation continuation) {
        xc2 xc2Var;
        String str3;
        l40 l40Var2;
        x91 x91Var2;
        xh2 xh2Var3;
        xh2 xh2Var4;
        r31 r31Var2;
        String str4;
        kd2 kd2Var2;
        if (continuation instanceof xc2) {
            xc2Var = (xc2) continuation;
            int i = xc2Var.k;
            if ((i & Integer.MIN_VALUE) != 0) {
                xc2Var.k = i - Integer.MIN_VALUE;
            } else {
                xc2Var = new xc2(kd2Var, continuation);
            }
        } else {
            xc2Var = new xc2(kd2Var, continuation);
        }
        Object obj = xc2Var.i;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = xc2Var.k;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            CompletableJob completableJob = kd2Var.i;
            xc2Var.a = kd2Var;
            xc2Var.b = r31Var;
            xc2Var.c = str;
            xc2Var.d = str2;
            xc2Var.e = l40Var;
            xc2Var.f = x91Var;
            xc2Var.g = xh2Var;
            xc2Var.h = xh2Var2;
            xc2Var.k = 1;
            if (completableJob.join(xc2Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            str3 = str2;
            l40Var2 = l40Var;
            x91Var2 = x91Var;
            xh2Var3 = xh2Var;
            xh2Var4 = xh2Var2;
            r31Var2 = r31Var;
            str4 = str;
            kd2Var2 = kd2Var;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            xh2 xh2Var5 = xc2Var.h;
            xh2 xh2Var6 = xc2Var.g;
            x91 x91Var3 = xc2Var.f;
            l40 l40Var3 = xc2Var.e;
            str3 = xc2Var.d;
            String str5 = xc2Var.c;
            r31 r31Var3 = xc2Var.b;
            kd2 kd2Var3 = xc2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            xh2Var4 = xh2Var5;
            xh2Var3 = xh2Var6;
            x91Var2 = x91Var3;
            kd2Var2 = kd2Var3;
            str4 = str5;
            l40Var2 = l40Var3;
            r31Var2 = r31Var3;
        }
        if (jd2.a.a) {
            return kd2Var2.f.a("CreateJavascriptAdSession", new yc2(str4, kd2Var2, r31Var2, str3, l40Var2, x91Var2, xh2Var3, xh2Var4));
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object a(kd2 kd2Var, Continuation continuation) {
        cd2 cd2Var;
        kd2Var.getClass();
        if (continuation instanceof cd2) {
            cd2Var = (cd2) continuation;
            int i = cd2Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                cd2Var.c = i - Integer.MIN_VALUE;
            } else {
                cd2Var = new cd2(kd2Var, continuation);
            }
        } else {
            cd2Var = new cd2(kd2Var, continuation);
        }
        Object obj = cd2Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = cd2Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ur3 ur3Var = kd2Var.f;
            ed2 ed2Var = new ed2(kd2Var, null);
            cd2Var.c = 1;
            ur3Var.getClass();
            if (ur3.a(ur3Var, "ActivateOmid", ed2Var, cd2Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        if (!jd2.a.a) {
            xs3.a("OMSDK failed to activate.", null, 6);
        }
        return p005kotlin.Unit.INSTANCE;
    }

    public final p005kotlin.Unit a(k9 adSession, View view) {
        Intrinsics.checkNotNullParameter(adSession, "adSession");
        Intrinsics.checkNotNullParameter(view, "view");
        return (p005kotlin.Unit) this.f.a("RegisterOmidAdView", new gd2(adSession, view));
    }

    public final String g() {
        return (String) this.f.a("GetOmidVersion", bd2.a);
    }

    @Override // kotlin.nc1
    public final Object u(Continuation continuation) {
        CoroutineScope coroutineScope = this.e;
        hd2 block = new hd2(this, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        return new q01(p005kotlin.Unit.INSTANCE);
    }
}
