package kotlin;

import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.flow.FlowCollector;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes.dex */
public final class ox2 implements FlowCollector {
    public final /* synthetic */ CoroutineContext a;
    public final /* synthetic */ ei1 b;

    public ox2(CoroutineContext coroutineContext, ei1 ei1Var) {
        this.a = coroutineContext;
        this.b = ei1Var;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        Object objWithContext;
        sx2 sx2Var = (sx2) obj;
        if (!(sx2Var instanceof rx2)) {
            return ((sx2Var instanceof qx2) && (objWithContext = BuildersKt.withContext(this.a, new nx2(this.b, sx2Var, null), continuation)) == IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? objWithContext : p005kotlin.Unit.INSTANCE;
        }
        Object objWithContext2 = BuildersKt.withContext(this.a, new lx2(this.b, sx2Var, null), continuation);
        return objWithContext2 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext2 : p005kotlin.Unit.INSTANCE;
    }
}
