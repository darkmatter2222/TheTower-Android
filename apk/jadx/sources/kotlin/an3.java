package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class an3 extends ContinuationImpl {
    public Object a;
    public Object b;
    public Object c;
    public Object d;
    public Object e;
    public Ref.ObjectRef f;
    public /* synthetic */ Object g;
    public final /* synthetic */ dn3 h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public an3(dn3 dn3Var, Continuation continuation) {
        super(continuation);
        this.h = dn3Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= Integer.MIN_VALUE;
        return this.h.a(false, (Continuation) this);
    }
}
