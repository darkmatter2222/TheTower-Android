package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdLoadResult;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class iq extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ Function1 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public iq(Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.b = function1;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        iq iqVar = new iq(this.b, continuation);
        iqVar.a = obj;
        return iqVar;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        iq iqVar = new iq(this.b, (Continuation) obj2);
        iqVar.a = (sx2) obj;
        return iqVar.invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        sx2 sx2Var = (sx2) this.a;
        if (sx2Var instanceof rx2) {
            return (AdLoadResult) this.b.invoke(((rx2) sx2Var).a);
        }
        if (sx2Var instanceof qx2) {
            return new AdLoadResult.Failure(((qx2) sx2Var).a);
        }
        throw new p005kotlin.NoWhenBranchMatchedException();
    }
}
