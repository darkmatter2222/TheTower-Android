package kotlin;

import kotlinx.coroutines.flow.FlowCollector;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class m12 extends ContinuationImpl {
    public /* synthetic */ Object a;
    public int b;
    public FlowCollector c;
    public final /* synthetic */ n12 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m12(n12 n12Var, Continuation continuation) {
        super(continuation);
        this.d = n12Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.a = obj;
        this.b |= Integer.MIN_VALUE;
        return this.d.emit(null, this);
    }
}
