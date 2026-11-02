package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class nj2 implements rh3 {
    public final g30 a;

    public nj2(g30 consentManager) {
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        this.a = consentManager;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.PER_APP_ID_V1;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        mj2 mj2Var;
        u41 u41Var;
        if (continuation instanceof mj2) {
            mj2Var = (mj2) continuation;
            int i = mj2Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                mj2Var.c = i - Integer.MIN_VALUE;
            } else {
                mj2Var = new mj2(this, continuation);
            }
        } else {
            mj2Var = new mj2(this, continuation);
        }
        Object objI = mj2Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = mj2Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objI);
            g30 g30Var = this.a;
            mj2Var.c = 1;
            objI = g30Var.I(mj2Var);
            if (objI == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objI);
        }
        v01 v01Var = (v01) objI;
        if (v01Var == null) {
            u41Var = null;
        } else {
            if (v01Var instanceof i01) {
                return (i01) v01Var;
            }
            u41Var = (u41) ((q01) v01Var).b;
        }
        return new q01(new lj2(u41Var));
    }
}
