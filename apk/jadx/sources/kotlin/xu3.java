package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class xu3 implements zr1 {
    public static final xu3 a = new xu3();

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(a04 a04Var, Continuation continuation) {
        wu3 wu3Var;
        if (continuation instanceof wu3) {
            wu3Var = (wu3) continuation;
            int i = wu3Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                wu3Var.c = i - Integer.MIN_VALUE;
            } else {
                wu3Var = new wu3(this, continuation);
            }
        } else {
            wu3Var = new wu3(this, continuation);
        }
        Object obj = wu3Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = wu3Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Function2 vu3Var = new vu3(null);
            wu3Var.c = 1;
            if (a04Var.a(vu3Var, wu3Var) == coroutine_suspended) {
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
