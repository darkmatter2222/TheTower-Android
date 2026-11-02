package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class cq0 extends ContinuationImpl {
    public Object a;
    public Object b;
    public Mutex c;
    public long d;
    public /* synthetic */ Object e;
    public final /* synthetic */ dq0 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cq0(dq0 dq0Var, Continuation continuation) {
        super(continuation);
        this.f = dq0Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return dq0.a(this.f, null, 0L, this);
    }
}
