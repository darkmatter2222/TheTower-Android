package kotlin;

import com.google.android.libraries.ads.mobile.sdk.signal.Signal;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalGenerationResult;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class zg3 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ eh3 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zg3(eh3 eh3Var, Continuation continuation) {
        super(2, continuation);
        this.b = eh3Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zg3(this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new zg3(this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            eh3 eh3Var = this.b;
            this.a = 1;
            eh3Var.getClass();
            obj = eh3.a(eh3Var, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        v01 v01Var = (v01) obj;
        if (v01Var instanceof q01) {
            return new SignalGenerationResult.Success((Signal) ((q01) v01Var).b);
        }
        if (v01Var instanceof i01) {
            return new SignalGenerationResult.Failure(mg3.a((i01) v01Var));
        }
        throw new p005kotlin.NoWhenBranchMatchedException();
    }
}
