package kotlin;

import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class f70 extends ContinuationImpl {
    public k70 a;
    public Object b;
    public Object c;
    public Object d;
    public String e;
    public boolean f;
    public boolean g;
    public /* synthetic */ Object h;
    public final /* synthetic */ k70 i;
    public int j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f70(k70 k70Var, Continuation continuation) {
        super(continuation);
        this.i = k70Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.h = obj;
        this.j |= Integer.MIN_VALUE;
        return this.i.a((f81) null, (Duration) null, (Map) null, false, false, (Continuation) this);
    }
}
