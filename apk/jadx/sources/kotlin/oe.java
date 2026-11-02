package kotlin;

import java.util.Set;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class oe extends ContinuationImpl {
    public hf a;
    public Set b;
    public Mutex c;
    public /* synthetic */ Object d;
    public final /* synthetic */ hf e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oe(hf hfVar, Continuation continuation) {
        super(continuation);
        this.e = hfVar;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return hf.a(this.e, (Set) null, this);
    }
}
