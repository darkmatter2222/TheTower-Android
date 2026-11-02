package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class fu3 extends ContinuationImpl {
    public Object a;
    public Object b;
    public rr3 c;
    public rr3 d;
    public /* synthetic */ Object e;
    public final /* synthetic */ nu3 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fu3(nu3 nu3Var, Continuation continuation) {
        super(continuation);
        this.f = nu3Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.a((r31) null, (String) null, (String) null, (String) null, this);
    }
}
