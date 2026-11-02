package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.VideoController;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class zq3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ VideoController.VideoLifecycleCallbacks a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zq3(VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks, Continuation continuation) {
        super(2, continuation);
        this.a = videoLifecycleCallbacks;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zq3(this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new zq3(this.a, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        this.a.onVideoPlay();
        return p005kotlin.Unit.INSTANCE;
    }
}
