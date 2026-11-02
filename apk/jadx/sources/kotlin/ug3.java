package kotlin;

import com.google.android.libraries.ads.mobile.sdk.signal.Signal;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalGenerationCallback;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class ug3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ SignalGenerationCallback a;
    public final /* synthetic */ v01 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ug3(v01 v01Var, SignalGenerationCallback signalGenerationCallback, Continuation continuation) {
        super(2, continuation);
        this.a = signalGenerationCallback;
        this.b = v01Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ug3(this.b, this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        SignalGenerationCallback signalGenerationCallback = this.a;
        return new ug3(this.b, signalGenerationCallback, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        this.a.onSuccess((Signal) ((q01) this.b).b);
        return p005kotlin.Unit.INSTANCE;
    }
}
