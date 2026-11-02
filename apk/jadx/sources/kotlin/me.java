package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class me extends ContinuationImpl {
    public hf a;
    public String b;
    public Object c;
    public /* synthetic */ Object d;
    public final /* synthetic */ hf e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public me(hf hfVar, Continuation continuation) {
        super(continuation);
        this.e = hfVar;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return hf.a(this.e, (String) null, (be) null, this);
    }
}
