package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class kb0 extends ContinuationImpl {
    public mb0 a;
    public String b;
    public String c;
    public Mutex d;
    public boolean e;
    public /* synthetic */ Object f;
    public final /* synthetic */ mb0 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kb0(mb0 mb0Var, Continuation continuation) {
        super(continuation);
        this.g = mb0Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return this.g.a((String) null, (String) null, false, (Continuation) this);
    }
}
