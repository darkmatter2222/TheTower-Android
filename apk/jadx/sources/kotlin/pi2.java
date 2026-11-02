package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class pi2 extends ContinuationImpl {
    public vi2 a;
    public Object b;
    public Mutex c;
    public /* synthetic */ Object d;
    public final /* synthetic */ vi2 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pi2(vi2 vi2Var, Continuation continuation) {
        super(continuation);
        this.e = vi2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.b(this);
    }
}
