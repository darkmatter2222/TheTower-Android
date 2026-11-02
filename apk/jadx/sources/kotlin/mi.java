package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class mi extends ContinuationImpl {
    public ni a;
    public Object b;
    public Object c;
    public Object d;
    public Object e;
    public g11 f;
    public g11 g;
    public g11 h;
    public /* synthetic */ Object i;
    public final /* synthetic */ ni j;
    public int k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mi(ni niVar, Continuation continuation) {
        super(continuation);
        this.j = niVar;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.i = obj;
        this.k |= Integer.MIN_VALUE;
        return this.j.a(this);
    }
}
