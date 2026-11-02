package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ab3 extends ContinuationImpl {
    public cb3 a;
    public ua3 b;
    public Mutex c;
    public /* synthetic */ Object d;
    public final /* synthetic */ cb3 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ab3(cb3 cb3Var, Continuation continuation) {
        super(continuation);
        this.e = cb3Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return cb3.b(this.e, null, this);
    }
}
