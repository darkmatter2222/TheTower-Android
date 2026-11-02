package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class bw0 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;

    public bw0(Continuation continuation) {
        super(2, continuation);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        bw0 bw0Var = new bw0(continuation);
        bw0Var.a = obj;
        return bw0Var;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        bw0 bw0Var = new bw0((Continuation) obj2);
        bw0Var.a = (vv0) obj;
        return bw0Var.invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        vz0.a aVarU = ((vv0) this.a).u();
        Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
        uv0 builder = (uv0) aVarU;
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.a(builder.h() + 1);
        vz0 vz0VarB = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (vv0) vz0VarB;
    }
}
