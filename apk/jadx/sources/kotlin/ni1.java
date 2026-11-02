package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import kotlinx.coroutines.flow.FlowCollector;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ni1 extends ContinuationImpl {
    public /* synthetic */ Object a;
    public int b;
    public FlowCollector c;
    public final /* synthetic */ oi1 d;
    public v01 e;
    public ResponseInfo f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ni1(oi1 oi1Var, Continuation continuation) {
        super(continuation);
        this.d = oi1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.a = obj;
        this.b |= Integer.MIN_VALUE;
        return this.d.emit(null, this);
    }
}
