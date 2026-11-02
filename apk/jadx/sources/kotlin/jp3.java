package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class jp3 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ lp3 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jp3(lp3 lp3Var, Continuation continuation) {
        super(2, continuation);
        this.b = lp3Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new jp3(this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new jp3(this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            v3 v3Var = this.b.b;
            FullScreenContentError fullScreenContentError = new FullScreenContentError(FullScreenContentError.ErrorCode.MEDIATION_SHOW_ERROR, "Mediation adapter failed to show Ad.", null);
            this.a = 1;
            if (v3Var.a(fullScreenContentError, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
