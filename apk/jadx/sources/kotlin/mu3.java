package kotlin;

import android.content.Context;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class mu3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ nu3 a;
    public final /* synthetic */ Context b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mu3(nu3 nu3Var, Context context, Continuation continuation) {
        super(2, continuation);
        this.a = nu3Var;
        this.b = context;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new mu3(this.a, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new mu3(this.a, this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        nu3 nu3Var = this.a;
        Context context = this.b;
        int i = nu3.b0;
        nu3Var.a(context);
        return p005kotlin.Unit.INSTANCE;
    }
}
