package com.google.android.libraries.ads.mobile.sdk.nativead;

import kotlin.ck1;
import kotlin.nm1;
import kotlin.pm1;
import kotlin.vz1;
import kotlin.xz1;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
public final class f extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ xz1 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(xz1 xz1Var, Continuation continuation) {
        super(2, continuation);
        this.b = xz1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new f(this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new f(this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            nm1 nm1Var = pm1.b;
            ck1 ck1Var = ((vz1) this.b).a;
            this.a = 1;
            obj = nm1Var.a(ck1Var, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return new NativeAdLoadResult.BannerAdSuccess(((NativeAdLoadResult.BannerAdSuccess) obj).getAd());
    }
}
