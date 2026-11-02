package kotlin;

import android.os.SystemClock;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class yf3 {
    public final g83 a;
    public final tx b;
    public final long c;
    public final Mutex d;
    public final ArrayList e;
    public final nq0 f;

    public yf3(ex0 flags, g83 rootTraceCreator, tx clock) {
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = rootTraceCreator;
        this.b = clock;
        int iI0 = flags.I0();
        this.c = flags.J0();
        this.d = MutexKt.Mutex$default(false, 1, null);
        ArrayList arrayList = new ArrayList();
        this.e = arrayList;
        this.f = new nq0(iI0, arrayList);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public final Object a(String str, SignalRequest signalRequest, Signals signals, String str2, Continuation continuation) {
        uf3 uf3Var;
        yf3 yf3Var;
        String str3;
        SignalRequest signalRequest2;
        Mutex mutex;
        Signals signals2;
        String str4;
        if (continuation instanceof uf3) {
            uf3Var = (uf3) continuation;
            int i = uf3Var.i;
            if ((i & Integer.MIN_VALUE) != 0) {
                uf3Var.i = i - Integer.MIN_VALUE;
            } else {
                uf3Var = new uf3(this, continuation);
            }
        } else {
            uf3Var = new uf3(this, continuation);
        }
        Object obj = uf3Var.g;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = uf3Var.i;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.d;
            uf3Var.a = this;
            uf3Var.b = str;
            uf3Var.c = signalRequest;
            uf3Var.d = signals;
            uf3Var.e = str2;
            uf3Var.f = mutex2;
            uf3Var.i = 1;
            if (mutex2.lock(null, uf3Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            yf3Var = this;
            str3 = str;
            signalRequest2 = signalRequest;
            mutex = mutex2;
            signals2 = signals;
            str4 = str2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = uf3Var.f;
            String str5 = uf3Var.e;
            Signals signals3 = uf3Var.d;
            SignalRequest signalRequest3 = uf3Var.c;
            String str6 = uf3Var.b;
            yf3Var = uf3Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            str4 = str5;
            signals2 = signals3;
            signalRequest2 = signalRequest3;
            str3 = str6;
        }
        try {
            nq0 nq0Var = yf3Var.f;
            Duration.Companion companion = Duration.INSTANCE;
            yf3Var.b.getClass();
            nq0Var.put(str3, new tf3(DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS), str3, signalRequest2, signals2, str4));
            yf3Var.a();
            yf3Var.b();
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, String str2, tf3 tf3Var, int i, Continuation continuation) {
        xf3 xf3Var;
        Mutex mutex;
        yf3 yf3Var;
        if (continuation instanceof xf3) {
            xf3Var = (xf3) continuation;
            int i2 = xf3Var.i;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                xf3Var.i = i2 - Integer.MIN_VALUE;
            } else {
                xf3Var = new xf3(this, continuation);
            }
        } else {
            xf3Var = new xf3(this, continuation);
        }
        Object obj = xf3Var.g;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = xf3Var.i;
        if (i3 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = this.d;
            xf3Var.a = this;
            xf3Var.b = str;
            xf3Var.c = str2;
            xf3Var.d = tf3Var;
            xf3Var.e = mutex;
            xf3Var.f = i;
            xf3Var.i = 1;
            if (mutex.lock(null, xf3Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            yf3Var = this;
        } else {
            if (i3 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i = xf3Var.f;
            Mutex mutex2 = xf3Var.e;
            tf3Var = xf3Var.d;
            str2 = xf3Var.c;
            String str3 = xf3Var.b;
            yf3Var = xf3Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            str = str3;
        }
        try {
            if (str2 == null) {
                yf3Var.f.remove(str);
                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                mutex.unlock(null);
                return unit;
            }
            tf3Var.e.add(str2);
            if (tf3Var.e.size() >= i) {
                yf3Var.f.remove(str);
            }
            p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
            mutex.unlock(null);
            return unit2;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object a(String str, String str2, Continuation continuation) {
        wf3 wf3Var;
        Mutex mutex;
        yf3 yf3Var;
        LinkedHashSet linkedHashSet;
        if (continuation instanceof wf3) {
            wf3Var = (wf3) continuation;
            int i = wf3Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                wf3Var.g = i - Integer.MIN_VALUE;
            } else {
                wf3Var = new wf3(this, continuation);
            }
        } else {
            wf3Var = new wf3(this, continuation);
        }
        Object obj = wf3Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = wf3Var.g;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = this.d;
            wf3Var.a = this;
            wf3Var.b = str;
            wf3Var.c = str2;
            wf3Var.d = mutex;
            wf3Var.g = 1;
            if (mutex.lock(null, wf3Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            yf3Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = wf3Var.d;
            str2 = wf3Var.c;
            String str3 = wf3Var.b;
            yf3Var = wf3Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            str = str3;
        }
        boolean zContains = false;
        try {
            if (str2 == null) {
                Boolean boolBoxBoolean = Boxing.boxBoolean(false);
                mutex.unlock(null);
                return boolBoxBoolean;
            }
            tf3 tf3Var = (tf3) yf3Var.f.get(str);
            if (tf3Var != null && (linkedHashSet = tf3Var.e) != null) {
                zContains = linkedHashSet.contains(str2);
            }
            Boolean boolBoxBoolean2 = Boxing.boxBoolean(zContains);
            mutex.unlock(null);
            return boolBoxBoolean2;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object a(String str, Continuation continuation) {
        vf3 vf3Var;
        Mutex mutex;
        yf3 yf3Var;
        if (continuation instanceof vf3) {
            vf3Var = (vf3) continuation;
            int i = vf3Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                vf3Var.f = i - Integer.MIN_VALUE;
            } else {
                vf3Var = new vf3(this, continuation);
            }
        } else {
            vf3Var = new vf3(this, continuation);
        }
        Object obj = vf3Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = vf3Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = this.d;
            vf3Var.a = this;
            vf3Var.b = str;
            vf3Var.c = mutex;
            vf3Var.f = 1;
            if (mutex.lock(null, vf3Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            yf3Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = vf3Var.c;
            String str2 = vf3Var.b;
            yf3Var = vf3Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            str = str2;
        }
        try {
            return (tf3) yf3Var.f.get(str);
        } finally {
            mutex.unlock(null);
        }
    }

    public final void a() {
        Duration.Companion companion = Duration.INSTANCE;
        this.b.getClass();
        long duration = DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS);
        Iterator it = this.f.entrySet().iterator();
        while (it.hasNext()) {
            tf3 tf3Var = (tf3) ((Map.Entry) it.next()).getValue();
            if (Duration.m4366compareToLRDsOJo(duration, Duration.m4396plusLRDsOJo(tf3Var.a, this.c)) <= 0) {
                return;
            }
            it.remove();
            this.e.add(new p005kotlin.Pair(aa3.EVICTION_REASON_EXPIRED, tf3Var));
        }
    }

    public final void b() {
        if (this.e.isEmpty()) {
            return;
        }
        da3 builder = ea3.v();
        Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
        Intrinsics.checkNotNullParameter(builder, "builder");
        for (p005kotlin.Pair pair : this.e) {
            aa3 value = (aa3) pair.component1();
            tf3 tf3Var = (tf3) pair.component2();
            List listH = builder.h();
            Intrinsics.checkNotNullExpressionValue(listH, "getEvictionsList(...)");
            lo0 lo0Var = new lo0(listH);
            z93 builder2 = ba3.v();
            Intrinsics.checkNotNullExpressionValue(builder2, "newBuilder(...)");
            Intrinsics.checkNotNullParameter(builder2, "builder");
            Intrinsics.checkNotNullParameter(value, "value");
            builder2.a(value);
            String value2 = tf3Var.c.requestId;
            String value3 = "";
            if (value2 == null) {
                value2 = "";
            }
            Intrinsics.checkNotNullParameter(value2, "value");
            builder2.b(value2);
            String str = tf3Var.c.requestAgent;
            if (str != null) {
                value3 = str;
            }
            Intrinsics.checkNotNullParameter(value3, "value");
            builder2.a(value3);
            x11 value4 = tf3Var.b.getN();
            Intrinsics.checkNotNullParameter(value4, "value");
            builder2.a(value4);
            vz0 vz0VarB = builder2.b();
            Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
            ba3 value5 = (ba3) vz0VarB;
            Intrinsics.checkNotNullParameter(lo0Var, "<this>");
            Intrinsics.checkNotNullParameter(value5, "value");
            builder.a(value5);
        }
        vz0 vz0VarB2 = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB2, "build(...)");
        ea3 ea3Var = (ea3) vz0VarB2;
        g83 g83Var = this.a;
        s11 s11Var = s11.CUI_NAME_SCAR_CACHE_EVICTION;
        ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
        List listEmptyList = CollectionsKt.emptyList();
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                hs3.a().e().u = ea3Var;
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
                    if (!(th instanceof w01)) {
                        throw new b01(th);
                    }
                    throw th;
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
                hs3.a().e().u = ea3Var;
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
                    if (!(th4 instanceof w01)) {
                        throw new b01(th4);
                    }
                    throw th4;
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
        this.e.clear();
    }
}
