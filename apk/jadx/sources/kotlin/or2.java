package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class or2 extends ContinuationImpl {
    public pt2 a;
    public Object b;
    public Mutex c;
    public long d;
    public /* synthetic */ Object e;
    public final /* synthetic */ pt2 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public or2(pt2 pt2Var, Continuation continuation) {
        super(continuation);
        this.f = pt2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return pt2.b(this.f, 0L, this);
    }
}
