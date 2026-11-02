package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class pc3 implements rh3 {
    public final g30 a;

    public pc3(g30 consentManager) {
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        this.a = consentManager;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.SESSION_ID;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        oc3 oc3Var;
        if (continuation instanceof oc3) {
            oc3Var = (oc3) continuation;
            int i = oc3Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                oc3Var.c = i - Integer.MIN_VALUE;
            } else {
                oc3Var = new oc3(this, continuation);
            }
        } else {
            oc3Var = new oc3(this, continuation);
        }
        Object objI = oc3Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = oc3Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objI);
            g30 g30Var = this.a;
            oc3Var.c = 1;
            g30Var.getClass();
            objI = g30.i(g30Var, oc3Var);
            if (objI == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objI);
        }
        return new q01(new nc3((String) objI));
    }
}
