package kotlin;

import android.os.Bundle;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class kd3 implements rh3 {
    public final g30 a;

    public kd3(g30 consentManager) {
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        this.a = consentManager;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.CONSENT_STRINGS;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        jd3 jd3Var;
        if (continuation instanceof jd3) {
            jd3Var = (jd3) continuation;
            int i = jd3Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                jd3Var.c = i - Integer.MIN_VALUE;
            } else {
                jd3Var = new jd3(this, continuation);
            }
        } else {
            jd3Var = new jd3(this, continuation);
        }
        Object objD = jd3Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = jd3Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objD);
            g30 g30Var = this.a;
            jd3Var.c = 1;
            g30Var.getClass();
            objD = g30.d(g30Var, jd3Var);
            if (objD == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objD);
        }
        return new q01(new id3((Bundle) objD));
    }
}
