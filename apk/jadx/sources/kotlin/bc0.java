package kotlin;

import com.google.gson.JsonObject;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class bc0 implements rh3 {
    public final g30 a;

    public bc0(g30 consentManager) {
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        this.a = consentManager;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.CSRB_ECO_DATA;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        ac0 ac0Var;
        if (continuation instanceof ac0) {
            ac0Var = (ac0) continuation;
            int i = ac0Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                ac0Var.c = i - Integer.MIN_VALUE;
            } else {
                ac0Var = new ac0(this, continuation);
            }
        } else {
            ac0Var = new ac0(this, continuation);
        }
        Object objC = ac0Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ac0Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objC);
            g30 g30Var = this.a;
            ac0Var.c = 1;
            g30Var.getClass();
            objC = g30.c(g30Var, ac0Var);
            if (objC == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objC);
        }
        return new q01(new zb0((JsonObject) objC));
    }
}
