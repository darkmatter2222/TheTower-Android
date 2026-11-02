package kotlin;

import android.view.View;
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
public final class wn2 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ ao2 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wn2(ao2 ao2Var, Continuation continuation) {
        super(2, continuation);
        this.b = ao2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new wn2(this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new wn2(this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            do2 do2Var = this.b.i;
            if (do2Var != null) {
                sn2 sn2Var = do2Var.i;
                if (sn2Var != null) {
                    do2Var.removeView(sn2Var);
                    do2Var.i = null;
                }
                ao2 ao2Var = this.b;
                do2 do2Var2 = ao2Var.i;
                if (do2Var2 != null && ao2Var.b.a((View) do2Var2, false)) {
                    this.b.a(do2Var);
                }
                do2Var.setVisibility(8);
            }
            fm0 fm0Var = (fm0) this.b.j.get();
            if (fm0Var != null) {
                this.a = 1;
                m21 m21Var = o21.f;
                BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new tl0(fm0Var, null), 3, null);
                if (p005kotlin.Unit.INSTANCE == coroutine_suspended) {
                    return coroutine_suspended;
                }
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
