package kotlin;

import java.io.Closeable;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class w5 extends ContinuationImpl {
    public h6 a;
    public rr3 b;
    public Closeable c;
    public Object d;
    public yt2 e;
    public /* synthetic */ Object f;
    public final /* synthetic */ h6 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w5(h6 h6Var, Continuation continuation) {
        super(continuation);
        this.g = h6Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return this.g.w(this);
    }
}
