package kotlin;

import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdEventCallback;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class tl0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ fm0 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tl0(fm0 fm0Var, Continuation continuation) {
        super(2, continuation);
        this.a = fm0Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new tl0(this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new tl0(this.a, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        PictureInPictureAdEventCallback pictureInPictureAdEventCallback;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        fm0 fm0Var = this.a;
        synchronized (fm0Var) {
            pictureInPictureAdEventCallback = fm0Var.m;
        }
        if (pictureInPictureAdEventCallback != null) {
            pictureInPictureAdEventCallback.onAdHidden();
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
