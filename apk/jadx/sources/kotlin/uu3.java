package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class uu3 implements zr1 {
    public static final uu3 a = new uu3();

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(a04 a04Var, Continuation continuation) {
        tu3 tu3Var;
        if (continuation instanceof tu3) {
            tu3Var = (tu3) continuation;
            int i = tu3Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                tu3Var.c = i - Integer.MIN_VALUE;
            } else {
                tu3Var = new tu3(this, continuation);
            }
        } else {
            tu3Var = new tu3(this, continuation);
        }
        Object obj = tu3Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = tu3Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Function2 su3Var = new su3(null);
            tu3Var.c = 1;
            if (a04Var.a(su3Var, tu3Var) == coroutine_suspended) {
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
