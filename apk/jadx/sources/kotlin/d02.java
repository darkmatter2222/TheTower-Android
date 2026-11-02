package kotlin;

import kotlinx.coroutines.flow.Flow;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class d02 implements j2 {
    public final /* synthetic */ j2 a;
    public final /* synthetic */ e02 b;

    public d02(j2 j2Var, e02 e02Var) {
        this.a = j2Var;
        this.b = e02Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.j2
    public final Object a(String str, int i, Continuation continuation) {
        c02 c02Var;
        d02 d02Var;
        if (continuation instanceof c02) {
            c02Var = (c02) continuation;
            int i2 = c02Var.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c02Var.d = i2 - Integer.MIN_VALUE;
            } else {
                c02Var = new c02(this, continuation);
            }
        } else {
            c02Var = new c02(this, continuation);
        }
        Object objA = c02Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = c02Var.d;
        if (i3 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            j2 j2Var = this.a;
            c02Var.a = this;
            c02Var.d = 1;
            objA = j2Var.a(str, i, c02Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            d02Var = this;
        } else {
            if (i3 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d02Var = c02Var.a;
            p005kotlin.ResultKt.throwOnFailure(objA);
        }
        v01 v01Var = (v01) objA;
        if (v01Var instanceof i01) {
            return (i01) v01Var;
        }
        Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
        return new q01(new b02((Flow) ((q01) v01Var).b, d02Var.b));
    }

    @Override // kotlin.j2
    public final boolean b() {
        return this.a.b();
    }
}
