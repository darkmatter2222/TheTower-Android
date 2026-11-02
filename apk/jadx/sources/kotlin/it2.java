package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class it2 extends ContinuationImpl {
    public /* synthetic */ Object a;
    public final /* synthetic */ jt2 b;
    public int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public it2(jt2 jt2Var, Continuation continuation) {
        super(continuation);
        this.b = jt2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.a = obj;
        this.c |= Integer.MIN_VALUE;
        return this.b.t(this);
    }
}
