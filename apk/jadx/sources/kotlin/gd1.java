package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class gd1 extends ContinuationImpl {
    public md1 a;
    public i01 b;
    public ResponseInfo c;
    public Mutex d;
    public /* synthetic */ Object e;
    public final /* synthetic */ md1 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gd1(md1 md1Var, Continuation continuation) {
        super(continuation);
        this.f = md1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return md1.a(this.f, (i01) null, (ResponseInfo) null, this);
    }
}
