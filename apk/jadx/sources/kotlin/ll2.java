package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class ll2 extends ContinuationImpl {
    public im2 a;
    public Ref.ObjectRef b;
    public Ref.ObjectRef c;
    public Object d;
    public /* synthetic */ Object e;
    public final /* synthetic */ im2 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ll2(im2 im2Var, Continuation continuation) {
        super(continuation);
        this.f = im2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.a((j53) null, (String) null, false, (Continuation) this);
    }
}
