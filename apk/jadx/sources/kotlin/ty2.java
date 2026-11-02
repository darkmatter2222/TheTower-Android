package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
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
public final class ty2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ wy2 a;
    public final /* synthetic */ v01 b;
    public final /* synthetic */ ResponseInfo c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ty2(ResponseInfo responseInfo, wy2 wy2Var, v01 v01Var, Continuation continuation) {
        super(2, continuation);
        this.a = wy2Var;
        this.b = v01Var;
        this.c = responseInfo;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ty2(this.c, this.a, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ty2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        wy2 wy2Var = this.a;
        if (wy2Var.y != null) {
            m21 m21Var = o21.f;
            v01 v01Var = this.b;
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new ry2(this.c, wy2Var, v01Var, null), 3, null);
        } else {
            m21 m21Var2 = o21.f;
            v01 v01Var2 = this.b;
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new sy2(this.c, wy2Var, v01Var2, null), 3, null);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
