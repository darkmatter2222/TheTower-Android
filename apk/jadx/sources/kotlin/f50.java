package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class f50 implements zr1 {
    public final /* synthetic */ s24 a;

    public f50(s24 s24Var) {
        this.a = s24Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(a04 a04Var, Continuation continuation) {
        e50 e50Var;
        if (continuation instanceof e50) {
            e50Var = (e50) continuation;
            int i = e50Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                e50Var.c = i - Integer.MIN_VALUE;
            } else {
                e50Var = new e50(this, continuation);
            }
        } else {
            e50Var = new e50(this, continuation);
        }
        Object obj = e50Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = e50Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Function2 d50Var = new d50(this.a, null);
            e50Var.c = 1;
            if (a04Var.a(d50Var, e50Var) == coroutine_suspended) {
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
