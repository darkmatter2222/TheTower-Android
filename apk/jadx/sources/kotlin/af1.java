package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class af1 extends ContinuationImpl {
    public if1 a;
    public vd1 b;
    public Mutex c;
    public /* synthetic */ Object d;
    public final /* synthetic */ if1 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public af1(if1 if1Var, Continuation continuation) {
        super(continuation);
        this.e = if1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return if1.a(this.e, (vd1) null, this);
    }
}
