package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class sj2 implements rh3 {
    public final g30 a;

    public sj2(g30 consentManager) {
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        this.a = consentManager;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.PER_APP_ID_V2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        rj2 rj2Var;
        pj2 pj2Var;
        if (continuation instanceof rj2) {
            rj2Var = (rj2) continuation;
            int i = rj2Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                rj2Var.c = i - Integer.MIN_VALUE;
            } else {
                rj2Var = new rj2(this, continuation);
            }
        } else {
            rj2Var = new rj2(this, continuation);
        }
        Object objJ = rj2Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = rj2Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objJ);
            g30 g30Var = this.a;
            rj2Var.c = 1;
            objJ = g30Var.J(rj2Var);
            if (objJ == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objJ);
        }
        v01 v01Var = (v01) objJ;
        if (v01Var == null) {
            pj2Var = null;
        } else {
            if (v01Var instanceof i01) {
                return (i01) v01Var;
            }
            pj2Var = (pj2) ((q01) v01Var).b;
        }
        return new q01(new qj2(pj2Var));
    }
}
