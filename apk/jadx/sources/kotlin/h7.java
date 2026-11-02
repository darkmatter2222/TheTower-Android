package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class h7 extends ContinuationImpl {
    public q7 a;
    public Object b;
    public long c;
    public /* synthetic */ Object d;
    public final /* synthetic */ q7 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h7(q7 q7Var, Continuation continuation) {
        super(continuation);
        this.e = q7Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return q7.c(this.e, this);
    }
}
