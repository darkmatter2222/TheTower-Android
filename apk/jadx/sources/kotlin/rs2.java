package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.PreloadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.PreloadConfiguration;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes.dex */
public final class rs2 extends h6 {
    public final /* synthetic */ PreloadConfiguration L;
    public final /* synthetic */ pt2 M;

    /* JADX WARN: Illegal instructions before constructor call */
    public rs2(PreloadCallback preloadCallback, PreloadConfiguration preloadConfiguration, ex0 ex0Var, k6 k6Var, pt2 pt2Var, g83 g83Var, tx txVar, f13 f13Var, String str, CoroutineScope coroutineScope, boolean z, boolean z2, boolean z3) {
        j53 j53Var = j53.h;
        this.L = preloadConfiguration;
        this.M = pt2Var;
        super(preloadCallback, preloadConfiguration, j53Var, ex0Var, k6Var, pt2Var, g83Var, txVar, f13Var, str, coroutineScope, z, z2, z3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.h6
    public final Object t(Continuation continuation) {
        qs2 qs2Var;
        if (continuation instanceof qs2) {
            qs2Var = (qs2) continuation;
            int i = qs2Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                qs2Var.c = i - Integer.MIN_VALUE;
            } else {
                qs2Var = new qs2(this, continuation);
            }
        } else {
            qs2Var = new qs2(this, continuation);
        }
        Object objA = qs2Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = qs2Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            di0 di0Var = (di0) ((oz2) ((di0) ((oz2) ((di0) ((oz2) ((di0) ((oz2) ((di0) ((oz2) this.M.k.get())).b(false))).a(true))).a((BaseRequest) this.L.getRequest()))).a(this.L.getRequest()));
            di0Var.d = j53.h;
            kz2 kz2Var = (kz2) di0Var.b().i.get();
            qs2Var.c = 1;
            kz2Var.getClass();
            objA = px2.a(kz2Var, qs2Var);
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
