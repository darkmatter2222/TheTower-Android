package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.PreloadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.PreloadConfiguration;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes.dex */
public final class vs2 extends h6 {
    public final /* synthetic */ PreloadConfiguration L;
    public final /* synthetic */ pt2 M;
    public final /* synthetic */ NativeAdRequest N;

    /* JADX WARN: Illegal instructions before constructor call */
    public vs2(String str, PreloadConfiguration preloadConfiguration, PreloadCallback preloadCallback, pt2 pt2Var, boolean z, boolean z2, NativeAdRequest nativeAdRequest, CoroutineScope coroutineScope, g83 g83Var, tx txVar, ex0 ex0Var, f13 f13Var, boolean z3, k6 k6Var) {
        j53 j53Var = j53.i;
        this.L = preloadConfiguration;
        this.M = pt2Var;
        this.N = nativeAdRequest;
        super(preloadCallback, preloadConfiguration, j53Var, ex0Var, k6Var, pt2Var, g83Var, txVar, f13Var, str, coroutineScope, z, z2, z3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.h6
    public final Object t(Continuation continuation) {
        us2 us2Var;
        if (continuation instanceof us2) {
            us2Var = (us2) continuation;
            int i = us2Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                us2Var.c = i - Integer.MIN_VALUE;
            } else {
                us2Var = new us2(this, continuation);
            }
        } else {
            us2Var = new us2(this, continuation);
        }
        Object objA = us2Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = us2Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            px2 px2VarA = ((vz2) ((vz2) ((vz2) ((vz2) ((vz2) ((vz2) this.M.l.get()).b(false)).a(true)).a((BaseRequest) this.L.getRequest())).a(this.L.getRequest())).a(j53.i)).a((NativeRequest) this.N).a(this.N).a(1).a().a();
            us2Var.c = 1;
            px2VarA.getClass();
            objA = px2.a(px2VarA, us2Var);
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
