package kotlin;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class iw0 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ JsonObject b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ k30 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public iw0(k30 k30Var, JsonObject jsonObject, Continuation continuation, boolean z) {
        super(2, continuation);
        this.b = jsonObject;
        this.c = z;
        this.d = k30Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        iw0 iw0Var = new iw0(this.d, this.b, continuation, this.c);
        iw0Var.a = obj;
        return iw0Var;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((iw0) create((vv0) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        vv0 vv0Var = (vv0) this.a;
        JsonObject jsonObject = this.b;
        boolean z = this.c;
        k30 value = this.d;
        vz0.a aVarU = vv0Var.u();
        Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
        uv0 builder = (uv0) aVarU;
        Intrinsics.checkNotNullParameter(builder, "builder");
        if (jsonObject != null) {
            String value2 = new Gson().toJson((JsonElement) jsonObject);
            Intrinsics.checkNotNullExpressionValue(value2, "toJson(...)");
            Intrinsics.checkNotNullParameter(value2, "value");
            builder.c(value2);
            if (z) {
                builder.a(0);
            }
        }
        builder.j();
        Intrinsics.checkNotNullParameter(value, "value");
        builder.a(value);
        vz0 vz0VarB = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (vv0) vz0VarB;
    }
}
