package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdInspectorError;
import com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class oe1 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ if1 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oe1(if1 if1Var, Continuation continuation) {
        super(2, continuation);
        this.b = if1Var;
    }

    public static final void a(AdInspectorError adInspectorError) {
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new oe1(this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new oe1(this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            if1 if1Var = this.b;
            ae1 ae1Var = ae1.GESTURE;
            OnAdInspectorClosedListener onAdInspectorClosedListener = new OnAdInspectorClosedListener() { // from class: ads_mobile_sdk.oe1$$ExternalSyntheticLambda0
                @Override // com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener
                public final void onAdInspectorClosed(AdInspectorError adInspectorError) {
                    oe1.a(adInspectorError);
                }
            };
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
