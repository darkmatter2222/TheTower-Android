package kotlin;

import com.google.common.base.Splitter;
import com.ironsource.C3510b4;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class m0 extends SuspendLambda implements Function1 {
    public final /* synthetic */ String a;
    public final /* synthetic */ String b;
    public final /* synthetic */ mq0 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m0(String str, String str2, mq0 mq0Var, Continuation continuation) {
        super(1, continuation);
        this.a = str;
        this.b = str2;
        this.c = mq0Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new m0(this.a, this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((m0) create((Continuation) obj)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        Splitter splitter = f01.a;
        f01.b("Invoking function [" + this.a + "] serially on listener [" + this.b + C3510b4.j.e, null);
        ((e1) this.c).d();
        return p005kotlin.Unit.INSTANCE;
    }
}
