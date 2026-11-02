package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.PreloadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.PreloadConfiguration;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialAdRequest;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes.dex */
public final class jt2 extends h6 {
    public final /* synthetic */ PreloadConfiguration L;
    public final /* synthetic */ pt2 M;
    public final /* synthetic */ SwipeableInterstitialAdRequest N;

    /* JADX WARN: Illegal instructions before constructor call */
    public jt2(String str, PreloadConfiguration preloadConfiguration, PreloadCallback preloadCallback, pt2 pt2Var, boolean z, boolean z2, SwipeableInterstitialAdRequest swipeableInterstitialAdRequest, CoroutineScope coroutineScope, g83 g83Var, tx txVar, ex0 ex0Var, f13 f13Var, boolean z3, k6 k6Var) {
        j53 j53Var = j53.l;
        this.L = preloadConfiguration;
        this.M = pt2Var;
        this.N = swipeableInterstitialAdRequest;
        super(preloadCallback, preloadConfiguration, j53Var, ex0Var, k6Var, pt2Var, g83Var, txVar, f13Var, str, coroutineScope, z, z2, z3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.h6
    public final Object t(Continuation continuation) {
        it2 it2Var;
        if (continuation instanceof it2) {
            it2Var = (it2) continuation;
            int i = it2Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                it2Var.c = i - Integer.MIN_VALUE;
            } else {
                it2Var = new it2(this, continuation);
            }
        } else {
            it2Var = new it2(this, continuation);
        }
        Object objA = it2Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = it2Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            oi0 oi0Var = (oi0) ((x03) ((oi0) ((x03) ((oi0) ((x03) ((oi0) ((x03) ((oi0) ((x03) this.M.n.get())).b(false))).a(true))).a((BaseRequest) this.L.getRequest()))).a(this.L.getRequest()));
            oi0Var.d = j53.l;
            SwipeableInterstitialAdRequest swipeableInterstitialAdRequest = this.N;
            swipeableInterstitialAdRequest.getClass();
            oi0Var.g = swipeableInterstitialAdRequest;
            SwipeableInterstitialAdRequest swipeableInterstitialAdRequest2 = this.N;
            swipeableInterstitialAdRequest2.getClass();
            oi0Var.h = swipeableInterstitialAdRequest2;
            kq2.a(oi0Var.b, AdRequest.class);
            kq2.a(oi0Var.c, BaseRequest.class);
            kq2.a(oi0Var.d, j53.class);
            kq2.a(oi0Var.e, Boolean.class);
            kq2.a(oi0Var.f, Boolean.class);
            kq2.a(oi0Var.g, SwipeableInterstitialRequest.class);
            kq2.a(oi0Var.h, SwipeableInterstitialAdRequest.class);
            t03 t03Var = (t03) new pi0(oi0Var.a, oi0Var.c, oi0Var.d, oi0Var.e, oi0Var.f, oi0Var.h).j.get();
            it2Var.c = 1;
            t03Var.getClass();
            objA = px2.a(t03Var, it2Var);
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
