package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class b50 implements zr1 {
    public final /* synthetic */ s93 a;

    public b50(s93 s93Var) {
        this.a = s93Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(a04 a04Var, Continuation continuation) {
        a50 a50Var;
        if (continuation instanceof a50) {
            a50Var = (a50) continuation;
            int i = a50Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                a50Var.c = i - Integer.MIN_VALUE;
            } else {
                a50Var = new a50(this, continuation);
            }
        } else {
            a50Var = new a50(this, continuation);
        }
        Object obj = a50Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = a50Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Function2 z40Var = new z40(this.a, null);
            a50Var.c = 1;
            if (a04Var.a(z40Var, a50Var) == coroutine_suspended) {
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
