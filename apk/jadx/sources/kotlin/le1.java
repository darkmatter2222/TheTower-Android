package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class le1 extends ContinuationImpl {
    public Object a;
    public Mutex b;
    public if1 c;
    public /* synthetic */ Object d;
    public final /* synthetic */ if1 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public le1(if1 if1Var, Continuation continuation) {
        super(continuation);
        this.e = if1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.z(this);
    }
}
