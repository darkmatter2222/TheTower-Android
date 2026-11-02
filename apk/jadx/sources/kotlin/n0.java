package kotlin;

import com.google.common.base.Splitter;
import com.ironsource.C3510b4;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class n0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ String a;
    public final /* synthetic */ String b;
    public final /* synthetic */ mq0 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n0(String str, String str2, mq0 mq0Var, Continuation continuation) {
        super(2, continuation);
        this.a = str;
        this.b = str2;
        this.c = mq0Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new n0(this.a, this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((n0) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        Splitter splitter = f01.a;
        f01.b("Invoking function [" + this.a + "] asynchronously on listener [" + this.b + C3510b4.j.e, null);
        ((e1) this.c).d();
        return p005kotlin.Unit.INSTANCE;
    }
}
