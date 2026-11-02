package kotlin;

import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.NonCancellable;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class qy2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ wy2 a;
    public final /* synthetic */ v01 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qy2(wy2 wy2Var, v01 v01Var, Continuation continuation) {
        super(2, continuation);
        this.a = wy2Var;
        this.b = v01Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new qy2(this.a, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new qy2(this.a, this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        wy2 wy2Var = this.a;
        ei1 ei1Var = wy2Var.y;
        if (ei1Var != null) {
            m21 m21Var = o21.f;
            v01 v01Var = this.b;
            NonCancellable nonCancellable = NonCancellable.INSTANCE;
            CoroutineContext coroutineContextPlus = nonCancellable.plus(get$context());
            qs3 qs3Var = rs3.b;
            CoroutineContext coroutineContextMinusKey = coroutineContextPlus.minusKey(qs3Var);
            CoroutineExceptionHandler.Companion companion = CoroutineExceptionHandler.INSTANCE;
            CoroutineContext coroutineContextMinusKey2 = coroutineContextMinusKey.minusKey(companion);
            Job.Companion companion2 = Job.INSTANCE;
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(coroutineContextMinusKey2.minusKey(companion2)), null, null, new ny2(null, ei1Var, v01Var), 3, null);
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(nonCancellable.plus(get$context()).minusKey(qs3Var).minusKey(companion).minusKey(companion2)), null, null, new oy2(ei1Var, null), 3, null);
            this.a.y = null;
        } else {
            m21 m21Var2 = o21.f;
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new py2(wy2Var, null), 3, null);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
