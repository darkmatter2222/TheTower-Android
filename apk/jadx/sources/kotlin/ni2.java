package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ni2 extends ContinuationImpl {
    public Object a;
    public i2 b;
    public Object c;
    public j2 d;
    public long e;
    public /* synthetic */ Object f;
    public final /* synthetic */ vi2 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ni2(vi2 vi2Var, Continuation continuation) {
        super(continuation);
        this.g = vi2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return this.g.a((i2) null, this);
    }
}
