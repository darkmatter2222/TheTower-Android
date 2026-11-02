package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class fm implements rh3 {
    public final g30 a;

    public fm(g30 consentManager) {
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        this.a = consentManager;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.APP_SET_ID;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        em emVar;
        fu fuVar;
        if (continuation instanceof em) {
            emVar = (em) continuation;
            int i = emVar.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                emVar.c = i - Integer.MIN_VALUE;
            } else {
                emVar = new em(this, continuation);
            }
        } else {
            emVar = new em(this, continuation);
        }
        Object objE = emVar.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = emVar.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objE);
            g30 g30Var = this.a;
            emVar.c = 1;
            objE = g30Var.E(emVar);
            if (objE == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objE);
        }
        v01 v01Var = (v01) objE;
        if (v01Var == null) {
            fuVar = null;
        } else {
            if (v01Var instanceof i01) {
                return (i01) v01Var;
            }
            fuVar = (fu) ((q01) v01Var).b;
        }
        return new q01(new dm(fuVar != null ? fuVar.a : null));
    }
}
