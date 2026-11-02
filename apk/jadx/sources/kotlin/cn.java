package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class cn extends ContinuationImpl {
    public qn a;
    public Mutex b;
    public /* synthetic */ Object c;
    public final /* synthetic */ qn d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cn(qn qnVar, Continuation continuation) {
        super(continuation);
        this.d = qnVar;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return qn.a(this.d, this);
    }
}
