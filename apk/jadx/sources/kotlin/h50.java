package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class h50 implements zr1 {
    public final /* synthetic */ i2 a;
    public final /* synthetic */ cw2 b;

    public h50(i2 i2Var, dw2 dw2Var) {
        this.a = i2Var;
        this.b = dw2Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(a04 a04Var, Continuation continuation) {
        g50 g50Var;
        if (continuation instanceof g50) {
            g50Var = (g50) continuation;
            int i = g50Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                g50Var.c = i - Integer.MIN_VALUE;
            } else {
                g50Var = new g50(this, continuation);
            }
        } else {
            g50Var = new g50(this, continuation);
        }
        Object obj = g50Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = g50Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            if (!this.a.H0) {
                return p005kotlin.Unit.INSTANCE;
            }
            Object obj2 = this.b.get();
            Intrinsics.checkNotNullExpressionValue(obj2, "get(...)");
            r41 i50Var = new i50((r41) obj2);
            g50Var.c = 1;
            if (a04Var.a("/writeToLocalStorage", i50Var, g50Var) == coroutine_suspended) {
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
