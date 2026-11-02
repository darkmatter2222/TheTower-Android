package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class r93 extends ContinuationImpl {
    public s93 a;
    public String b;
    public Mutex c;
    public /* synthetic */ Object d;
    public final /* synthetic */ s93 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r93(s93 s93Var, Continuation continuation) {
        super(continuation);
        this.e = s93Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return s93.a(this.e, (String) null, this);
    }
}
