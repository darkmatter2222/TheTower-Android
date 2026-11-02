package kotlin;

import java.io.Closeable;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class r52 extends ContinuationImpl {
    public t52 a;
    public rr3 b;
    public Closeable c;
    public r31 d;
    public /* synthetic */ Object e;
    public final /* synthetic */ t52 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r52(t52 t52Var, Continuation continuation) {
        super(continuation);
        this.f = t52Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return t52.a(this.f, null, this);
    }
}
