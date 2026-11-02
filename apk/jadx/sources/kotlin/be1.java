package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class be1 extends ContinuationImpl {
    public if1 a;
    public String b;
    public md1 c;
    public Mutex d;
    public /* synthetic */ Object e;
    public final /* synthetic */ if1 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public be1(if1 if1Var, Continuation continuation) {
        super(continuation);
        this.f = if1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.a((String) null, (md1) null, this);
    }
}
