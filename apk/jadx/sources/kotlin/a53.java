package kotlin;

import com.google.gson.JsonObject;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class a53 extends ContinuationImpl {
    public b53 a;
    public JsonObject b;
    public String c;
    public Mutex d;
    public /* synthetic */ Object e;
    public final /* synthetic */ b53 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a53(b53 b53Var, Continuation continuation) {
        super(continuation);
        this.f = b53Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return b53.a(this.f, null, null, null, this);
    }
}
