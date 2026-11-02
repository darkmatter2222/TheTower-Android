package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class oo2 extends ContinuationImpl {
    public ro2 a;
    public Mutex b;
    public /* synthetic */ Object c;
    public final /* synthetic */ ro2 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oo2(ro2 ro2Var, Continuation continuation) {
        super(continuation);
        this.d = ro2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return ro2.a(this.d, this);
    }
}
