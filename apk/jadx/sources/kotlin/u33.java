package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class u33 extends ContinuationImpl {
    public v33 a;
    public i2 b;
    public Mutex c;
    public long d;
    public /* synthetic */ Object e;
    public final /* synthetic */ v33 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u33(v33 v33Var, Continuation continuation) {
        super(continuation);
        this.f = v33Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.a(0L, (i2) null, this);
    }
}
