package kotlin;

import com.google.android.libraries.ads.mobile.sdk.rewarded.OnAdMetadataChangedListener;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class vl0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ fm0 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vl0(fm0 fm0Var, Continuation continuation) {
        super(2, continuation);
        this.a = fm0Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new vl0(this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new vl0(this.a, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        OnAdMetadataChangedListener onAdMetadataChangedListener;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        fm0 fm0Var = this.a;
        synchronized (fm0Var) {
            onAdMetadataChangedListener = fm0Var.f;
        }
        if (onAdMetadataChangedListener != null) {
            onAdMetadataChangedListener.onAdMetadataChanged();
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
