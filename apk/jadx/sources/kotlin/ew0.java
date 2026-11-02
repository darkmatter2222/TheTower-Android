package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ew0 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ String b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ew0(String str, Continuation continuation) {
        super(2, continuation);
        this.b = str;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ew0 ew0Var = new ew0(this.b, continuation);
        ew0Var.a = obj;
        return ew0Var;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        ew0 ew0Var = new ew0(this.b, (Continuation) obj2);
        ew0Var.a = (vv0) obj;
        return ew0Var.invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        vv0 vv0Var = (vv0) this.a;
        String value = this.b;
        vz0.a aVarU = vv0Var.u();
        Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
        uv0 builder = (uv0) aVarU;
        Intrinsics.checkNotNullParameter(builder, "builder");
        Intrinsics.checkNotNullParameter(value, "value");
        builder.b(value);
        vz0 vz0VarB = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (vv0) vz0VarB;
    }
}
