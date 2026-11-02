package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class w14 extends ContinuationImpl {
    public z14 a;
    public ey3 b;
    public Mutex c;
    public /* synthetic */ Object d;
    public final /* synthetic */ z14 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w14(z14 z14Var, Continuation continuation) {
        super(continuation);
        this.e = z14Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return z14.a(this.e, null, this);
    }
}
