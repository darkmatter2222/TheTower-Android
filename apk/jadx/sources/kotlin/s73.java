package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class s73 implements q73 {
    public final cw2 a;

    public s73(dw2 componentProvider) {
        Intrinsics.checkNotNullParameter(componentProvider, "componentProvider");
        this.a = componentProvider;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(AdRequest adRequest, j53 j53Var, ks3 ks3Var, boolean z, m13 m13Var, md1 md1Var, pb pbVar, Continuation continuation) {
        r73 r73Var;
        if (continuation instanceof r73) {
            r73Var = (r73) continuation;
            int i = r73Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                r73Var.c = i - Integer.MIN_VALUE;
            } else {
                r73Var = new r73(this, continuation);
            }
        } else {
            r73Var = new r73(this, continuation);
        }
        Object objA = r73Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = r73Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            mi1 mi1Var = (mi1) ((yg0) ((yn1) ((yg0) ((yn1) ((yg0) ((yn1) ((yg0) ((yn1) ((yg0) ((yn1) ((yg0) ((yn1) ((yg0) ((yn1) ((yg0) ((yn1) ((yg0) ((yn1) ((yg0) ((yn1) ((yg0) ((yn1) this.a.get())).a(adRequest))).a(j53Var))).a(ks3Var.a))).a(ks3Var.b))).a(z))).a(m13Var))).b(true))).a(md1Var))).a(pbVar))).c(false))).a().D0.get();
            r73Var.c = 1;
            objA = ((si1) mi1Var).a(r73Var);
            if (objA != coroutine_suspended) {
            }
        }
        if (i2 != 1) {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objA);
            return objA;
        }
        p005kotlin.ResultKt.throwOnFailure(objA);
        r73Var.c = 2;
        Object objFirst = FlowKt.first((Flow) objA, r73Var);
        return objFirst == coroutine_suspended ? coroutine_suspended : objFirst;
    }
}
