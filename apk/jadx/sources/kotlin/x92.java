package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class x92 extends ContinuationImpl {
    public ca2 a;
    public Object b;
    public Object c;
    public Mutex d;
    public long e;
    public boolean f;
    public /* synthetic */ Object g;
    public final /* synthetic */ ca2 h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x92(ca2 ca2Var, Continuation continuation) {
        super(continuation);
        this.h = ca2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= Integer.MIN_VALUE;
        return this.h.a(0L, null, null, false, this);
    }
}
