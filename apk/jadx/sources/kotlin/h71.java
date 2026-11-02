package kotlin;

import okhttp3.Request;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class h71 extends ContinuationImpl {
    public o71 a;
    public Request.Builder b;
    public String c;
    public /* synthetic */ Object d;
    public final /* synthetic */ o71 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h71(o71 o71Var, Continuation continuation) {
        super(continuation);
        this.e = o71Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.a(null, this);
    }
}
