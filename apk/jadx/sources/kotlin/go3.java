package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class go3 extends ContinuationImpl {
    public io3 a;
    public jf b;
    public /* synthetic */ Object c;
    public final /* synthetic */ io3 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public go3(io3 io3Var, Continuation continuation) {
        super(continuation);
        this.d = io3Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.a((jf) null, this);
    }
}
