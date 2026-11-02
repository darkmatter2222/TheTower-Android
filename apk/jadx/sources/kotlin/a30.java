package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class a30 extends ContinuationImpl {
    public g30 a;
    public String b;
    public String c;
    public s00 d;
    public /* synthetic */ Object e;
    public final /* synthetic */ g30 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a30(g30 g30Var, Continuation continuation) {
        super(continuation);
        this.f = g30Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return g30.a(this.f, (String) null, (String) null, this);
    }
}
