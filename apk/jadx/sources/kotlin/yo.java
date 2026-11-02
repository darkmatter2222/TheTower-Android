package kotlin;

import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class yo extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ zo b;
    public final /* synthetic */ h41 c;
    public final /* synthetic */ oo d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yo(zo zoVar, h41 h41Var, oo ooVar, Continuation continuation) {
        super(2, continuation);
        this.b = zoVar;
        this.c = h41Var;
        this.d = ooVar;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new yo(this.b, this.c, this.d, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((yo) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            zo zoVar = this.b;
            h41 h41Var = this.c;
            i2 i2Var = zoVar.f;
            tk0 tk0Var = (tk0) ((be0) this.d).X.get();
            this.a = 1;
            zoVar.getClass();
            if (at0.a(zoVar, h41Var, i2Var, tk0Var, this) == coroutine_suspended) {
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
