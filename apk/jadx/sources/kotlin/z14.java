package kotlin;

import java.util.Map;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class z14 extends kq0 implements b24, fy3 {
    public final Mutex d;
    public ey3 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z14(CoroutineScope uiScope, Map listeners, ub3 serialEventQueue) {
        super(uiScope, listeners, serialEventQueue);
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(listeners, "listeners");
        Intrinsics.checkNotNullParameter(serialEventQueue, "serialEventQueue");
        this.d = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public static /* synthetic */ Object a(z14 z14Var, ey3 ey3Var, Continuation continuation) {
        w14 w14Var;
        Mutex mutex;
        if (continuation instanceof w14) {
            w14Var = (w14) continuation;
            int i = w14Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                w14Var.f = i - Integer.MIN_VALUE;
            } else {
                w14Var = new w14(z14Var, continuation);
            }
        } else {
            w14Var = new w14(z14Var, continuation);
        }
        Object obj = w14Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = w14Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = z14Var.d;
            w14Var.a = z14Var;
            w14Var.b = ey3Var;
            w14Var.c = mutex;
            w14Var.f = 1;
            if (mutex.lock(null, w14Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = w14Var.c;
            ey3Var = w14Var.b;
            z14 z14Var2 = w14Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            z14Var = z14Var2;
        }
        ey3 ey3Var2 = ey3Var;
        try {
            ey3 ey3Var3 = z14Var.e;
            if (ey3Var3 != null && Intrinsics.areEqual(ey3Var2, ey3Var3)) {
                return p005kotlin.Unit.INSTANCE;
            }
            z14Var.e = ey3Var2;
            String str = "onWebViewViewabilityEvent (" + ey3Var2.b + ")";
            p005kotlin.Pair pair = new p005kotlin.Pair(MapsKt.emptyMap(), z14Var.f());
            Map map = (Map) pair.component1();
            Map map2 = (Map) pair.component2();
            if (!map.isEmpty()) {
                for (Map.Entry entry : map.entrySet()) {
                    z14Var.i().a(new x14(str, (String) entry.getKey(), (mq0) entry.getValue(), null, ey3Var2));
                }
            }
            for (Map.Entry entry2 : map2.entrySet()) {
                xs3.a(z14Var.g(), new y14(str, (String) entry2.getKey(), (mq0) entry2.getValue(), null, ey3Var2));
            }
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    @Override // kotlin.b24
    public final Object b(ey3 ey3Var, Continuation continuation) {
        return a(this, ey3Var, continuation);
    }

    @Override // kotlin.fy3
    public final Object c(ey3 ey3Var, Continuation continuation) {
        Object objA = a(this, ey3Var, continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }
}
