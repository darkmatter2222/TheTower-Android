package kotlin;

import com.google.android.libraries.ads.mobile.sdk.signal.SignalGenerationCallback;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.NonCancellable;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class vg3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ SignalGenerationCallback a;
    public final /* synthetic */ v01 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vg3(v01 v01Var, SignalGenerationCallback signalGenerationCallback, Continuation continuation) {
        super(2, continuation);
        this.a = signalGenerationCallback;
        this.b = v01Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new vg3(this.b, this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        SignalGenerationCallback signalGenerationCallback = this.a;
        return new vg3(this.b, signalGenerationCallback, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        m21 m21Var = o21.f;
        SignalGenerationCallback signalGenerationCallback = this.a;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new ug3(this.b, signalGenerationCallback, null), 3, null);
        return p005kotlin.Unit.INSTANCE;
    }
}
