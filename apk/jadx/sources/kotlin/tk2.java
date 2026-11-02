package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class tk2 extends ContinuationImpl {
    public al2 a;
    public p005kotlin.Pair b;
    public Mutex c;
    public int d;
    public /* synthetic */ Object e;
    public final /* synthetic */ al2 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tk2(al2 al2Var, Continuation continuation) {
        super(continuation);
        this.f = al2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return al2.a(this.f, (p005kotlin.Pair) null, (om2) null, this);
    }
}
