package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ng2 extends ContinuationImpl {
    public pg2 a;
    public FullScreenContentError b;
    public /* synthetic */ Object c;
    public final /* synthetic */ pg2 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ng2(pg2 pg2Var, Continuation continuation) {
        super(continuation);
        this.d = pg2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return pg2.a(this.d, (FullScreenContentError) null, this);
    }
}
