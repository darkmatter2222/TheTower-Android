package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class bp extends ContinuationImpl {
    public cp a;
    public Mutex b;
    public boolean c;
    public /* synthetic */ Object d;
    public final /* synthetic */ cp e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bp(cp cpVar, Continuation continuation) {
        super(continuation);
        this.e = cpVar;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.b(false, this);
    }
}
