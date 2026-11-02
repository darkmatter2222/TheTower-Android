package kotlin;

import com.google.gson.JsonObject;
import java.util.UUID;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class b70 extends ContinuationImpl {
    public JsonObject a;
    public Mutex b;
    public /* synthetic */ Object c;
    public final /* synthetic */ k70 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b70(k70 k70Var, Continuation continuation) {
        super(continuation);
        this.d = k70Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.a((String) null, (UUID) null, (JsonObject) null, this);
    }
}
