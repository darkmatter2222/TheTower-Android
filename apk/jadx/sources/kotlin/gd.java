package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class gd extends ContinuationImpl {
    public jd a;
    public ey3 b;
    public Mutex c;
    public /* synthetic */ Object d;
    public final /* synthetic */ jd e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gd(jd jdVar, Continuation continuation) {
        super(continuation);
        this.e = jdVar;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return jd.a(this.e, null, this);
    }
}
