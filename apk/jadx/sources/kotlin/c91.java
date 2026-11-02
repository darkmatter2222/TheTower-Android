package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdLoadResult;
import kotlinx.coroutines.flow.FlowCollector;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes.dex */
public final class c91 implements FlowCollector {
    public final /* synthetic */ FlowCollector a;

    public c91(FlowCollector flowCollector) {
        this.a = flowCollector;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        b91 b91Var;
        Object objA;
        if (continuation instanceof b91) {
            b91Var = (b91) continuation;
            int i = b91Var.b;
            if ((i & Integer.MIN_VALUE) != 0) {
                b91Var.b = i - Integer.MIN_VALUE;
            } else {
                b91Var = new b91(this, continuation);
            }
        } else {
            b91Var = new b91(this, continuation);
        }
        Object obj2 = b91Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = b91Var.b;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj2);
            FlowCollector flowCollector = this.a;
            sx2 sx2Var = (sx2) obj;
            if (sx2Var instanceof qx2) {
                objA = new AdLoadResult.Failure(((qx2) sx2Var).a);
            } else {
                if (!(sx2Var instanceof rx2)) {
                    throw new p005kotlin.NoWhenBranchMatchedException();
                }
                objA = lk1.a((xz1) ((rx2) sx2Var).a);
            }
            b91Var.b = 1;
            if (flowCollector.emit(objA, b91Var) == coroutine_suspended) {
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
