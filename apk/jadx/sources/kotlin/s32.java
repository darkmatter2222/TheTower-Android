package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class s32 extends SuspendLambda implements Function2 {
    public final /* synthetic */ t32 a;
    public final /* synthetic */ o32 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s32(t32 t32Var, o32 o32Var, Continuation continuation) {
        super(2, continuation);
        this.a = t32Var;
        this.b = o32Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new s32(this.a, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new s32(this.a, this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        t32.a(this.a, this.b);
        this.a.a(this.b);
        return p005kotlin.Unit.INSTANCE;
    }
}
