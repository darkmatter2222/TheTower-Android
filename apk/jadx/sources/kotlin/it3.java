package kotlin;

import java.util.List;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class it3 extends ContinuationImpl {
    public lt3 a;
    public lt3 b;
    public du1 c;
    public List d;
    public ec3 e;
    public i2 f;
    public Integer g;
    public /* synthetic */ Object h;
    public final /* synthetic */ lt3 i;
    public int j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public it3(lt3 lt3Var, Continuation continuation) {
        super(continuation);
        this.i = lt3Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.h = obj;
        this.j |= Integer.MIN_VALUE;
        return this.i.q(this);
    }
}
