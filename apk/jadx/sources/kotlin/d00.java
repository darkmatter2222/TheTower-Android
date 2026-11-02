package kotlin;

import com.google.android.libraries.ads.mobile.sdk.internal.initialization.ConfigLoaderRequest;
import com.google.gson.JsonObject;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class d00 extends SuspendLambda implements Function1 {
    public int a;
    public final /* synthetic */ o00 b;
    public final /* synthetic */ ConfigLoaderRequest c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d00(o00 o00Var, ConfigLoaderRequest configLoaderRequest, Continuation continuation) {
        super(1, continuation);
        this.b = o00Var;
        this.c = configLoaderRequest;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new d00(this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new d00(this.b, this.c, (Continuation) obj).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            o00 o00Var = this.b;
            ConfigLoaderRequest configLoaderRequest = this.c;
            this.a = 1;
            obj = o00.a(o00Var, configLoaderRequest, this);
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
