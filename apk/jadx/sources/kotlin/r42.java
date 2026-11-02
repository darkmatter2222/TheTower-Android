package kotlin;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class r42 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ v42 b;
    public final /* synthetic */ JsonElement c;
    public final /* synthetic */ boolean d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r42(v42 v42Var, JsonElement jsonElement, boolean z, Continuation continuation) {
        super(2, continuation);
        this.b = v42Var;
        this.c = jsonElement;
        this.d = z;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new r42(this.b, this.c, this.d, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((r42) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
            return obj;
        }
        p005kotlin.ResultKt.throwOnFailure(obj);
        v42 v42Var = this.b;
        ds1 ds1Var = ds1.a;
        JsonObject jsonObjectA = ds1.a(this.c);
        boolean z = this.d;
        this.a = 1;
        int i2 = v42.h;
        Object objA = v42Var.a(jsonObjectA, z, this);
        return objA == coroutine_suspended ? coroutine_suspended : objA;
    }
}
