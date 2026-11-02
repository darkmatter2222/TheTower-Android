package kotlin;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.browser.customtabs.CustomTabsCallback;
import com.google.common.base.Splitter;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class ca2 implements pa2 {
    public final Context a;
    public final CoroutineScope b;
    public final tx c;
    public final ur3 d;
    public final Set e;
    public ConnectivityManager f;
    public w92 g;
    public final Mutex h;
    public boolean i;
    public long j;
    public un3 k;
    public final AtomicBoolean l;
    public final AtomicInteger m;
    public final AtomicInteger n;

    public ca2(Context context, CoroutineScope backgroundScope, tx clock, ur3 traceLogger, Set networkChangeListeners) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(networkChangeListeners, "networkChangeListeners");
        this.a = context;
        this.b = backgroundScope;
        this.c = clock;
        this.d = traceLogger;
        this.e = networkChangeListeners;
        this.h = MutexKt.Mutex$default(false, 1, null);
        this.i = true;
        this.j = Duration.m4395minusLRDsOJo(Duration.INSTANCE.m4458getZEROUwyO8pc(), DurationKt.toDuration(1, DurationUnit.SECONDS));
        this.l = new AtomicBoolean(true);
        this.m = new AtomicInteger(0);
        this.n = new AtomicInteger(-1);
    }

    public final int a() {
        return this.m.get();
    }

    /* JADX WARN: Code duplicated, block: B:61:0x0159 A[Catch: all -> 0x01a4, TRY_LEAVE, TryCatch #1 {all -> 0x01a4, blocks: (B:59:0x0151, B:61:0x0159, B:64:0x015f, B:66:0x0183, B:72:0x0190), top: B:104:0x0151 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x015f A[Catch: all -> 0x01a4, TRY_ENTER, TryCatch #1 {all -> 0x01a4, blocks: (B:59:0x0151, B:61:0x0159, B:64:0x015f, B:66:0x0183, B:72:0x0190), top: B:104:0x0151 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x0183 A[Catch: all -> 0x01a4, TRY_LEAVE, TryCatch #1 {all -> 0x01a4, blocks: (B:59:0x0151, B:61:0x0159, B:64:0x015f, B:66:0x0183, B:72:0x0190), top: B:104:0x0151 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x0189 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:70:0x018b  */
    /* JADX WARN: Code duplicated, block: B:71:0x018e  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code duplicated, block: B:83:0x01d0 A[Catch: all -> 0x021b, TryCatch #2 {all -> 0x021b, blocks: (B:81:0x01c1, B:83:0x01d0, B:85:0x01d6, B:87:0x01df, B:89:0x01e5), top: B:105:0x01c1 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:87:0x01df A[Catch: all -> 0x021b, TryCatch #2 {all -> 0x021b, blocks: (B:81:0x01c1, B:83:0x01d0, B:85:0x01d6, B:87:0x01df, B:89:0x01e5), top: B:105:0x01c1 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:94:0x01fa A[LOOP:0: B:92:0x01f4->B:94:0x01fa, LOOP_END] */
    public final Object a(long j, Network network, NetworkCapabilities networkCapabilities, boolean z, Continuation continuation) {
        x92 x92Var;
        Mutex mutex;
        long j2;
        Network network2;
        NetworkCapabilities networkCapabilities2;
        boolean z2;
        ca2 ca2Var;
        Mutex mutex2;
        ca2 ca2Var2;
        long j3;
        un3 un3Var;
        Mutex mutex3;
        long j4;
        String str;
        Iterator it;
        un3 un3Var2;
        int iA;
        un3 un3Var3;
        int iB;
        if (continuation instanceof x92) {
            x92Var = (x92) continuation;
            int i = x92Var.i;
            if ((i & Integer.MIN_VALUE) != 0) {
                x92Var.i = i - Integer.MIN_VALUE;
            } else {
                x92Var = new x92(this, continuation);
            }
        } else {
            x92Var = new x92(this, continuation);
        }
        Object obj = x92Var.g;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = x92Var.i;
        boolean z3 = true;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = this.h;
                x92Var.a = this;
                x92Var.b = network;
                x92Var.c = networkCapabilities;
                x92Var.d = mutex;
                j2 = j;
                x92Var.e = j2;
                x92Var.f = z;
                x92Var.i = 1;
                if (mutex.lock(null, x92Var) != coroutine_suspended) {
                    network2 = network;
                    networkCapabilities2 = networkCapabilities;
                    z2 = z;
                    ca2Var = this;
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    j3 = x92Var.e;
                    mutex2 = (Mutex) x92Var.b;
                    ca2Var2 = x92Var.a;
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    try {
                        ca2Var2.j = j3;
                        ca2Var2.i = true;
                        ca2Var2.l.set(true);
                        AtomicInteger atomicInteger = ca2Var2.m;
                        un3Var2 = ca2Var2.k;
                        if (un3Var2 != null) {
                            iA = un3Var2.a();
                        } else {
                            iA = 0;
                        }
                        atomicInteger.set(iA);
                        AtomicInteger atomicInteger2 = ca2Var2.n;
                        un3Var3 = ca2Var2.k;
                        if (un3Var3 != null) {
                            iB = un3Var3.b();
                        } else {
                            iB = -1;
                        }
                        atomicInteger2.set(iB);
                        p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                        mutex2.unlock(null);
                        j4 = j3;
                        it = ca2Var2.e.iterator();
                        while (it.hasNext()) {
                            xs3.a(ca2Var2.b, new z92(z3, (n92) it.next(), j4, null));
                        }
                        return p005kotlin.Unit.INSTANCE;
                    } catch (Throwable th) {
                        mutex2.unlock(null);
                        throw th;
                    }
                }
                boolean z4 = x92Var.f;
                j4 = x92Var.e;
                mutex3 = (Mutex) x92Var.c;
                un3Var = (un3) x92Var.b;
                ca2Var2 = x92Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                z3 = z4;
                try {
                    if (Duration.m4366compareToLRDsOJo(j4, ca2Var2.j) <= 0) {
                        p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                        mutex3.unlock(null);
                        return unit2;
                    }
                    ca2Var2.j = j4;
                    ca2Var2.k = un3Var;
                    Splitter splitter = f01.a;
                    f01.a(new ba2(j4));
                    ca2Var2.m.set(un3Var.a());
                    ca2Var2.n.set(un3Var.b());
                    if (z3 == ca2Var2.i) {
                        p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
                        mutex3.unlock(null);
                        return unit3;
                    }
                    if (z3) {
                        str = CustomTabsCallback.ONLINE_EXTRAS_KEY;
                    } else {
                        str = "offline";
                    }
                    f01.b("Device is now ".concat(str), null);
                    ca2Var2.i = z3;
                    ca2Var2.l.set(z3);
                    p005kotlin.Unit unit4 = p005kotlin.Unit.INSTANCE;
                    mutex3.unlock(null);
                    it = ca2Var2.e.iterator();
                    while (it.hasNext()) {
                        xs3.a(ca2Var2.b, new z92(z3, (n92) it.next(), j4, null));
                    }
                    return p005kotlin.Unit.INSTANCE;
                } catch (Throwable th2) {
                    mutex3.unlock(null);
                    throw th2;
                }
            }
            z2 = x92Var.f;
            j2 = x92Var.e;
            mutex = x92Var.d;
            networkCapabilities2 = (NetworkCapabilities) x92Var.c;
            network2 = (Network) x92Var.b;
            ca2Var = x92Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            if (Duration.m4366compareToLRDsOJo(j2, ca2Var.j) <= 0) {
                p005kotlin.Unit unit5 = p005kotlin.Unit.INSTANCE;
                mutex.unlock(null);
                return unit5;
            }
            boolean z5 = ca2Var.i;
            mutex.unlock(null);
            Splitter splitter2 = f01.a;
            f01.a(new y92(j2, z5));
            m21 m21Var = o21.f;
            if (m21.a(ca2Var.a, "android.permission.ACCESS_NETWORK_STATE")) {
                if (networkCapabilities2 == null) {
                    if (network2 != null) {
                        ConnectivityManager connectivityManager = ca2Var.f;
                        if (connectivityManager == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("connectivityManager");
                            connectivityManager = null;
                        }
                        networkCapabilities2 = connectivityManager.getNetworkCapabilities(network2);
                    } else if (z2) {
                        ConnectivityManager connectivityManager2 = ca2Var.f;
                        if (connectivityManager2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("connectivityManager");
                            connectivityManager2 = null;
                        }
                        ConnectivityManager connectivityManager3 = ca2Var.f;
                        if (connectivityManager3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("connectivityManager");
                            connectivityManager3 = null;
                        }
                        networkCapabilities2 = connectivityManager2.getNetworkCapabilities(connectivityManager3.getActiveNetwork());
                    } else {
                        networkCapabilities2 = null;
                    }
                }
                z3 = networkCapabilities2 != null && networkCapabilities2.hasCapability(12) && networkCapabilities2.hasCapability(16);
                f01.a(new aa2(j2, z3));
                un3Var = new un3(db2.b(ca2Var.a), db2.a(ca2Var.a, networkCapabilities2), db2.c(ca2Var.a), db2.d(ca2Var.a), db2.e(ca2Var.a), db2.a(ca2Var.a));
                mutex3 = ca2Var.h;
                x92Var.a = ca2Var;
                x92Var.b = un3Var;
                x92Var.c = mutex3;
                x92Var.d = null;
                x92Var.e = j2;
                x92Var.f = z3;
                x92Var.i = 2;
                if (mutex3.lock(null, x92Var) != coroutine_suspended) {
                    ca2Var2 = ca2Var;
                    j4 = j2;
                    if (Duration.m4366compareToLRDsOJo(j4, ca2Var2.j) <= 0) {
                        p005kotlin.Unit unit6 = p005kotlin.Unit.INSTANCE;
                        mutex3.unlock(null);
                        return unit6;
                    }
                    ca2Var2.j = j4;
                    ca2Var2.k = un3Var;
                    Splitter splitter3 = f01.a;
                    f01.a(new ba2(j4));
                    ca2Var2.m.set(un3Var.a());
                    ca2Var2.n.set(un3Var.b());
                    if (z3 == ca2Var2.i) {
                        p005kotlin.Unit unit7 = p005kotlin.Unit.INSTANCE;
                        mutex3.unlock(null);
                        return unit7;
                    }
                    if (z3) {
                        str = CustomTabsCallback.ONLINE_EXTRAS_KEY;
                    } else {
                        str = "offline";
                    }
                    f01.b("Device is now ".concat(str), null);
                    ca2Var2.i = z3;
                    ca2Var2.l.set(z3);
                    p005kotlin.Unit unit8 = p005kotlin.Unit.INSTANCE;
                    mutex3.unlock(null);
                    it = ca2Var2.e.iterator();
                    while (it.hasNext()) {
                        xs3.a(ca2Var2.b, new z92(z3, (n92) it.next(), j4, null));
                    }
                    return p005kotlin.Unit.INSTANCE;
                }
            } else {
                mutex2 = ca2Var.h;
                x92Var.a = ca2Var;
                x92Var.b = mutex2;
                x92Var.c = null;
                x92Var.d = null;
                x92Var.e = j2;
                x92Var.i = 3;
                if (mutex2.lock(null, x92Var) != coroutine_suspended) {
                    ca2Var2 = ca2Var;
                    j3 = j2;
                    ca2Var2.j = j3;
                    ca2Var2.i = true;
                    ca2Var2.l.set(true);
                    AtomicInteger atomicInteger3 = ca2Var2.m;
                    un3Var2 = ca2Var2.k;
                    if (un3Var2 != null) {
                        iA = un3Var2.a();
                    } else {
                        iA = 0;
                    }
                    atomicInteger3.set(iA);
                    AtomicInteger atomicInteger4 = ca2Var2.n;
                    un3Var3 = ca2Var2.k;
                    if (un3Var3 != null) {
                        iB = un3Var3.b();
                    } else {
                        iB = -1;
                    }
                    atomicInteger4.set(iB);
                    p005kotlin.Unit unit9 = p005kotlin.Unit.INSTANCE;
                    mutex2.unlock(null);
                    j4 = j3;
                    it = ca2Var2.e.iterator();
                    while (it.hasNext()) {
                        xs3.a(ca2Var2.b, new z92(z3, (n92) it.next(), j4, null));
                    }
                    return p005kotlin.Unit.INSTANCE;
                }
            }
            return coroutine_suspended;
        } catch (Throwable th3) {
            mutex.unlock(null);
            throw th3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Continuation continuation) {
        o92 o92Var;
        ca2 ca2Var;
        Mutex mutex;
        if (continuation instanceof o92) {
            o92Var = (o92) continuation;
            int i = o92Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                o92Var.e = i - Integer.MIN_VALUE;
            } else {
                o92Var = new o92(this, continuation);
            }
        } else {
            o92Var = new o92(this, continuation);
        }
        Object obj = o92Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = o92Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.h;
            o92Var.a = this;
            o92Var.b = mutex2;
            o92Var.e = 1;
            if (mutex2.lock(null, o92Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            ca2Var = this;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = o92Var.b;
            ca2Var = o92Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            un3 un3Var = ca2Var.k;
            mutex.unlock(null);
            return un3Var == null ? new un3(db2.b(ca2Var.a), db2.a(ca2Var.a, (NetworkCapabilities) null), db2.c(ca2Var.a), db2.d(ca2Var.a), db2.e(ca2Var.a), db2.a(ca2Var.a)) : un3Var;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    public final int b() {
        return this.n.get();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(Continuation continuation) {
        p92 p92Var;
        ca2 ca2Var;
        if (continuation instanceof p92) {
            p92Var = (p92) continuation;
            int i = p92Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                p92Var.d = i - Integer.MIN_VALUE;
            } else {
                p92Var = new p92(this, continuation);
            }
        } else {
            p92Var = new p92(this, continuation);
        }
        p92 p92Var2 = p92Var;
        Object obj = p92Var2.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = p92Var2.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Duration.Companion companion = Duration.INSTANCE;
            this.c.getClass();
            long duration = DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS);
            Object systemService = this.a.getSystemService((Class<Object>) ConnectivityManager.class);
            Intrinsics.checkNotNullExpressionValue(systemService, "getSystemService(...)");
            this.f = (ConnectivityManager) systemService;
            m21 m21Var = o21.f;
            if (m21.a(this.a, "android.permission.ACCESS_NETWORK_STATE")) {
                this.g = new w92(this);
                try {
                    w92 w92Var = null;
                    if (Build.VERSION.SDK_INT < 31) {
                        ConnectivityManager connectivityManager = this.f;
                        if (connectivityManager == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("connectivityManager");
                            connectivityManager = null;
                        }
                        w92 w92Var2 = this.g;
                        if (w92Var2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("callback");
                        } else {
                            w92Var = w92Var2;
                        }
                        connectivityManager.registerDefaultNetworkCallback(w92Var);
                    } else {
                        ConnectivityManager connectivityManager2 = this.f;
                        if (connectivityManager2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("connectivityManager");
                            connectivityManager2 = null;
                        }
                        NetworkRequest networkRequestBuild = new NetworkRequest.Builder().addTransportType(1).addTransportType(0).addTransportType(3).build();
                        w92 w92Var3 = this.g;
                        if (w92Var3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("callback");
                        } else {
                            w92Var = w92Var3;
                        }
                        connectivityManager2.registerBestMatchingNetworkCallback(networkRequestBuild, w92Var, new Handler(Looper.getMainLooper()));
                    }
                } catch (Exception e) {
                    ((as3) this.d).a("Failed to register network callbacks.", (Throwable) e);
                }
            }
            p92Var2.a = this;
            p92Var2.d = 1;
            if (a(duration, null, null, true, p92Var2) == coroutine_suspended) {
                return coroutine_suspended;
            }
            ca2Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ca2Var = p92Var2.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        oa2.a = ca2Var;
        return new q01(p005kotlin.Unit.INSTANCE);
    }

    public final boolean c() {
        return this.l.get();
    }
}
