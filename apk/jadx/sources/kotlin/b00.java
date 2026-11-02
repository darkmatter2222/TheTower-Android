package kotlin;

import com.google.android.libraries.ads.mobile.sdk.internal.initialization.ConfigLoaderRequest;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class b00 extends ContinuationImpl {
    public o00 a;
    public ConfigLoaderRequest b;
    public int c;
    public int d;
    public long e;
    public /* synthetic */ Object f;
    public final /* synthetic */ o00 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b00(o00 o00Var, Continuation continuation) {
        super(continuation);
        this.g = o00Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return o00.a(this.g, (ConfigLoaderRequest) null, this);
    }
}
