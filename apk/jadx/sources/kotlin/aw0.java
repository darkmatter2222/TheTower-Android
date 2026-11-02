package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class aw0 extends ContinuationImpl {
    public jw0 a;
    public Mutex b;
    public /* synthetic */ Object c;
    public final /* synthetic */ jw0 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aw0(jw0 jw0Var, Continuation continuation) {
        super(continuation);
        this.d = jw0Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return jw0.c(this.d, this);
    }
}
