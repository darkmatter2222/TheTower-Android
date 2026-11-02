package kotlin;

import android.net.Uri;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class tw3 extends ContinuationImpl {
    public vw3 a;
    public Uri b;
    public /* synthetic */ Object c;
    public final /* synthetic */ vw3 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tw3(vw3 vw3Var, Continuation continuation) {
        super(continuation);
        this.d = vw3Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.v(this);
    }
}
