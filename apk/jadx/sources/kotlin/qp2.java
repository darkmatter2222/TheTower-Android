package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class qp2 implements zr1 {
    public final /* synthetic */ s93 a;

    public qp2(s93 s93Var) {
        this.a = s93Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(a04 a04Var, Continuation continuation) {
        pp2 pp2Var;
        if (continuation instanceof pp2) {
            pp2Var = (pp2) continuation;
            int i = pp2Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                pp2Var.c = i - Integer.MIN_VALUE;
            } else {
                pp2Var = new pp2(this, continuation);
            }
        } else {
            pp2Var = new pp2(this, continuation);
        }
        Object obj = pp2Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = pp2Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Function2 op2Var = new op2(this.a, null);
            pp2Var.c = 1;
            if (a04Var.a(op2Var, pp2Var) == coroutine_suspended) {
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
        return a((a04) obj, (Continuation) or1Var);
    }
}
