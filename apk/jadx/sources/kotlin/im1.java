package kotlin;

import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.internal.nativead.InternalNativeAd;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class im1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ InternalNativeAd a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public im1(InternalNativeAd internalNativeAd, Continuation continuation) {
        super(2, continuation);
        this.a = internalNativeAd;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new im1(this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new im1(this.a, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        this.a.getP().a((View) null, 0);
        return p005kotlin.Unit.INSTANCE;
    }
}
