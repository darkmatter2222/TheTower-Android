package kotlin;

import com.google.gson.JsonObject;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class iy1 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ jy1 b;
    public final /* synthetic */ r31 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public iy1(jy1 jy1Var, r31 r31Var, Continuation continuation) {
        super(2, continuation);
        this.b = jy1Var;
        this.c = r31Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new iy1(this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new iy1(this.b, this.c, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            jy1 jy1Var = this.b;
            ix1 ix1Var = jy1Var.c;
            r31 r31Var = this.c;
            String str = jy1Var.d;
            this.a = 1;
            ix1Var.getClass();
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("js", str);
            Object objA = r31Var.a(jsonObject, "onReadyEventReceived", this);
            if (objA != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objA = p005kotlin.Unit.INSTANCE;
            }
            if (objA == coroutine_suspended) {
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
