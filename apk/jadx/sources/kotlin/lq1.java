package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class lq1 extends ContinuationImpl {
    public yq1 a;
    public Ref.ObjectRef b;
    public /* synthetic */ Object c;
    public final /* synthetic */ yq1 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lq1(yq1 yq1Var, Continuation continuation) {
        super(continuation);
        this.d = yq1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.b((String) null, this);
    }
}
