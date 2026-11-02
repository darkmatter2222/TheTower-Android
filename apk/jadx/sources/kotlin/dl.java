package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class dl implements bl {
    public final cw2 a;

    public dl(dw2 componentProvider) {
        Intrinsics.checkNotNullParameter(componentProvider, "componentProvider");
        this.a = componentProvider;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(AdRequest adRequest, j53 j53Var, ks3 ks3Var, boolean z, m13 m13Var, md1 md1Var, pb pbVar, Continuation continuation) {
        cl clVar;
        if (continuation instanceof cl) {
            clVar = (cl) continuation;
            int i = clVar.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                clVar.c = i - Integer.MIN_VALUE;
            } else {
                clVar = new cl(this, continuation);
            }
        } else {
            clVar = new cl(this, continuation);
        }
        Object objA = clVar.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = clVar.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            mi1 mi1Var = (mi1) ((eg0) ((wj1) ((eg0) ((wj1) ((eg0) ((wj1) ((eg0) ((wj1) ((eg0) ((wj1) ((eg0) ((wj1) ((eg0) ((wj1) ((eg0) ((wj1) ((eg0) ((wj1) ((eg0) ((wj1) ((eg0) ((wj1) this.a.get())).a(adRequest))).a(j53Var))).a(ks3Var.a))).a(ks3Var.b))).a(z))).a(m13Var))).b(true))).a(md1Var))).a(pbVar))).c(false))).a().E0.get();
            clVar.c = 1;
            objA = ((si1) mi1Var).a(clVar);
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
        clVar.c = 2;
        Object objFirst = FlowKt.first((Flow) objA, clVar);
        return objFirst == coroutine_suspended ? coroutine_suspended : objFirst;
    }
}
