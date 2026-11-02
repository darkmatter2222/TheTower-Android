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
public final class jd extends kq0 implements ld, fy3 {
    public final Mutex d;
    public ey3 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jd(CoroutineScope uiScope, Map listeners, ub3 serialEventQueue) {
        super(uiScope, listeners, serialEventQueue);
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(listeners, "listeners");
        Intrinsics.checkNotNullParameter(serialEventQueue, "serialEventQueue");
        this.d = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public static /* synthetic */ Object a(jd jdVar, ey3 ey3Var, Continuation continuation) {
        gd gdVar;
        Mutex mutex;
        if (continuation instanceof gd) {
            gdVar = (gd) continuation;
            int i = gdVar.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                gdVar.f = i - Integer.MIN_VALUE;
            } else {
                gdVar = new gd(jdVar, continuation);
            }
        } else {
            gdVar = new gd(jdVar, continuation);
        }
        Object obj = gdVar.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = gdVar.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = jdVar.d;
            gdVar.a = jdVar;
            gdVar.b = ey3Var;
            gdVar.c = mutex;
            gdVar.f = 1;
            if (mutex.lock(null, gdVar) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = gdVar.c;
            ey3Var = gdVar.b;
            jd jdVar2 = gdVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            jdVar = jdVar2;
        }
        ey3 ey3Var2 = ey3Var;
        try {
            ey3 ey3Var3 = jdVar.e;
            if (ey3Var3 != null && Intrinsics.areEqual(ey3Var2, ey3Var3)) {
                return p005kotlin.Unit.INSTANCE;
            }
            jdVar.e = ey3Var2;
            String str = "onViewabilityEvent (" + ey3Var2.b + ")";
            p005kotlin.Pair pair = new p005kotlin.Pair(MapsKt.emptyMap(), jdVar.f());
            Map map = (Map) pair.component1();
            Map map2 = (Map) pair.component2();
            if (!map.isEmpty()) {
                for (Map.Entry entry : map.entrySet()) {
                    jdVar.i().a(new hd(str, (String) entry.getKey(), (mq0) entry.getValue(), null, ey3Var2));
                }
            }
            for (Map.Entry entry2 : map2.entrySet()) {
                xs3.a(jdVar.g(), new id(str, (String) entry2.getKey(), (mq0) entry2.getValue(), null, ey3Var2));
            }
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    @Override // kotlin.ld
    public final Object a(ey3 ey3Var, Continuation continuation) {
        return a(this, ey3Var, continuation);
    }

    @Override // kotlin.fy3
    public final Object c(ey3 ey3Var, Continuation continuation) {
        Object objA = a(this, ey3Var, continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }
}
