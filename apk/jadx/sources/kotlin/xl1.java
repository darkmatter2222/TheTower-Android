package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class xl1 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ cm1 b;
    public final /* synthetic */ OnAdInspectorClosedListener c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xl1(cm1 cm1Var, OnAdInspectorClosedListener onAdInspectorClosedListener, Continuation continuation) {
        super(2, continuation);
        this.b = cm1Var;
        this.c = onAdInspectorClosedListener;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new xl1(this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new xl1(this.b, this.c, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            if1 if1Var = (if1) this.b.q.get();
            ae1 ae1Var = ae1.API;
            OnAdInspectorClosedListener onAdInspectorClosedListener = this.c;
            this.a = 1;
            if1Var.getClass();
            if (if1.a(if1Var, ae1Var, onAdInspectorClosedListener, this) == coroutine_suspended) {
                return coroutine_suspended;
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
