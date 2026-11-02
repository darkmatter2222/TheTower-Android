package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class y40 implements zr1 {
    public final /* synthetic */ ry1 a;

    public y40(ry1 ry1Var) {
        this.a = ry1Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(a04 a04Var, Continuation continuation) {
        x40 x40Var;
        if (continuation instanceof x40) {
            x40Var = (x40) continuation;
            int i = x40Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                x40Var.c = i - Integer.MIN_VALUE;
            } else {
                x40Var = new x40(this, continuation);
            }
        } else {
            x40Var = new x40(this, continuation);
        }
        Object obj = x40Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = x40Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Function2 w40Var = new w40(this.a, null);
            x40Var.c = 1;
            if (a04Var.a(w40Var, x40Var) == coroutine_suspended) {
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
