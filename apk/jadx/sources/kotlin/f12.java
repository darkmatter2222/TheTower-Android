package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class f12 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ q41 b;
    public final /* synthetic */ s02 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f12(q41 q41Var, s02 s02Var, Continuation continuation) {
        super(2, continuation);
        this.b = q41Var;
        this.c = s02Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new f12(this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new f12(this.b, this.c, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            q41 q41Var = this.b;
            this.a = 1;
            obj = q41Var.e.await(this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        String str = (String) obj;
        if (str == null) {
            throw new w01(new m01("Immersive video media data does not exist.", kk1.INTERNAL_ERROR));
        }
        this.c.r.putString("mediaUrl", str);
        return p005kotlin.Unit.INSTANCE;
    }
}
