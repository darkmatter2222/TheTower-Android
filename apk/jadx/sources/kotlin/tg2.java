package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class tg2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ ah2 a;
    public final /* synthetic */ Exception b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tg2(ah2 ah2Var, Exception exc, Continuation continuation) {
        super(2, continuation);
        this.a = ah2Var;
        this.b = exc;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new tg2(this.a, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new tg2(this.a, this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        ((as3) this.a.r).a("CustomTabsClient.newSession", (Throwable) new Exception(this.b));
        return p005kotlin.Unit.INSTANCE;
    }
}
