package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class yk1 extends ContinuationImpl {
    public rr3 a;
    public rr3 b;
    public /* synthetic */ Object c;
    public final /* synthetic */ fl1 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yk1(fl1 fl1Var, Continuation continuation) {
        super(continuation);
        this.d = fl1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return fl1.a(this.d, null, null, null, this);
    }
}
