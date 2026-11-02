package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class vq1 extends ContinuationImpl {
    public yq1 a;
    public long b;
    public /* synthetic */ Object c;
    public final /* synthetic */ yq1 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vq1(yq1 yq1Var, Continuation continuation) {
        super(continuation);
        this.d = yq1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return yq1.a(this.d, (Continuation) this);
    }
}
