package kotlin;

import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class si extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ String b;
    public final /* synthetic */ e11 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public si(String str, e11 e11Var, Continuation continuation) {
        super(2, continuation);
        this.b = str;
        this.c = e11Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        si siVar = new si(this.b, this.c, continuation);
        siVar.a = obj;
        return siVar;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((si) create((ri) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        ri riVar = (ri) this.a;
        String key = this.b;
        e11 value = this.c;
        vz0.a aVarU = riVar.u();
        Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
        qi builder = (qi) aVarU;
        Intrinsics.checkNotNullParameter(builder, "builder");
        Map mapH = builder.h();
        Intrinsics.checkNotNullExpressionValue(mapH, "getLogsMap(...)");
        Intrinsics.checkNotNullParameter(new no0(mapH), "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        builder.a(key, value);
        vz0 vz0VarB = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (ri) vz0VarB;
    }
}
