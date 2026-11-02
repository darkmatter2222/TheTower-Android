package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class xg1 implements rh3 {
    public final if1 a;

    public xg1(if1 inspectorManager) {
        Intrinsics.checkNotNullParameter(inspectorManager, "inspectorManager");
        this.a = inspectorManager;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.INSPECTOR_SIGNAL;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.rh3
    public final Object s(Continuation continuation) throws Throwable {
        wg1 wg1Var;
        if (continuation instanceof wg1) {
            wg1Var = (wg1) continuation;
            int i = wg1Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                wg1Var.c = i - Integer.MIN_VALUE;
            } else {
                wg1Var = new wg1(this, continuation);
            }
        } else {
            wg1Var = new wg1(this, continuation);
        }
        Object objX = wg1Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = wg1Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objX);
            if1 if1Var = this.a;
            wg1Var.c = 1;
            objX = if1Var.x(wg1Var);
            if (objX == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objX);
        }
        return new q01(objX);
    }
}
