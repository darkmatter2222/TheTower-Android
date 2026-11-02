package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class k23 extends ContinuationImpl {
    public e33 a;
    public Object b;
    public ResponseInfo c;
    public Mutex d;
    public /* synthetic */ Object e;
    public final /* synthetic */ e33 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k23(e33 e33Var, Continuation continuation) {
        super(continuation);
        this.f = e33Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return e33.a(this.f, this);
    }
}
