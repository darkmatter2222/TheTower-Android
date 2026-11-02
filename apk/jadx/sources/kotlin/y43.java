package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class y43 extends ContinuationImpl {
    public b53 a;
    public String b;
    public Mutex c;
    public /* synthetic */ Object d;
    public final /* synthetic */ b53 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y43(b53 b53Var, Continuation continuation) {
        super(continuation);
        this.e = b53Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return b53.d(this.e, null, null, this);
    }
}
