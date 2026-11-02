package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.PreloadCallback;
import com.ironsource.C3510b4;
import kotlinx.coroutines.BuildersKt;
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
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class l5 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ h6 b;
    public final /* synthetic */ PreloadCallback c;
    public final /* synthetic */ xt2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l5(PreloadCallback preloadCallback, h6 h6Var, xt2 xt2Var, Continuation continuation) {
        super(2, continuation);
        this.b = h6Var;
        this.c = preloadCallback;
        this.d = xt2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new l5(this.c, this.b, this.d, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((l5) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ex0 ex0Var = this.b.g;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:preload_validator:enabled", C3510b4.i.W);
            if (((Boolean) ex0Var.a("gads:preload_validator:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                h6 h6Var = this.b;
                wq2 wq2Var = new wq2(h6Var.b, h6Var.k, xq2.ON_AD_PRELOADED);
                j5 j5Var = new j5(this.c, this.b, this.d, null);
                this.a = 1;
                if (BuildersKt.withContext(wq2Var, j5Var, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                m21 m21Var = o21.f;
                BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new k5(this.c, this.b, this.d, null), 3, null);
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
