package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class qd extends ContinuationImpl {
    public vd a;
    public ey3 b;
    public Mutex c;
    public /* synthetic */ Object d;
    public final /* synthetic */ vd e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qd(vd vdVar, Continuation continuation) {
        super(continuation);
        this.e = vdVar;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.a((ey3) null, this);
    }
}
