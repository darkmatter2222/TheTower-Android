package kotlin;

import com.unity3d.ads.adplayer.AndroidWebViewClient;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class b31 extends SuspendLambda implements Function2 {
    public final /* synthetic */ r31 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b31(r31 r31Var, Continuation continuation) {
        super(2, continuation);
        this.a = r31Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new b31(this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new b31(this.a, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        this.a.loadUrl(AndroidWebViewClient.BLANK_PAGE);
        return p005kotlin.Unit.INSTANCE;
    }
}
