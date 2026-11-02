package kotlin;

import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes.dex */
public final class dr1 implements zr1 {
    public final /* synthetic */ Map a;

    public dr1(Map map) {
        this.a = map;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ar1 ar1Var, Continuation continuation) {
        cr1 cr1Var;
        if (continuation instanceof cr1) {
            cr1Var = (cr1) continuation;
            int i = cr1Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                cr1Var.c = i - Integer.MIN_VALUE;
            } else {
                cr1Var = new cr1(this, continuation);
            }
        } else {
            cr1Var = new cr1(this, continuation);
        }
        Object obj = cr1Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = cr1Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            t41 t41Var = new t41(this.a);
            cr1Var.c = 1;
            if (t41Var.a(ar1Var, cr1Var) == coroutine_suspended) {
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
        return a((ar1) obj, (Continuation) or1Var);
    }
}
