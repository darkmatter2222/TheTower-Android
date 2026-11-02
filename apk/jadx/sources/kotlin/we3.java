package kotlin;

import java.io.Closeable;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class we3 extends ContinuationImpl {
    public xe3 a;
    public Ref.IntRef b;
    public Object c;
    public Closeable d;
    public Mutex e;
    public boolean f;
    public /* synthetic */ Object g;
    public final /* synthetic */ xe3 h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public we3(xe3 xe3Var, Continuation continuation) {
        super(continuation);
        this.h = xe3Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= Integer.MIN_VALUE;
        return xe3.a(this.h, false, (Continuation) this);
    }
}
