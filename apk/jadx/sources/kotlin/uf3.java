package kotlin;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class uf3 extends ContinuationImpl {
    public yf3 a;
    public String b;
    public SignalRequest c;
    public Signals d;
    public String e;
    public Mutex f;
    public /* synthetic */ Object g;
    public final /* synthetic */ yf3 h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public uf3(yf3 yf3Var, Continuation continuation) {
        super(continuation);
        this.h = yf3Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= Integer.MIN_VALUE;
        return this.h.a((String) null, (SignalRequest) null, (Signals) null, (String) null, this);
    }
}
