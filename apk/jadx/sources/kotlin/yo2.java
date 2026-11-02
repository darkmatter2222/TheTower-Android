package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class yo2 extends ContinuationImpl {
    public ap2 a;
    public rr3 b;
    public rr3 c;
    public /* synthetic */ Object d;
    public final /* synthetic */ ap2 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yo2(ap2 ap2Var, Continuation continuation) {
        super(continuation);
        this.e = ap2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.a((ep2) null, this);
    }
}
