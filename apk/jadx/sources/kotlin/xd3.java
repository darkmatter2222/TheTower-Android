package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class xd3 extends ContinuationImpl {
    public zd3 a;
    public od3 b;
    public Mutex c;
    public /* synthetic */ Object d;
    public final /* synthetic */ zd3 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xd3(zd3 zd3Var, Continuation continuation) {
        super(continuation);
        this.e = zd3Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return zd3.a(this.e, null, this);
    }
}
