package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class on extends ContinuationImpl {
    public pn a;
    public Mutex b;
    public boolean c;
    public /* synthetic */ Object d;
    public final /* synthetic */ pn e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public on(pn pnVar, Continuation continuation) {
        super(continuation);
        this.e = pnVar;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return pn.a(this.e, false, (Continuation) this);
    }
}
