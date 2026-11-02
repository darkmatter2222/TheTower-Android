package kotlin;

import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ca1 implements rh3 {
    public final qn a;

    public ca1(qn appState) {
        Intrinsics.checkNotNullParameter(appState, "appState");
        this.a = appState;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.IN_MEMORY_SDK_CORE_DATA;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        ba1 ba1Var;
        if (continuation instanceof ba1) {
            ba1Var = (ba1) continuation;
            int i = ba1Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                ba1Var.c = i - Integer.MIN_VALUE;
            } else {
                ba1Var = new ba1(this, continuation);
            }
        } else {
            ba1Var = new ba1(this, continuation);
        }
        Object objA = ba1Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ba1Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            qn qnVar = this.a;
            ba1Var.c = 1;
            qnVar.getClass();
            objA = qn.a(qnVar, ba1Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objA);
        }
        return new q01(new aa1((Map) objA));
    }
}
