package kotlin;

import java.util.List;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class d7 extends ContinuationImpl {
    public q7 a;
    public String b;
    public List c;
    public Mutex d;
    public long e;
    public /* synthetic */ Object f;
    public final /* synthetic */ q7 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d7(q7 q7Var, Continuation continuation) {
        super(continuation);
        this.g = q7Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return q7.a(this.g, null, null, this);
    }
}
