package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.Ad;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadResult;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class fq extends SuspendLambda implements Function2 {
    public int a;
    public /* synthetic */ Object b;
    public final /* synthetic */ Function2 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fq(Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.c = function2;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        fq fqVar = new fq(this.c, continuation);
        fqVar.b = obj;
        return fqVar;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        fq fqVar = new fq(this.c, (Continuation) obj2);
        fqVar.b = (sx2) obj;
        return fqVar.invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            sx2 sx2Var = (sx2) this.b;
            if (!(sx2Var instanceof rx2)) {
                if (sx2Var instanceof qx2) {
                    return new AdLoadResult.Failure(((qx2) sx2Var).a);
                }
                throw new p005kotlin.NoWhenBranchMatchedException();
            }
            Function2 function2 = this.c;
            Object obj2 = ((rx2) sx2Var).a;
            this.a = 1;
            obj = function2.invoke(obj2, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        return new AdLoadResult.Success((Ad) obj);
    }
}
