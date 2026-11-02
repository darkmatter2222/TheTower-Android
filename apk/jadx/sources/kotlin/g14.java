package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class g14 extends ContinuationImpl {
    public Object a;
    public rr3 b;
    public /* synthetic */ Object c;
    public final /* synthetic */ r14 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g14(r14 r14Var, Continuation continuation) {
        super(continuation);
        this.d = r14Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return r14.c(this.d, this);
    }
}
