package kotlin;

import java.util.Map;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class xu1 extends kq0 implements ld {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xu1(CoroutineScope uiScope, Map listeners, ub3 serialEventQueue) {
        super(uiScope, listeners, serialEventQueue);
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(listeners, "listeners");
        Intrinsics.checkNotNullParameter(serialEventQueue, "serialEventQueue");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.ld
    public final Object a(ey3 ey3Var, Continuation continuation) {
        wu1 wu1Var;
        xu1 xu1Var;
        if (continuation instanceof wu1) {
            wu1Var = (wu1) continuation;
            int i = wu1Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                wu1Var.d = i - Integer.MIN_VALUE;
            } else {
                wu1Var = new wu1(this, continuation);
            }
        } else {
            wu1Var = new wu1(this, continuation);
        }
        Object objBoxBoolean = wu1Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = wu1Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objBoxBoolean);
            wu1Var.a = this;
            wu1Var.d = 1;
            int iWidth = ey3Var.d.width();
            int iHeight = ey3Var.d.height();
            objBoxBoolean = Boxing.boxBoolean((ey3Var.h && ey3Var.g.height() == iHeight && ey3Var.g.width() == iWidth) && (ey3Var.j && ey3Var.i.height() == iHeight && ey3Var.i.width() == iWidth));
            if (objBoxBoolean == coroutine_suspended) {
                return coroutine_suspended;
            }
            xu1Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            xu1Var = wu1Var.a;
            p005kotlin.ResultKt.throwOnFailure(objBoxBoolean);
        }
        if (((Boolean) objBoxBoolean).booleanValue()) {
            p005kotlin.Pair pair = new p005kotlin.Pair(MapsKt.emptyMap(), xu1Var.b);
            Map map = (Map) pair.component1();
            Map map2 = (Map) pair.component2();
            if (!map.isEmpty()) {
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    mq0 mq0Var = (mq0) entry.getValue();
                    ub3 ub3Var = xu1Var.c;
                    uu1 task = new uu1("onMediaViewFullyVisible", str, mq0Var, null);
                    ub3Var.getClass();
                    Intrinsics.checkNotNullParameter(task, "task");
                    ub3Var.b.mo4525trySendJP2dKIU(task);
                }
            }
            for (Map.Entry entry2 : map2.entrySet()) {
                String str2 = (String) entry2.getKey();
                mq0 mq0Var2 = (mq0) entry2.getValue();
                CoroutineScope coroutineScope = xu1Var.a;
                vu1 block = new vu1("onMediaViewFullyVisible", str2, mq0Var2, null);
                EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(block, "block");
                BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
