package kotlin;

import java.util.Map;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class rq3 extends kq0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rq3(CoroutineScope scope, Map listeners, ub3 serialEventQueue) {
        super(scope, listeners, serialEventQueue);
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(listeners, "listeners");
        Intrinsics.checkNotNullParameter(serialEventQueue, "serialEventQueue");
    }

    public final void onVideoMute(boolean z) {
        p005kotlin.Pair pair = new p005kotlin.Pair(MapsKt.emptyMap(), this.b);
        Map map = (Map) pair.component1();
        Map map2 = (Map) pair.component2();
        if (!map.isEmpty()) {
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                mq0 mq0Var = (mq0) entry.getValue();
                ub3 ub3Var = this.c;
                boolean z2 = z;
                lq3 task = new lq3("onVideoMute", str, mq0Var, null, z2);
                ub3Var.getClass();
                Intrinsics.checkNotNullParameter(task, "task");
                ub3Var.b.mo4525trySendJP2dKIU(task);
                z = z2;
            }
        }
        boolean z3 = z;
        for (Map.Entry entry2 : map2.entrySet()) {
            String str2 = (String) entry2.getKey();
            mq0 mq0Var2 = (mq0) entry2.getValue();
            CoroutineScope coroutineScope = this.a;
            mq3 block = new mq3("onVideoMute", str2, mq0Var2, null, z3);
            boolean z4 = z3;
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            z3 = z4;
        }
    }
}
