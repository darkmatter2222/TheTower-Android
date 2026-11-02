package kotlin;

import java.util.Iterator;
import java.util.List;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class hr2 extends ContinuationImpl {
    public Iterator a;
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ pt2 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hr2(pt2 pt2Var, Continuation continuation) {
        super(continuation);
        this.d = pt2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.a((List) null, this);
    }
}
