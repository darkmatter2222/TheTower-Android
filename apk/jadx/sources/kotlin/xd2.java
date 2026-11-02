package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class xd2 extends ContinuationImpl {
    public Object a;
    public h41 b;
    public Mutex c;
    public /* synthetic */ Object d;
    public final /* synthetic */ je2 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xd2(je2 je2Var, Continuation continuation) {
        super(continuation);
        this.e = je2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.a((h41) null, (Continuation) this);
    }
}
