package kotlin;

import com.google.gson.JsonObject;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function3;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class tf2 extends SuspendLambda implements Function3 {
    public int a;
    public /* synthetic */ r31 b;
    public /* synthetic */ k9 c;
    public final /* synthetic */ vf2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tf2(vf2 vf2Var, Continuation continuation) {
        super(3, continuation);
        this.d = vf2Var;
    }

    @Override // p005kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        tf2 tf2Var = new tf2(this.d, (Continuation) obj3);
        tf2Var.b = (r31) obj;
        tf2Var.c = (k9) obj2;
        return tf2Var.invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            r31 r31Var = this.b;
            k9 adSession = this.c;
            kd2 kd2Var = this.d.f;
            kd2Var.getClass();
            Intrinsics.checkNotNullParameter(adSession, "adSession");
            JsonObject jsonObject = new JsonObject();
            this.b = null;
            this.a = 1;
            if (r31Var.a(jsonObject, "onSdkLoaded", this) == coroutine_suspended) {
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
