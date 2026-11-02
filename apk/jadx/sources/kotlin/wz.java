package kotlin;

import com.google.gson.JsonObject;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class wz extends ContinuationImpl {
    public o00 a;
    public JsonObject b;
    public Mutex c;
    public /* synthetic */ Object d;
    public final /* synthetic */ o00 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wz(o00 o00Var, Continuation continuation) {
        super(continuation);
        this.e = o00Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.a((Function1) null, this);
    }
}
