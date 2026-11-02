package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class za3 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ String b;
    public final /* synthetic */ cb3 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public za3(cb3 cb3Var, String str, Continuation continuation) {
        super(2, continuation);
        this.b = str;
        this.c = cb3Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        za3 za3Var = new za3(this.c, this.b, continuation);
        za3Var.a = obj;
        return za3Var;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((za3) create((ua3) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        ua3 ua3Var = (ua3) this.a;
        String value = this.b;
        cb3 cb3Var = this.c;
        vz0.a aVarU = ua3Var.u();
        Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
        ta3 builder = (ta3) aVarU;
        Intrinsics.checkNotNullParameter(builder, "builder");
        Intrinsics.checkNotNullParameter(value, "value");
        builder.a(value);
        cb3Var.c.getClass();
        builder.a(System.currentTimeMillis());
        vz0 vz0VarB = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (ua3) vz0VarB;
    }
}
