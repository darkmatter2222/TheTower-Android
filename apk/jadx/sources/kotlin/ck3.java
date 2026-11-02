package kotlin;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.a;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ck3 extends ContinuationImpl {
    public sh3 a;
    public Signals b;
    public /* synthetic */ Object c;
    public final /* synthetic */ a d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ck3(a aVar, Continuation continuation) {
        super(continuation);
        this.d = aVar;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.a(null, null, this);
    }
}
