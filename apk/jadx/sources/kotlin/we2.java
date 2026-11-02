package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class we2 extends ContinuationImpl {
    public ze2 a;
    public Mutex b;
    public /* synthetic */ Object c;
    public final /* synthetic */ ze2 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public we2(ze2 ze2Var, Continuation continuation) {
        super(continuation);
        this.d = ze2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return ze2.a(this.d, this);
    }
}
