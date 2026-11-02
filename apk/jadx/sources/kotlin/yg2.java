package kotlin;

import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class yg2 extends ContinuationImpl {
    public Map a;
    public r31 b;
    public boolean c;
    public boolean d;
    public boolean e;
    public /* synthetic */ Object f;
    public final /* synthetic */ ah2 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yg2(ah2 ah2Var, Continuation continuation) {
        super(continuation);
        this.g = ah2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return this.g.a(null, false, false, false, false, null, this);
    }
}
