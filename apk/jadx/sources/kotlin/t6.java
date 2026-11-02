package kotlin;

import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class t6 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ String b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t6(String str, Continuation continuation) {
        super(2, continuation);
        this.b = str;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        t6 t6Var = new t6(this.b, continuation);
        t6Var.a = obj;
        return t6Var;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        t6 t6Var = new t6(this.b, (Continuation) obj2);
        t6Var.a = (u7) obj;
        return t6Var.invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        u7 u7Var = (u7) this.a;
        String key = this.b;
        vz0.a aVarU = u7Var.u();
        Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
        t7 builder = (t7) aVarU;
        Intrinsics.checkNotNullParameter(builder, "builder");
        Map mapH = builder.h();
        Intrinsics.checkNotNullExpressionValue(mapH, "getQueryIdToAdQualityDataMapMap(...)");
        Intrinsics.checkNotNullParameter(new no0(mapH), "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        builder.a(key);
        vz0 vz0VarB = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (u7) vz0VarB;
    }
}
