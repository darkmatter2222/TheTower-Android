package kotlin;

import com.google.gson.JsonObject;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class c12 extends SuspendLambda implements Function2 {
    public final /* synthetic */ JsonObject a;
    public final /* synthetic */ s02 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c12(JsonObject jsonObject, s02 s02Var, Continuation continuation) {
        super(2, continuation);
        this.a = jsonObject;
        this.b = s02Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new c12(this.a, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new c12(this.a, this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        ds1 ds1Var = ds1.a;
        this.b.v = ds1.a(this.a, "watermark_overlay_png_base64", "");
        return p005kotlin.Unit.INSTANCE;
    }
}
