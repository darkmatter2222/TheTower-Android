package kotlin;

import com.google.android.libraries.ads.mobile.sdk.initialization.OnAdapterInitializationCompleteListener;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class ml1 extends ContinuationImpl {
    public Object a;
    public Object b;
    public Ref.BooleanRef c;
    public Mutex d;
    public /* synthetic */ Object e;
    public final /* synthetic */ cm1 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ml1(cm1 cm1Var, Continuation continuation) {
        super(continuation);
        this.f = cm1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.a((OnAdapterInitializationCompleteListener) null, this);
    }
}
