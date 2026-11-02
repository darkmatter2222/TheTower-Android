package kotlin;

import java.util.Map;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class bp3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ gp3 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bp3(gp3 gp3Var, Continuation continuation) {
        super(2, continuation);
        this.a = gp3Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new bp3(this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new bp3(this.a, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        rq3 rq3Var = this.a.e;
        rq3Var.getClass();
        p005kotlin.Pair pair = new p005kotlin.Pair(MapsKt.emptyMap(), rq3Var.b);
        Map map = (Map) pair.component1();
        Map map2 = (Map) pair.component2();
        if (!map.isEmpty()) {
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                mq0 mq0Var = (mq0) entry.getValue();
                ub3 ub3Var = rq3Var.c;
                jq3 task = new jq3("onVideoEnd", str, mq0Var, null);
                ub3Var.getClass();
                Intrinsics.checkNotNullParameter(task, "task");
                ub3Var.b.mo4525trySendJP2dKIU(task);
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            String str2 = (String) entry2.getKey();
            mq0 mq0Var2 = (mq0) entry2.getValue();
            CoroutineScope coroutineScope = rq3Var.a;
            kq3 block = new kq3("onVideoEnd", str2, mq0Var2, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
