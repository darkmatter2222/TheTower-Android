package kotlin;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class di1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ ck1 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public di1(ck1 ck1Var, Continuation continuation) {
        super(2, continuation);
        this.a = ck1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new di1(this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new di1(this.a, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        ck1 ck1Var = this.a;
        AdSize adSizeM = ck1Var.m();
        Context context = ck1Var.n.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        o53 o53Var = new o53(context, adSizeM);
        o53Var.addView(ck1Var.n);
        return o53Var;
    }
}
