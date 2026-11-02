package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class xy0 extends ContinuationImpl {
    public yy0 a;
    public Mutex b;
    public boolean c;
    public /* synthetic */ Object d;
    public final /* synthetic */ yy0 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xy0(yy0 yy0Var, Continuation continuation) {
        super(continuation);
        this.e = yy0Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.a(false, (Continuation) this);
    }
}
