package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class s43 extends ContinuationImpl {
    public u43 a;
    public String b;
    public Mutex c;
    public /* synthetic */ Object d;
    public final /* synthetic */ u43 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s43(u43 u43Var, Continuation continuation) {
        super(continuation);
        this.e = u43Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return u43.b(this.e, null, this);
    }
}
