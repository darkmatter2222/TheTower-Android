package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.PreloadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.PreloadConfiguration;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes.dex */
public final class js2 extends h6 {
    public final /* synthetic */ PreloadConfiguration L;
    public final /* synthetic */ pt2 M;

    /* JADX WARN: Illegal instructions before constructor call */
    public js2(PreloadCallback preloadCallback, PreloadConfiguration preloadConfiguration, ex0 ex0Var, k6 k6Var, pt2 pt2Var, g83 g83Var, tx txVar, f13 f13Var, String str, CoroutineScope coroutineScope, boolean z, boolean z2, boolean z3) {
        j53 j53Var = j53.e;
        this.L = preloadConfiguration;
        this.M = pt2Var;
        super(preloadCallback, preloadConfiguration, j53Var, ex0Var, k6Var, pt2Var, g83Var, txVar, f13Var, str, coroutineScope, z, z2, z3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.h6
    public final Object t(Continuation continuation) {
        is2 is2Var;
        if (continuation instanceof is2) {
            is2Var = (is2) continuation;
            int i = is2Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                is2Var.c = i - Integer.MIN_VALUE;
            } else {
                is2Var = new is2(this, continuation);
            }
        } else {
            is2Var = new is2(this, continuation);
        }
        Object objA = is2Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = is2Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            uh0 uh0Var = (uh0) ((dy2) ((uh0) ((dy2) ((uh0) ((dy2) ((uh0) ((dy2) ((uh0) ((dy2) this.M.i.get())).b(false))).a(true))).a((BaseRequest) this.L.getRequest()))).a(this.L.getRequest()));
            uh0Var.d = j53.e;
            kq2.a(uh0Var.b, AdRequest.class);
            kq2.a(uh0Var.c, BaseRequest.class);
            kq2.a(uh0Var.d, j53.class);
            kq2.a(uh0Var.e, Boolean.class);
            kq2.a(uh0Var.f, Boolean.class);
            zx2 zx2Var = (zx2) new vh0(uh0Var.a, uh0Var.b, uh0Var.c, uh0Var.d, uh0Var.e, uh0Var.f).i.get();
            is2Var.c = 1;
            zx2Var.getClass();
            objA = px2.a(zx2Var, is2Var);
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
