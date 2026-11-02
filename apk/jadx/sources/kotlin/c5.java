package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class c5 extends ContinuationImpl {
    public h6 a;
    public qx2 b;
    public Ref.IntRef c;
    public Ref.BooleanRef d;
    public Mutex e;
    public /* synthetic */ Object f;
    public final /* synthetic */ h6 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c5(h6 h6Var, Continuation continuation) {
        super(continuation);
        this.g = h6Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return this.g.a((qx2) null, this);
    }
}
