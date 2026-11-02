package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class v5 extends ContinuationImpl {
    public h6 a;
    public rr3 b;
    public rr3 c;
    public Mutex d;
    public /* synthetic */ Object e;
    public final /* synthetic */ h6 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v5(h6 h6Var, Continuation continuation) {
        super(continuation);
        this.f = h6Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.v(this);
    }
}
