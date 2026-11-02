package kotlin;

import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdRefreshCallback;
import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class sy2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ wy2 a;
    public final /* synthetic */ v01 b;
    public final /* synthetic */ ResponseInfo c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sy2(ResponseInfo responseInfo, wy2 wy2Var, v01 v01Var, Continuation continuation) {
        super(2, continuation);
        this.a = wy2Var;
        this.b = v01Var;
        this.c = responseInfo;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new sy2(this.c, this.a, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((sy2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        wy2 wy2Var = this.a;
        BannerAdRefreshCallback bannerAdRefreshCallback = (BannerAdRefreshCallback) wy2Var.v.getValue(wy2Var, wy2.C[0]);
        if (bannerAdRefreshCallback != null) {
            wy2 wy2Var2 = this.a;
            i01 i01Var = (i01) this.b;
            ResponseInfo responseInfo = this.c;
            wy2Var2.getClass();
            bannerAdRefreshCallback.onAdFailedToRefresh(px2.a(i01Var, responseInfo));
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
