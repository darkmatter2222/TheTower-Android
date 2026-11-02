package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class te2 extends SuspendLambda implements Function1 {
    public final /* synthetic */ ze2 a;
    public final /* synthetic */ aq1 b;
    public final /* synthetic */ zp1 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public te2(ze2 ze2Var, aq1 aq1Var, zp1 zp1Var, Continuation continuation) {
        super(1, continuation);
        this.a = ze2Var;
        this.b = aq1Var;
        this.c = zp1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new te2(this.a, this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((te2) create((Continuation) obj)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        kd2 kd2Var = this.a.c;
        aq1 javaScriptSessionService = this.b;
        zp1 tearDownHandler = this.c;
        kd2Var.getClass();
        Intrinsics.checkNotNullParameter(javaScriptSessionService, "javaScriptSessionService");
        Intrinsics.checkNotNullParameter(tearDownHandler, "tearDownHandler");
        return (p005kotlin.Unit) kd2Var.f.a("FinishJavaScriptSessionService", new ad2(javaScriptSessionService, tearDownHandler));
    }
}
