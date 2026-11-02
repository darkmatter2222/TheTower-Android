package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
public final class kf2 extends ContinuationImpl {
    public Object a;
    public Object b;
    public Function3 c;
    public Mutex d;
    public /* synthetic */ Object e;
    public final /* synthetic */ vf2 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kf2(vf2 vf2Var, Continuation continuation) {
        super(continuation);
        this.f = vf2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.a((String) null, (Function3) null, this);
    }
}
