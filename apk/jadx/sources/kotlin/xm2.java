package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class xm2 extends ContinuationImpl {
    public bn2 a;
    public g01 b;
    public Mutex c;
    public /* synthetic */ Object d;
    public final /* synthetic */ bn2 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xm2(bn2 bn2Var, Continuation continuation) {
        super(continuation);
        this.e = bn2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return bn2.a(this.e, this);
    }
}
