package kotlin;

import com.google.gson.JsonObject;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
public final class qf2 extends SuspendLambda implements Function3 {
    public int a;
    public /* synthetic */ r31 b;

    public qf2(Continuation continuation) {
        super(3, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        qf2 qf2Var = new qf2((Continuation) obj3);
        qf2Var.b = (r31) obj;
        return qf2Var.invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            r31 r31Var = this.b;
            JsonObject jsonObject = new JsonObject();
            this.a = 1;
            if (r31Var.a(jsonObject, "onSdkAdUserInteractionClick", this) == coroutine_suspended) {
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
