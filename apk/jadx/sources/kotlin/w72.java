package kotlin;

import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes.dex */
public final class w72 implements zr1 {
    public final /* synthetic */ Map a;

    public w72(Map map) {
        this.a = map;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(nr1 nr1Var, Continuation continuation) {
        v72 v72Var;
        if (continuation instanceof v72) {
            v72Var = (v72) continuation;
            int i = v72Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                v72Var.c = i - Integer.MIN_VALUE;
            } else {
                v72Var = new v72(this, continuation);
            }
        } else {
            v72Var = new v72(this, continuation);
        }
        Object obj = v72Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = v72Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            t41 t41Var = new t41(this.a);
            v72Var.c = 1;
            if (t41Var.a(nr1Var, v72Var) == coroutine_suspended) {
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
