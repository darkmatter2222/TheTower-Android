package kotlin;

import java.util.Collection;
import java.util.Iterator;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class q42 extends ContinuationImpl {
    public Collection a;
    public Iterator b;
    public /* synthetic */ Object c;
    public final /* synthetic */ v42 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q42(v42 v42Var, Continuation continuation) {
        super(continuation);
        this.d = v42Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.a(null, this);
    }
}
