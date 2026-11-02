package kotlin;

import com.google.common.base.Splitter;
import com.ironsource.C3510b4;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class uu1 extends SuspendLambda implements Function1 {
    public int a;
    public final /* synthetic */ String b;
    public final /* synthetic */ String c;
    public final /* synthetic */ mq0 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public uu1(String str, String str2, mq0 mq0Var, Continuation continuation) {
        super(1, continuation);
        this.b = str;
        this.c = str2;
        this.d = mq0Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new uu1(this.b, this.c, this.d, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((uu1) create((Continuation) obj)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Splitter splitter = f01.a;
            f01.b("Invoking function [" + this.b + "] serially on listener [" + this.c + C3510b4.j.e, null);
            zu1 zu1Var = (zu1) this.d;
            this.a = 1;
            if (((l62) zu1Var).f() == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
