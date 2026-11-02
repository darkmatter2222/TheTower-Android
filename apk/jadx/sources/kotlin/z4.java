package kotlin;

import java.util.Iterator;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class z4 extends ContinuationImpl {
    public h6 a;
    public Mutex b;
    public Iterator c;
    public /* synthetic */ Object d;
    public final /* synthetic */ h6 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z4(h6 h6Var, Continuation continuation) {
        super(continuation);
        this.e = h6Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return h6.a(this.e, this);
    }
}
