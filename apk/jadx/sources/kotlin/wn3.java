package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class wn3 implements rh3 {
    public final ca2 a;

    public wn3(ca2 networkConnectivityManager) {
        Intrinsics.checkNotNullParameter(networkConnectivityManager, "networkConnectivityManager");
        this.a = networkConnectivityManager;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.TELEPHONY;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        vn3 vn3Var;
        if (continuation instanceof vn3) {
            vn3Var = (vn3) continuation;
            int i = vn3Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                vn3Var.c = i - Integer.MIN_VALUE;
            } else {
                vn3Var = new vn3(this, continuation);
            }
        } else {
            vn3Var = new vn3(this, continuation);
        }
        Object objA = vn3Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = vn3Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            ca2 ca2Var = this.a;
            vn3Var.c = 1;
            objA = ca2Var.a(vn3Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objA);
        }
        return new q01(objA);
    }
}
