package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class h00 extends ContinuationImpl {
    public /* synthetic */ Object a;
    public final /* synthetic */ o00 b;
    public int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h00(o00 o00Var, Continuation continuation) {
        super(continuation);
        this.b = o00Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.a = obj;
        this.c |= Integer.MIN_VALUE;
        return o00.a(this.b, (BaseRequest) null, this);
    }
}
