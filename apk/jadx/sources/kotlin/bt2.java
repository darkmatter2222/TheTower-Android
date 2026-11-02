package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.PreloadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.PreloadConfiguration;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes.dex */
public final class bt2 extends h6 {
    public final /* synthetic */ PreloadConfiguration L;
    public final /* synthetic */ pt2 M;

    /* JADX WARN: Illegal instructions before constructor call */
    public bt2(PreloadCallback preloadCallback, PreloadConfiguration preloadConfiguration, ex0 ex0Var, k6 k6Var, pt2 pt2Var, g83 g83Var, tx txVar, f13 f13Var, String str, CoroutineScope coroutineScope, boolean z, boolean z2, boolean z3) {
        j53 j53Var = j53.k;
        this.L = preloadConfiguration;
        this.M = pt2Var;
        super(preloadCallback, preloadConfiguration, j53Var, ex0Var, k6Var, pt2Var, g83Var, txVar, f13Var, str, coroutineScope, z, z2, z3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.h6
    public final Object t(Continuation continuation) {
        at2 at2Var;
        if (continuation instanceof at2) {
            at2Var = (at2) continuation;
            int i = at2Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                at2Var.c = i - Integer.MIN_VALUE;
            } else {
                at2Var = new at2(this, continuation);
            }
        } else {
            at2Var = new at2(this, continuation);
        }
        Object objA = at2Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = at2Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            li0 li0Var = (li0) ((s03) ((li0) ((s03) ((li0) ((s03) ((li0) ((s03) ((li0) ((s03) this.M.m.get())).b(false))).a(true))).a((BaseRequest) this.L.getRequest()))).a(this.L.getRequest()));
            li0Var.d = j53.k;
            o03 o03Var = (o03) li0Var.b().i.get();
            at2Var.c = 1;
            o03Var.getClass();
            objA = px2.a(o03Var, at2Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objA);
        }
        sx2 sx2Var = (sx2) objA;
        if (sx2Var instanceof qx2) {
            return sx2Var;
        }
        if (sx2Var instanceof rx2) {
            return new rx2(new xt2((zh1) ((rx2) sx2Var).a));
        }
        throw new p005kotlin.NoWhenBranchMatchedException();
    }
}
