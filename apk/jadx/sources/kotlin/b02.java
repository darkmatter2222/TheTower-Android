package kotlin;

import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes.dex */
public final class b02 implements Flow {
    public final /* synthetic */ Flow a;
    public final /* synthetic */ e02 b;

    public b02(Flow flow, e02 e02Var) {
        this.a = flow;
        this.b = e02Var;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public final Object collect(FlowCollector flowCollector, Continuation continuation) {
        Object objCollect = this.a.collect(new a02(flowCollector, this.b), continuation);
        return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : p005kotlin.Unit.INSTANCE;
    }
}
