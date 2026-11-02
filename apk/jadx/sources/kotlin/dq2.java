package kotlin;

import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes.dex */
public final class dq2 implements zr1 {
    public final /* synthetic */ Map a;

    public dq2(Map map) {
        this.a = map;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(nr1 nr1Var, Continuation continuation) {
        cq2 cq2Var;
        if (continuation instanceof cq2) {
            cq2Var = (cq2) continuation;
            int i = cq2Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                cq2Var.c = i - Integer.MIN_VALUE;
            } else {
                cq2Var = new cq2(this, continuation);
            }
        } else {
            cq2Var = new cq2(this, continuation);
        }
        Object obj = cq2Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = cq2Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            t41 t41Var = new t41(this.a);
            cq2Var.c = 1;
            if (t41Var.a(nr1Var, cq2Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.zr1
    public final /* bridge */ /* synthetic */ Object a(Object obj, or1 or1Var) {
        return a((nr1) obj, (Continuation) or1Var);
    }
}
