package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class my2 extends ContinuationImpl {
    public wy2 a;
    public v01 b;
    public /* synthetic */ Object c;
    public final /* synthetic */ wy2 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public my2(wy2 wy2Var, Continuation continuation) {
        super(continuation);
        this.d = wy2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.a((v01) null, (ResponseInfo) null, this);
    }
}
