package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ms2 extends ContinuationImpl {
    public wy2 a;
    public /* synthetic */ Object b;
    public final /* synthetic */ ns2 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ms2(ns2 ns2Var, Continuation continuation) {
        super(continuation);
        this.c = ns2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.c.t(this);
    }
}
