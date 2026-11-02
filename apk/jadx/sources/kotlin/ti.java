package kotlin;

import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ti extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ String b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ti(String str, Continuation continuation) {
        super(2, continuation);
        this.b = str;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ti tiVar = new ti(this.b, continuation);
        tiVar.a = obj;
        return tiVar;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        ti tiVar = new ti(this.b, (Continuation) obj2);
        tiVar.a = (ri) obj;
        return tiVar.invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        ri riVar = (ri) this.a;
        String key = this.b;
        vz0.a aVarU = riVar.u();
        Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
        qi builder = (qi) aVarU;
        Intrinsics.checkNotNullParameter(builder, "builder");
        Map mapH = builder.h();
        Intrinsics.checkNotNullExpressionValue(mapH, "getLogsMap(...)");
        Intrinsics.checkNotNullParameter(new no0(mapH), "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        builder.a(key);
        vz0 vz0VarB = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (ri) vz0VarB;
    }
}
