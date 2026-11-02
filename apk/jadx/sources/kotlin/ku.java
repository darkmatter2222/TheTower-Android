package kotlin;

import java.io.Closeable;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class ku extends ContinuationImpl {
    public Object a;
    public Closeable b;
    public rr3 c;
    public Ref.ObjectRef d;
    public Ref.ObjectRef e;
    public Mutex f;
    public /* synthetic */ Object g;
    public final /* synthetic */ ou h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ku(ou ouVar, Continuation continuation) {
        super(continuation);
        this.h = ouVar;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= Integer.MIN_VALUE;
        return ou.a(this.h, (Continuation) this);
    }
}
