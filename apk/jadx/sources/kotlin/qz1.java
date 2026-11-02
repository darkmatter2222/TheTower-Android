package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class qz1 extends ContinuationImpl {
    public tz1 a;
    public Mutex b;
    public /* synthetic */ Object c;
    public final /* synthetic */ tz1 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qz1(tz1 tz1Var, Continuation continuation) {
        super(continuation);
        this.d = tz1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return tz1.a(this.d, this);
    }
}
