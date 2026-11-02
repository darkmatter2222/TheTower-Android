package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class m00 extends ContinuationImpl {
    public o00 a;
    public /* synthetic */ Object b;
    public final /* synthetic */ o00 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m00(o00 o00Var, Continuation continuation) {
        super(continuation);
        this.c = o00Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return o00.a(this.c, this);
    }
}
