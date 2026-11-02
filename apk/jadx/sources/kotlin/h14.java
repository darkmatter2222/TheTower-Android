package kotlin;

import androidx.webkit.Profile;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class h14 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ r14 b;
    public final /* synthetic */ Profile c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h14(Profile profile, r14 r14Var, Continuation continuation) {
        super(2, continuation);
        this.b = r14Var;
        this.c = profile;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new h14(this.c, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        r14 r14Var = this.b;
        return new h14(this.c, r14Var, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            r14 r14Var = this.b;
            Profile profile = this.c;
            this.a = 1;
            if (r14Var.a(profile, this) == coroutine_suspended) {
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
