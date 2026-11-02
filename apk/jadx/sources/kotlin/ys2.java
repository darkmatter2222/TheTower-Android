package kotlin;

import java.util.LinkedHashMap;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
public final class ys2 extends ContinuationImpl {
    public Object a;
    public Object b;
    public Object c;
    public Function3 d;
    public Mutex e;
    public /* synthetic */ Object f;
    public final /* synthetic */ pt2 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ys2(pt2 pt2Var, Continuation continuation) {
        super(continuation);
        this.g = pt2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return this.g.a((String) null, (LinkedHashMap) null, (Function3) null, this);
    }
}
