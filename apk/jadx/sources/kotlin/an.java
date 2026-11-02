package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class an extends ContinuationImpl {
    public Object a;
    public String b;
    public String c;
    public Mutex d;
    public /* synthetic */ Object e;
    public final /* synthetic */ pn f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public an(pn pnVar, Continuation continuation) {
        super(continuation);
        this.f = pnVar;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.a((String) null, (String) null, this);
    }
}
