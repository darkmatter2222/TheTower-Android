package kotlin;

import android.content.Context;
import android.os.Bundle;
import java.lang.reflect.Method;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ls0 {
    public final Context a;
    public final ur3 b;
    public final g83 c;
    public final ex0 d;
    public final p005kotlin.Lazy e;
    public final Mutex f;
    public String g;

    public ls0(Context applicationContext, ur3 traceLogger, g83 rootTraceCreator, ex0 flags) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = applicationContext;
        this.b = traceLogger;
        this.c = rootTraceCreator;
        this.d = flags;
        this.e = p005kotlin.LazyKt.lazy(new js0(this));
        this.f = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object a(ls0 ls0Var, Continuation continuation) {
        ks0 ks0Var;
        Mutex mutex;
        if (continuation instanceof ks0) {
            ks0Var = (ks0) continuation;
            int i = ks0Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                ks0Var.e = i - Integer.MIN_VALUE;
            } else {
                ks0Var = new ks0(ls0Var, continuation);
            }
        } else {
            ks0Var = new ks0(ls0Var, continuation);
        }
        Object obj = ks0Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ks0Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = ls0Var.f;
            ks0Var.a = ls0Var;
            ks0Var.b = mutex;
            ks0Var.e = 1;
            if (mutex.lock(null, ks0Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = ks0Var.b;
            ls0 ls0Var2 = ks0Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            ls0Var = ls0Var2;
        }
        try {
            String string = ls0Var.g;
            if (string == null) {
                Object objA = ls0Var.a("getGmpAppId");
                string = objA != null ? objA.toString() : null;
                ls0Var.g = string;
            }
            return string;
        } finally {
            mutex.unlock(null);
        }
    }

    public static p005kotlin.Unit a(ls0 ls0Var, is0 is0Var, Bundle bundle, String str) {
        g83 g83Var = ls0Var.c;
        s11 s11Var = s11.CUI_NAME_LOG_EVENT_TO_FIREBASE_ANALYTICS;
        List listEmptyList = CollectionsKt.emptyList();
        ks3 ks3VarA = js3.a();
        if (hs3.c() == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3VarA);
            try {
                try {
                    if (ls0Var.e.getValue() != null) {
                        Method method = Class.forName(ls0Var.d.Q()).getMethod("logEvent", String.class, String.class, Bundle.class);
                        Bundle bundle2 = bundle.getBundle(is0Var.d());
                        if (bundle2 == null) {
                            bundle2 = new Bundle();
                        }
                        Intrinsics.checkNotNull(bundle2);
                        bundle2.putLong("_aeid", Long.parseLong(str));
                        String str2 = is0Var.a;
                        is0 is0Var2 = is0.b;
                        if (Intrinsics.areEqual(str2, "_ac")) {
                            bundle2.putInt("_r", 1);
                        }
                        method.invoke(ls0Var.e.getValue(), "am", is0Var.d(), bundle2);
                    }
                } catch (Exception e) {
                    xs3.a("Exception while calling Firebase Analytics SDK logEvent method", e, 4);
                    ((as3) ls0Var.b).a("FirebaseAnalyticsAdapter.invokeMethod logEvent for " + is0Var, (Throwable) e);
                }
                Object obj = p005kotlin.Unit.INSTANCE;
                if (obj instanceof i01) {
                    xs3.a((i01) obj, false);
                }
                CloseableKt.closeFinally(tu2VarA, null);
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
        } else {
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            try {
                try {
                    if (ls0Var.e.getValue() != null) {
                        Method method2 = Class.forName(ls0Var.d.Q()).getMethod("logEvent", String.class, String.class, Bundle.class);
                        Bundle bundle3 = bundle.getBundle(is0Var.d());
                        if (bundle3 == null) {
                            bundle3 = new Bundle();
                        }
                        Intrinsics.checkNotNull(bundle3);
                        bundle3.putLong("_aeid", Long.parseLong(str));
                        String str3 = is0Var.a;
                        is0 is0Var3 = is0.b;
                        if (Intrinsics.areEqual(str3, "_ac")) {
                            bundle3.putInt("_r", 1);
                        }
                        method2.invoke(ls0Var.e.getValue(), "am", is0Var.d(), bundle3);
                    }
                } catch (Exception e2) {
                    xs3.a("Exception while calling Firebase Analytics SDK logEvent method", e2, 4);
                    ((as3) ls0Var.b).a("FirebaseAnalyticsAdapter.invokeMethod logEvent for " + is0Var, (Throwable) e2);
                }
                Object obj2 = p005kotlin.Unit.INSTANCE;
                if (obj2 instanceof i01) {
                    xs3.a((i01) obj2, false);
                }
                CloseableKt.closeFinally(rr3VarA, null);
            } catch (Throwable th4) {
                try {
                    rr3VarA.b(th4);
                    if (th4 instanceof v24) {
                        throw th4;
                    }
                    if (!(th4 instanceof TimeoutCancellationException) && !(th4 instanceof CancellationException)) {
                        rr3VarA.a(th4);
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
                        CloseableKt.closeFinally(rr3VarA, th5);
                        throw th6;
                    }
                }
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }

    public final Object a(String str) {
        try {
            if (this.e.getValue() != null) {
                return Class.forName(this.d.Q()).getMethod(str, new Class[0]).invoke(this.e.getValue(), new Object[0]);
            }
            return null;
        } catch (Exception e) {
            xs3.a("Exception while calling Firebase Analytics SDK method", e, 4);
            ((as3) this.b).a("FirebaseAnalyticsAdapter.invokeMethod " + str, (Throwable) e);
            return null;
        }
    }
}
