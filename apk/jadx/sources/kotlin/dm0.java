package kotlin;

import com.google.android.libraries.ads.mobile.sdk.nativead.OnCustomClickListener;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class dm0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ fm0 a;
    public final /* synthetic */ String b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dm0(Continuation continuation, fm0 fm0Var, String str) {
        super(2, continuation);
        this.a = fm0Var;
        this.b = str;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new dm0(continuation, this.a, this.b);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new dm0((Continuation) obj2, this.a, this.b).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        OnCustomClickListener onCustomClickListener;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        fm0 fm0Var = this.a;
        synchronized (fm0Var) {
            onCustomClickListener = fm0Var.n;
        }
        if (onCustomClickListener != null) {
            onCustomClickListener.onCustomClick(this.b);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
