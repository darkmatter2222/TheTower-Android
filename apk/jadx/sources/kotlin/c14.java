package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class c14 extends ContinuationImpl {
    public r14 a;
    public Mutex b;
    public /* synthetic */ Object c;
    public final /* synthetic */ r14 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c14(r14 r14Var, Continuation continuation) {
        super(continuation);
        this.d = r14Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return r14.d(this.d, this);
    }
}
