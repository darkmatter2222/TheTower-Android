package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class zm2 extends ContinuationImpl {
    public bn2 a;
    public Object b;
    public vm2 c;
    public Mutex d;
    public /* synthetic */ Object e;
    public final /* synthetic */ bn2 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zm2(bn2 bn2Var, Continuation continuation) {
        super(continuation);
        this.f = bn2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return bn2.a(this.f, null, null, this);
    }
}
