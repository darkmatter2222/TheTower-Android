package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class wr1 extends ContinuationImpl {
    public yr1 a;
    public String b;
    public r41 c;
    public Object d;
    public Mutex e;
    public /* synthetic */ Object f;
    public final /* synthetic */ yr1 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wr1(yr1 yr1Var, Continuation continuation) {
        super(continuation);
        this.g = yr1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return yr1.a(this.g, (String) null, (r41) null, this);
    }
}
