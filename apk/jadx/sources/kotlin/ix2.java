package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
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
public final class ix2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ ei1 a;
    public final /* synthetic */ LoadAdError b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ix2(LoadAdError loadAdError, ei1 ei1Var, Continuation continuation) {
        super(2, continuation);
        this.a = ei1Var;
        this.b = loadAdError;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ix2(this.b, this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        ei1 ei1Var = this.a;
        return new ix2(this.b, ei1Var, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        m21 m21Var = o21.f;
        ei1 ei1Var = this.a;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new hx2(this.b, ei1Var, null), 3, null);
        return p005kotlin.Unit.INSTANCE;
    }
}
