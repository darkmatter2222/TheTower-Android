package kotlin;

import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class s22 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ String b;
    public final /* synthetic */ boolean c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s22(String str, Continuation continuation, boolean z) {
        super(2, continuation);
        this.b = str;
        this.c = z;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        s22 s22Var = new s22(this.b, continuation, this.c);
        s22Var.a = obj;
        return s22Var;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((s22) create((k22) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        k22 k22Var = (k22) this.a;
        String key = this.b;
        boolean z = this.c;
        vz0.a aVarU = k22Var.u();
        Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
        j22 builder = (j22) aVarU;
        Intrinsics.checkNotNullParameter(builder, "builder");
        Map mapH = builder.h();
        Intrinsics.checkNotNullExpressionValue(mapH, "getAdUnitToUseMediaViewMap(...)");
        Intrinsics.checkNotNullParameter(new no0(mapH), "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        builder.a(key, z);
        vz0 vz0VarB = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (k22) vz0VarB;
    }
}
