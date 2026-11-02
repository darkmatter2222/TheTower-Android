package kotlin;

import java.util.List;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class j14 extends ContinuationImpl {
    public r14 a;
    public List b;
    public List c;
    public /* synthetic */ Object d;
    public final /* synthetic */ r14 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j14(r14 r14Var, Continuation continuation) {
        super(continuation);
        this.e = r14Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return r14.a(this.e, null, this);
    }
}
