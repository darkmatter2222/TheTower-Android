package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class gb0 extends ContinuationImpl {
    public mb0 a;
    public String b;
    public ir3 c;
    public ir3 d;
    public Mutex e;
    public /* synthetic */ Object f;
    public final /* synthetic */ mb0 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gb0(mb0 mb0Var, Continuation continuation) {
        super(continuation);
        this.g = mb0Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return mb0.a(this.g, (String) null, this);
    }
}
