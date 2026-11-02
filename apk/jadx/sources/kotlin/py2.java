package kotlin;

import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdRefreshCallback;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class py2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ wy2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public py2(wy2 wy2Var, Continuation continuation) {
        super(2, continuation);
        this.a = wy2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new py2(this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new py2(this.a, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        wy2 wy2Var = this.a;
        BannerAdRefreshCallback bannerAdRefreshCallback = (BannerAdRefreshCallback) wy2Var.v.getValue(wy2Var, wy2.C[0]);
        if (bannerAdRefreshCallback != null) {
            bannerAdRefreshCallback.onAdRefreshed();
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
