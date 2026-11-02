package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.PreloadCallback;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.NonCancellable;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class j5 extends SuspendLambda implements Function2 {
    public final /* synthetic */ PreloadCallback a;
    public final /* synthetic */ h6 b;
    public final /* synthetic */ xt2 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j5(PreloadCallback preloadCallback, h6 h6Var, xt2 xt2Var, Continuation continuation) {
        super(2, continuation);
        this.a = preloadCallback;
        this.b = h6Var;
        this.c = xt2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new j5(this.a, this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((j5) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        m21 m21Var = o21.f;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new i5(this.a, this.b, this.c, null), 3, null);
        return p005kotlin.Unit.INSTANCE;
    }
}
