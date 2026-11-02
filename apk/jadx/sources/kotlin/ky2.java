package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ky2 extends ContinuationImpl {
    public wy2 a;
    public ck1 b;
    public /* synthetic */ Object c;
    public final /* synthetic */ wy2 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ky2(wy2 wy2Var, Continuation continuation) {
        super(continuation);
        this.d = wy2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return wy2.a(this.d, (ck1) null, this);
    }
}
