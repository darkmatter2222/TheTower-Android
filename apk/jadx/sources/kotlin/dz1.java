package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class dz1 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ fz1 b;
    public final /* synthetic */ r31 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dz1(fz1 fz1Var, r31 r31Var, Continuation continuation) {
        super(2, continuation);
        this.b = fz1Var;
        this.c = r31Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new dz1(this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new dz1(this.b, this.c, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ix1 ix1Var = this.b.a;
            r31 r31Var = this.c;
            this.a = 1;
            ix1Var.getClass();
            if (ix1.a(r31Var, "setOrientationProperties is only valid for fullscreen or expanded webviews.", "setOrientationProperties", this) == coroutine_suspended) {
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
