package kotlin;

import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes.dex */
public final class pk3 implements zr1 {
    public final /* synthetic */ Map a;

    public pk3(Map map) {
        this.a = map;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(nr1 nr1Var, Continuation continuation) {
        ok3 ok3Var;
        if (continuation instanceof ok3) {
            ok3Var = (ok3) continuation;
            int i = ok3Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                ok3Var.c = i - Integer.MIN_VALUE;
            } else {
                ok3Var = new ok3(this, continuation);
            }
        } else {
            ok3Var = new ok3(this, continuation);
        }
        Object obj = ok3Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ok3Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            t41 t41Var = new t41(this.a);
            ok3Var.c = 1;
            if (t41Var.a(nr1Var, ok3Var) == coroutine_suspended) {
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
