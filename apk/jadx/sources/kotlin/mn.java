package kotlin;

import com.google.gson.JsonObject;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class mn extends ContinuationImpl {
    public pn a;
    public jm b;
    public JsonObject c;
    public Mutex d;
    public /* synthetic */ Object e;
    public final /* synthetic */ pn f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mn(pn pnVar, Continuation continuation) {
        super(continuation);
        this.f = pnVar;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.a((jm) null, (JsonObject) null, this);
    }
}
