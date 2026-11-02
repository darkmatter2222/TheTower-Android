package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class hq0 implements rh3 {
    public final g30 a;

    public hq0(g30 consentManager) {
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        this.a = consentManager;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.EOID;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        gq0 gq0Var;
        if (continuation instanceof gq0) {
            gq0Var = (gq0) continuation;
            int i = gq0Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                gq0Var.c = i - Integer.MIN_VALUE;
            } else {
                gq0Var = new gq0(this, continuation);
            }
        } else {
            gq0Var = new gq0(this, continuation);
        }
        Object objG = gq0Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = gq0Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objG);
            g30 g30Var = this.a;
            gq0Var.c = 1;
            g30Var.getClass();
            objG = g30.g(g30Var, gq0Var);
            if (objG == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objG);
        }
        xp0 xp0Var = (xp0) objG;
        return new q01(new fq0(xp0Var != null ? xp0Var.w() : null, xp0Var != null ? Boxing.boxLong(xp0Var.x()) : null));
    }
}
