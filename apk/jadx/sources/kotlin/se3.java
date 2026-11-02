package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class se3 extends ContinuationImpl {
    public xe3 a;
    public v01 b;
    public Mutex c;
    public boolean d;
    public /* synthetic */ Object e;
    public final /* synthetic */ xe3 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public se3(xe3 xe3Var, Continuation continuation) {
        super(continuation);
        this.f = xe3Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.a((v01) null, false, (Continuation) this);
    }
}
