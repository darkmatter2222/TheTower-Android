package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class nn extends ContinuationImpl {
    public qn a;
    public String b;
    public String c;
    public Mutex d;
    public /* synthetic */ Object e;
    public final /* synthetic */ qn f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nn(qn qnVar, Continuation continuation) {
        super(continuation);
        this.f = qnVar;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return qn.a(this.f, null, null, this);
    }
}
