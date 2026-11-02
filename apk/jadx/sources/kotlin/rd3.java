package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class rd3 extends ContinuationImpl {
    public /* synthetic */ Object a;
    public final /* synthetic */ zd3 b;
    public int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rd3(zd3 zd3Var, Continuation continuation) {
        super(continuation);
        this.b = zd3Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.a = obj;
        this.c |= Integer.MIN_VALUE;
        return zd3.b(this.b, this);
    }
}
