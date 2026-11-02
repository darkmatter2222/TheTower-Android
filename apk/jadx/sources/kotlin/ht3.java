package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ht3 extends ContinuationImpl {
    public rr3 a;
    public rr3 b;
    public lt3 c;
    public /* synthetic */ Object d;
    public final /* synthetic */ lt3 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ht3(lt3 lt3Var, Continuation continuation) {
        super(continuation);
        this.e = lt3Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.k(this);
    }
}
