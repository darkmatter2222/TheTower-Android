package kotlin;

import java.util.Map;
import okhttp3.Request;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class d71 extends ContinuationImpl {
    public o71 a;
    public Request.Builder b;
    public Request.Builder c;
    public String d;
    public /* synthetic */ Object e;
    public final /* synthetic */ o71 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d71(o71 o71Var, Continuation continuation) {
        super(continuation);
        this.f = o71Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.a((String) null, (Map) null, this);
    }
}
