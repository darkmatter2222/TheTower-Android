package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class yp0 extends ContinuationImpl {
    public Object a;
    public Mutex b;
    public /* synthetic */ Object c;
    public final /* synthetic */ dq0 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yp0(dq0 dq0Var, Continuation continuation) {
        super(continuation);
        this.d = dq0Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return dq0.a(this.d, this);
    }
}
