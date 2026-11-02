package kotlin;

import java.io.Closeable;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class pj0 extends ContinuationImpl {
    public Object a;
    public Closeable b;
    public Object c;
    public Object d;
    public e01 e;
    public int f;
    public /* synthetic */ Object g;
    public final /* synthetic */ ok0 h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pj0(ok0 ok0Var, Continuation continuation) {
        super(continuation);
        this.h = ok0Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= Integer.MIN_VALUE;
        return this.h.a(this);
    }
}
