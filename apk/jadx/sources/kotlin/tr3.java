package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class tr3 extends ContinuationImpl {
    public ur3 a;
    public String b;
    public /* synthetic */ Object c;
    public final /* synthetic */ ur3 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tr3(ur3 ur3Var, Continuation continuation) {
        super(continuation);
        this.d = ur3Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return ur3.a(this.d, null, null, this);
    }
}
