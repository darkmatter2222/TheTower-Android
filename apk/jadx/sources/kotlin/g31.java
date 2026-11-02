package kotlin;

import java.io.Closeable;
import kotlinx.coroutines.CompletableDeferred;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class g31 extends ContinuationImpl {
    public Object a;
    public Closeable b;
    public Object c;
    public CompletableDeferred d;
    public /* synthetic */ Object e;
    public final /* synthetic */ r31 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g31(r31 r31Var, Continuation continuation) {
        super(continuation);
        this.f = r31Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.a((String) null, (String) null, (String) null, (String) null, false, (Continuation) this);
    }
}
