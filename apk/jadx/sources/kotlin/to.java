package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class to extends SuspendLambda implements Function1 {
    public final /* synthetic */ zy2 a;
    public final /* synthetic */ AdLoadCallback b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public to(zy2 zy2Var, AdLoadCallback adLoadCallback, Continuation continuation) {
        super(1, continuation);
        this.a = zy2Var;
        this.b = adLoadCallback;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new to(this.a, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new to(this.a, this.b, (Continuation) obj).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        this.a.a(new ek1(this.b, new so(null)));
        return p005kotlin.Unit.INSTANCE;
    }
}
