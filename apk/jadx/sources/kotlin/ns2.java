package kotlin;

import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdRequest;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.PreloadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.PreloadConfiguration;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ns2 extends h6 {
    public final /* synthetic */ PreloadConfiguration L;
    public final /* synthetic */ pt2 M;
    public final /* synthetic */ BannerAdRequest N;

    /* JADX WARN: Illegal instructions before constructor call */
    public ns2(String str, PreloadConfiguration preloadConfiguration, PreloadCallback preloadCallback, pt2 pt2Var, boolean z, boolean z2, BannerAdRequest bannerAdRequest, CoroutineScope coroutineScope, g83 g83Var, tx txVar, ex0 ex0Var, f13 f13Var, boolean z3, k6 k6Var) {
        j53 j53Var = j53.f;
        this.L = preloadConfiguration;
        this.M = pt2Var;
        this.N = bannerAdRequest;
        super(preloadCallback, preloadConfiguration, j53Var, ex0Var, k6Var, pt2Var, g83Var, txVar, f13Var, str, coroutineScope, z, z2, z3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.h6
    public final Object t(Continuation continuation) {
        ms2 ms2Var;
        wy2 wy2Var;
        if (continuation instanceof ms2) {
            ms2Var = (ms2) continuation;
            int i = ms2Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                ms2Var.d = i - Integer.MIN_VALUE;
            } else {
                ms2Var = new ms2(this, continuation);
            }
        } else {
            ms2Var = new ms2(this, continuation);
        }
        Object obj = ms2Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ms2Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            wy2 wy2VarA = ((bz2) ((bz2) ((bz2) ((bz2) ((bz2) ((bz2) this.M.j.get()).b(false)).a(true)).a((BaseRequest) this.L.getRequest())).a(this.L.getRequest())).a(j53.f)).a((BannerRequest) this.N).a(this.N).a().a();
            ms2Var.a = wy2VarA;
            ms2Var.d = 1;
            wy2VarA.getClass();
            Object objA = px2.a(wy2VarA, ms2Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            wy2Var = wy2VarA;
            obj = objA;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            wy2Var = ms2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        sx2 sx2Var = (sx2) obj;
        if (sx2Var instanceof qx2) {
            return sx2Var;
        }
        if (!(sx2Var instanceof rx2)) {
            throw new p005kotlin.NoWhenBranchMatchedException();
        }
        ck1 ck1Var = (ck1) ((rx2) sx2Var).a;
        Intrinsics.checkNotNull(wy2Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.banner.PublisherBannerAdLoader<*>");
        return new rx2(new kp(ck1Var, wy2Var));
    }
}
