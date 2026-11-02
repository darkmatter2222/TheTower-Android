package kotlin;

import com.google.gson.JsonObject;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class n42 extends ContinuationImpl {
    public v42 a;
    public JsonObject b;
    public /* synthetic */ Object c;
    public final /* synthetic */ v42 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n42(v42 v42Var, Continuation continuation) {
        super(continuation);
        this.d = v42Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.a((JsonObject) null, (String) null, this);
    }
}
