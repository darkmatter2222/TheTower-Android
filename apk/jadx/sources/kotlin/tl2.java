package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class tl2 extends ContinuationImpl {
    public im2 a;
    public j53 b;
    public String c;
    public /* synthetic */ Object d;
    public final /* synthetic */ im2 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tl2(im2 im2Var, Continuation continuation) {
        super(continuation);
        this.e = im2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.a((j53) null, (String) null, this);
    }
}
