package kotlin;

import com.google.gson.JsonObject;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class o42 extends ContinuationImpl {
    public v42 a;
    public JsonObject b;
    public String c;
    public double d;
    public int e;
    public int f;
    public /* synthetic */ Object g;
    public final /* synthetic */ v42 h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o42(v42 v42Var, Continuation continuation) {
        super(continuation);
        this.h = v42Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= Integer.MIN_VALUE;
        return this.h.a((JsonObject) null, false, (Continuation) this);
    }
}
