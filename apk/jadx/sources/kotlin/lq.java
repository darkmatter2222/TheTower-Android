package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class lq extends ContinuationImpl {
    public Object a;
    public Object b;
    public Object c;
    public ot0 d;
    public Object e;
    public Object f;
    public /* synthetic */ Object g;
    public final /* synthetic */ nq h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lq(nq nqVar, Continuation continuation) {
        super(continuation);
        this.h = nqVar;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= Integer.MIN_VALUE;
        return nq.a(this.h, this);
    }
}
