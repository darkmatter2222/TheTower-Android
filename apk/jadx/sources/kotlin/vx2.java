package kotlin;

import java.io.Closeable;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class vx2 extends ContinuationImpl {
    public Object a;
    public Closeable b;
    public Object c;
    public Object d;
    public Object e;
    public Object f;
    public Ref.ObjectRef g;
    public Object h;
    public Ref.ObjectRef i;
    public int j;
    public /* synthetic */ Object k;
    public final /* synthetic */ yx2 l;
    public int m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vx2(yx2 yx2Var, Continuation continuation) {
        super(continuation);
        this.l = yx2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.k = obj;
        this.m |= Integer.MIN_VALUE;
        return yx2.a(this.l, (Continuation) this);
    }
}
