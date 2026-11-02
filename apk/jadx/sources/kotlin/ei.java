package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ei implements rh3 {
    public final g30 a;

    public ei(g30 consentManager) {
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        this.a = consentManager;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.AMAZON_FIRE_AD_ID;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        di diVar;
        ei eiVar;
        String str;
        if (continuation instanceof di) {
            diVar = (di) continuation;
            int i = diVar.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                diVar.d = i - Integer.MIN_VALUE;
            } else {
                diVar = new di(this, continuation);
            }
        } else {
            diVar = new di(this, continuation);
        }
        Object objD = diVar.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = diVar.d;
        if (i2 != 0) {
            if (i2 == 1) {
                eiVar = (ei) diVar.a;
                p005kotlin.ResultKt.throwOnFailure(objD);
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                str = (String) diVar.a;
                p005kotlin.ResultKt.throwOnFailure(objD);
            }
            return new q01(new ci(str, (Boolean) objD));
        }
        p005kotlin.ResultKt.throwOnFailure(objD);
        g30 g30Var = this.a;
        diVar.a = this;
        diVar.d = 1;
        objD = g30Var.D(diVar);
        if (objD != coroutine_suspended) {
            eiVar = this;
        }
        return coroutine_suspended;
        String str2 = (String) objD;
        g30 g30Var2 = eiVar.a;
        diVar.a = str2;
        diVar.d = 2;
        Object objL = g30Var2.L(diVar);
        if (objL != coroutine_suspended) {
            str = str2;
            objD = objL;
            return new q01(new ci(str, (Boolean) objD));
        }
        return coroutine_suspended;
    }
}
