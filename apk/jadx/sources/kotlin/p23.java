package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class p23 extends ContinuationImpl {
    public e33 a;
    public ec3 b;
    public Mutex c;
    public /* synthetic */ Object d;
    public final /* synthetic */ e33 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p23(e33 e33Var, Continuation continuation) {
        super(continuation);
        this.e = e33Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.a((ec3) null, this);
    }
}
