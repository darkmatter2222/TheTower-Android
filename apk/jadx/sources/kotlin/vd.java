package kotlin;

import java.util.Map;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class vd extends kq0 implements ld {
    public final Mutex d;
    public Boolean e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vd(CoroutineScope uiScope, Map listeners, ub3 serialEventQueue) {
        super(uiScope, listeners, serialEventQueue);
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(listeners, "listeners");
        Intrinsics.checkNotNullParameter(serialEventQueue, "serialEventQueue");
        this.d = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // kotlin.ld
    public final Object a(ey3 ey3Var, Continuation continuation) {
        qd qdVar;
        ey3 ey3Var2;
        Mutex mutex;
        vd vdVar;
        if (continuation instanceof qd) {
            qdVar = (qd) continuation;
            int i = qdVar.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                qdVar.f = i - Integer.MIN_VALUE;
            } else {
                qdVar = new qd(this, continuation);
            }
        } else {
            qdVar = new qd(this, continuation);
        }
        Object obj = qdVar.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = qdVar.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.d;
            qdVar.a = this;
            ey3Var2 = ey3Var;
            qdVar.b = ey3Var2;
            qdVar.c = mutex2;
            qdVar.f = 1;
            if (mutex2.lock(null, qdVar) == coroutine_suspended) {
                return coroutine_suspended;
            }
            mutex = mutex2;
            vdVar = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = qdVar.c;
            ey3Var2 = qdVar.b;
            vdVar = qdVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            if (ey3Var2.b && !Intrinsics.areEqual(vdVar.e, Boxing.boxBoolean(true))) {
                p005kotlin.Pair pair = new p005kotlin.Pair(MapsKt.emptyMap(), vdVar.b);
                Map map = (Map) pair.component1();
                Map map2 = (Map) pair.component2();
                if (!map.isEmpty()) {
                    for (Map.Entry entry : map.entrySet()) {
                        String str = (String) entry.getKey();
                        mq0 mq0Var = (mq0) entry.getValue();
                        ub3 ub3Var = vdVar.c;
                        rd task = new rd("onVisibilityChanged (true)", str, mq0Var, null);
                        ub3Var.getClass();
                        Intrinsics.checkNotNullParameter(task, "task");
                        ub3Var.b.mo4525trySendJP2dKIU(task);
                    }
                }
                for (Map.Entry entry2 : map2.entrySet()) {
                    String str2 = (String) entry2.getKey();
                    mq0 mq0Var2 = (mq0) entry2.getValue();
                    CoroutineScope coroutineScope = vdVar.a;
                    sd block = new sd("onVisibilityChanged (true)", str2, mq0Var2, null);
                    EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                    Intrinsics.checkNotNullParameter(context, "context");
                    Intrinsics.checkNotNullParameter(block, "block");
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
                }
            } else if (!ey3Var2.b && !Intrinsics.areEqual(vdVar.e, Boxing.boxBoolean(false))) {
                p005kotlin.Pair pair2 = new p005kotlin.Pair(MapsKt.emptyMap(), vdVar.b);
                Map map3 = (Map) pair2.component1();
                Map map4 = (Map) pair2.component2();
                if (!map3.isEmpty()) {
                    for (Map.Entry entry3 : map3.entrySet()) {
                        String str3 = (String) entry3.getKey();
                        mq0 mq0Var3 = (mq0) entry3.getValue();
                        ub3 ub3Var2 = vdVar.c;
                        td task2 = new td("onVisibilityChanged (false)", str3, mq0Var3, null);
                        ub3Var2.getClass();
                        Intrinsics.checkNotNullParameter(task2, "task");
                        ub3Var2.b.mo4525trySendJP2dKIU(task2);
                    }
                }
                for (Map.Entry entry4 : map4.entrySet()) {
                    String str4 = (String) entry4.getKey();
                    mq0 mq0Var4 = (mq0) entry4.getValue();
                    CoroutineScope coroutineScope2 = vdVar.a;
                    ud block2 = new ud("onVisibilityChanged (false)", str4, mq0Var4, null);
                    EmptyCoroutineContext context2 = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope2, "<this>");
                    Intrinsics.checkNotNullParameter(context2, "context");
                    Intrinsics.checkNotNullParameter(block2, "block");
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope2, context2, null, new ws3(block2, null), 2, null);
                }
            }
            vdVar.e = Boxing.boxBoolean(ey3Var2.b);
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }
}
