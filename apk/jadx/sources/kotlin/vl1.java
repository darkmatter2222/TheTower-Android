package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class vl1 extends ContinuationImpl {
    public cm1 a;
    public Mutex b;
    public boolean c;
    public /* synthetic */ Object d;
    public final /* synthetic */ cm1 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vl1(cm1 cm1Var, Continuation continuation) {
        super(continuation);
        this.e = cm1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.a(false, (Continuation) this);
    }
}
