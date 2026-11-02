package kotlin;

import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class wl2 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ Ref.ObjectRef c;
    public final /* synthetic */ im2 d;
    public final /* synthetic */ om2 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wl2(boolean z, Ref.ObjectRef objectRef, im2 im2Var, om2 om2Var, Continuation continuation) {
        super(2, continuation);
        this.b = z;
        this.c = objectRef;
        this.d = im2Var;
        this.e = om2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new wl2(this.b, this.c, this.d, this.e, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((wl2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            if (this.b || this.c.element == 0) {
                im2 im2Var = this.d;
                om2 om2Var = this.e;
                this.a = 1;
                im2Var.getClass();
                obj = im2.b(im2Var, om2Var, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return p005kotlin.Unit.INSTANCE;
        }
        if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        p005kotlin.ResultKt.throwOnFailure(obj);
        return p005kotlin.Unit.INSTANCE;
    }
}
