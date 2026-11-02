package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ao1 extends ContinuationImpl {
    public AdLoadCallback a;
    public /* synthetic */ Object b;
    public final /* synthetic */ bo1 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ao1(bo1 bo1Var, Continuation continuation) {
        super(continuation);
        this.c = bo1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.c.a((zn1) null, (Continuation) this);
    }
}
