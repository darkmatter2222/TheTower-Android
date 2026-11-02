package kotlin;

import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes.dex */
public final class p40 implements zr1 {
    public final /* synthetic */ Map a;

    public p40(Map map) {
        this.a = map;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(a04 a04Var, Continuation continuation) {
        o40 o40Var;
        if (continuation instanceof o40) {
            o40Var = (o40) continuation;
            int i = o40Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                o40Var.c = i - Integer.MIN_VALUE;
            } else {
                o40Var = new o40(this, continuation);
            }
        } else {
            o40Var = new o40(this, continuation);
        }
        Object obj = o40Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = o40Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            t41 t41Var = new t41(this.a);
            o40Var.c = 1;
            if (t41Var.a(a04Var, o40Var) == coroutine_suspended) {
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
