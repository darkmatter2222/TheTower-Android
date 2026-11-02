package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ue2 extends ContinuationImpl {
    public Object a;
    public h41 b;
    public Mutex c;
    public /* synthetic */ Object d;
    public final /* synthetic */ ze2 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ue2(ze2 ze2Var, Continuation continuation) {
        super(continuation);
        this.e = ze2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return ze2.a(this.e, (h41) null, this);
    }
}
