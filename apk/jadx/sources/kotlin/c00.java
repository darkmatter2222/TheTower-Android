package kotlin;

import com.google.gson.JsonObject;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class c00 extends SuspendLambda implements Function1 {
    public int a;
    public final /* synthetic */ o00 b;
    public final /* synthetic */ JsonObject c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c00(o00 o00Var, JsonObject jsonObject, Continuation continuation) {
        super(1, continuation);
        this.b = o00Var;
        this.c = jsonObject;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new c00(this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new c00(this.b, this.c, (Continuation) obj).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Object obj2 = this.b.h;
            JsonObject jsonObject = this.c;
            this.a = 1;
            obj2.getClass();
            String string = jsonObject.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            obj = ((rp0) obj2).a("google.afma.config.fetchAppSettings", string, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        v01 v01Var = (v01) obj;
        if (v01Var instanceof q01) {
            return (JsonObject) ((q01) v01Var).b;
        }
        if (!(v01Var instanceof i01)) {
            throw new p005kotlin.NoWhenBranchMatchedException();
        }
        xs3.a((i01) v01Var, false);
        return null;
    }
}
