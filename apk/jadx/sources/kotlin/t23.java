package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class t23 extends ContinuationImpl {
    public e33 a;
    public Function1 b;
    public Mutex c;
    public /* synthetic */ Object d;
    public final /* synthetic */ e33 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t23(e33 e33Var, Continuation continuation) {
        super(continuation);
        this.e = e33Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.a((d33) null, (Continuation) this);
    }
}
