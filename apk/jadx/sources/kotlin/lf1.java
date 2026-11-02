package kotlin;

import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes.dex */
public final class lf1 implements zr1 {
    public final /* synthetic */ Map a;

    public lf1(Map map) {
        this.a = map;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(nr1 nr1Var, Continuation continuation) {
        kf1 kf1Var;
        if (continuation instanceof kf1) {
            kf1Var = (kf1) continuation;
            int i = kf1Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                kf1Var.c = i - Integer.MIN_VALUE;
            } else {
                kf1Var = new kf1(this, continuation);
            }
        } else {
            kf1Var = new kf1(this, continuation);
        }
        Object obj = kf1Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = kf1Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            t41 t41Var = new t41(this.a);
            kf1Var.c = 1;
            if (t41Var.a(nr1Var, kf1Var) == coroutine_suspended) {
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
