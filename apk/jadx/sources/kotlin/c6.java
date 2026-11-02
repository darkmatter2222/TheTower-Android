package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class c6 extends ContinuationImpl {
    public h6 a;
    public rr3 b;
    public rr3 c;
    public Mutex d;
    public boolean e;
    public /* synthetic */ Object f;
    public final /* synthetic */ h6 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c6(h6 h6Var, Continuation continuation) {
        super(continuation);
        this.g = h6Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return this.g.y(this);
    }
}
