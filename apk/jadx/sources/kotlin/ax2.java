package kotlin;

import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes.dex */
public final class ax2 implements Flow {
    public final /* synthetic */ Flow a;
    public final /* synthetic */ px2 b;

    public ax2(Flow flow, px2 px2Var) {
        this.a = flow;
        this.b = px2Var;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public final Object collect(FlowCollector flowCollector, Continuation continuation) {
        Object objCollect = this.a.collect(new zw2(flowCollector, this.b), continuation);
        return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : p005kotlin.Unit.INSTANCE;
    }
}
