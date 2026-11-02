package kotlin;

import com.google.common.base.Splitter;
import com.ironsource.C3510b4;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class y14 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ String b;
    public final /* synthetic */ String c;
    public final /* synthetic */ mq0 d;
    public final /* synthetic */ ey3 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y14(String str, String str2, mq0 mq0Var, Continuation continuation, ey3 ey3Var) {
        super(2, continuation);
        this.b = str;
        this.c = str2;
        this.d = mq0Var;
        this.e = ey3Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new y14(this.b, this.c, this.d, continuation, this.e);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((y14) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Splitter splitter = f01.a;
            f01.b("Invoking function [" + this.b + "] asynchronously on listener [" + this.c + C3510b4.j.e, null);
            b24 b24Var = (b24) this.d;
            ey3 ey3Var = this.e;
            this.a = 1;
            if (b24Var.b(ey3Var, this) == coroutine_suspended) {
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
