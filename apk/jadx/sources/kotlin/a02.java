package kotlin;

import kotlinx.coroutines.flow.FlowCollector;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes.dex */
public final class a02 implements FlowCollector {
    public final /* synthetic */ FlowCollector a;
    public final /* synthetic */ e02 b;

    public a02(FlowCollector flowCollector, e02 e02Var) {
        this.a = flowCollector;
        this.b = e02Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        zz1 zz1Var;
        if (continuation instanceof zz1) {
            zz1Var = (zz1) continuation;
            int i = zz1Var.b;
            if ((i & Integer.MIN_VALUE) != 0) {
                zz1Var.b = i - Integer.MIN_VALUE;
            } else {
                zz1Var = new zz1(this, continuation);
            }
        } else {
            zz1Var = new zz1(this, continuation);
        }
        Object obj2 = zz1Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zz1Var.b;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj2);
            FlowCollector flowCollector = this.a;
            v01 q01Var = (v01) obj;
            if (q01Var instanceof q01) {
                q01Var = new q01(this.b.c.invoke(((q01) q01Var).b));
            } else if (!(q01Var instanceof i01)) {
                throw new p005kotlin.NoWhenBranchMatchedException();
            }
            zz1Var.b = 1;
            if (flowCollector.emit(q01Var, zz1Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj2);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
