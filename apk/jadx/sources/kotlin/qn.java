package kotlin;

import java.util.LinkedHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class qn {
    public final qs1 a;
    public final Mutex b;
    public final LinkedHashMap c;
    public final ConcurrentHashMap d;
    public final ConcurrentHashMap e;
    public final AtomicInteger f;
    public final AtomicReference g;
    public final AtomicBoolean h;

    public qn(jw0 flagDataStore, qs1 liveWebViewManager) {
        Intrinsics.checkNotNullParameter(flagDataStore, "flagDataStore");
        Intrinsics.checkNotNullParameter(liveWebViewManager, "liveWebViewManager");
        this.a = liveWebViewManager;
        this.b = MutexKt.Mutex$default(false, 1, null);
        this.c = new LinkedHashMap();
        this.d = new ConcurrentHashMap();
        this.e = new ConcurrentHashMap();
        this.f = new AtomicInteger(0);
        this.g = new AtomicReference("");
        this.h = new AtomicBoolean(false);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object a(qn qnVar, String str, String str2, Continuation continuation) {
        nn nnVar;
        Mutex mutex;
        if (continuation instanceof nn) {
            nnVar = (nn) continuation;
            int i = nnVar.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                nnVar.g = i - Integer.MIN_VALUE;
            } else {
                nnVar = new nn(qnVar, continuation);
            }
        } else {
            nnVar = new nn(qnVar, continuation);
        }
        Object obj = nnVar.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = nnVar.g;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = qnVar.b;
            nnVar.a = qnVar;
            nnVar.b = str;
            nnVar.c = str2;
            nnVar.d = mutex;
            nnVar.g = 1;
            if (mutex.lock(null, nnVar) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = nnVar.d;
            str2 = nnVar.c;
            str = nnVar.b;
            qn qnVar2 = nnVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            qnVar = qnVar2;
        }
        if (str2 != null) {
            try {
                if (str2.length() == 0) {
                    qnVar.c.remove(str);
                } else {
                    qnVar.c.put(str, str2);
                    p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                }
            } finally {
                mutex.unlock(null);
            }
        } else {
            qnVar.c.remove(str);
        }
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object a(qn qnVar, Continuation continuation) {
        cn cnVar;
        qn qnVar2;
        Mutex mutex;
        if (continuation instanceof cn) {
            cnVar = (cn) continuation;
            int i = cnVar.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                cnVar.e = i - Integer.MIN_VALUE;
            } else {
                cnVar = new cn(qnVar, continuation);
            }
        } else {
            cnVar = new cn(qnVar, continuation);
        }
        Object obj = cnVar.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = cnVar.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = qnVar.b;
            cnVar.a = qnVar;
            cnVar.b = mutex2;
            cnVar.e = 1;
            if (mutex2.lock(null, cnVar) == coroutine_suspended) {
                return coroutine_suspended;
            }
            qnVar2 = qnVar;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = cnVar.b;
            qnVar2 = cnVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            return MapsKt.toMap(qnVar2.c);
        } finally {
            mutex.unlock(null);
        }
    }

    public static final AtomicInteger a(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (AtomicInteger) tmp0.invoke(obj);
    }

    public static final AtomicInteger b(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (AtomicInteger) tmp0.invoke(obj);
    }

    public final void a(j53 requestType) {
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        ConcurrentHashMap concurrentHashMap = this.d;
        final fn fnVar = fn.a;
        ((AtomicInteger) concurrentHashMap.computeIfAbsent(requestType, new java.util.function.Function() { // from class: ads_mobile_sdk.qn$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return qn.a(fnVar, obj);
            }
        })).incrementAndGet();
    }

    public final void b(j53 requestType) {
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        ConcurrentHashMap concurrentHashMap = this.e;
        final gn gnVar = gn.a;
        ((AtomicInteger) concurrentHashMap.computeIfAbsent(requestType, new java.util.function.Function() { // from class: ads_mobile_sdk.qn$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return qn.b(gnVar, obj);
            }
        })).incrementAndGet();
    }
}
