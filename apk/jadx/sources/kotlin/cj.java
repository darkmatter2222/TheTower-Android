package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class cj extends ContinuationImpl {
    public sj a;
    public Mutex b;
    public long c;
    public /* synthetic */ Object d;
    public final /* synthetic */ sj e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cj(sj sjVar, Continuation continuation) {
        super(continuation);
        this.e = sjVar;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.w(this);
    }
}
