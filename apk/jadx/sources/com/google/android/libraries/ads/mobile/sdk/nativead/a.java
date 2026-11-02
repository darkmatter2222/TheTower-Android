package com.google.android.libraries.ads.mobile.sdk.nativead;

import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import com.google.android.libraries.ads.mobile.sdk.internal.nativead.InternalNativeAd;
import kotlin.ck1;
import kotlin.l12;
import kotlin.lm1;
import kotlin.nc0;
import kotlin.nm1;
import kotlin.pm1;
import kotlin.q02;
import kotlin.qx2;
import kotlin.rx2;
import kotlin.sx2;
import kotlin.vz1;
import kotlin.wz1;
import kotlin.xz1;
import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class a extends SuspendLambda implements Function2 {
    public int a;
    public /* synthetic */ Object b;

    public a(Continuation continuation) {
        super(2, continuation);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        a aVar = new a(continuation);
        aVar.b = obj;
        return aVar;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        a aVar = new a((Continuation) obj2);
        aVar.b = (sx2) obj;
        return aVar.invokeSuspend(Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            sx2 sx2Var = (sx2) this.b;
            if (sx2Var instanceof qx2) {
                return new NativeAdLoadResult.Failure(((qx2) sx2Var).a);
            }
            if (!(sx2Var instanceof rx2)) {
                throw new NoWhenBranchMatchedException();
            }
            xz1 xz1Var = (xz1) ((rx2) sx2Var).a;
            if (xz1Var instanceof wz1) {
                InternalNativeAd ad = ((wz1) xz1Var).a;
                Intrinsics.checkNotNullParameter(ad, "ad");
                q02 q02Var = ad.getO().b;
                int i2 = q02Var == null ? -1 : lm1.a[q02Var.ordinal()];
                if (i2 != 1) {
                    return i2 != 2 ? new NativeAdLoadResult.Failure(new LoadAdError(LoadAdError.ErrorCode.INTERNAL_ERROR, "Invalid native ad response.", null)) : new NativeAdLoadResult.CustomNativeAdSuccess(new nc0(ad));
                }
                return new NativeAdLoadResult.NativeAdSuccess(new l12(ad));
            }
            if (!(xz1Var instanceof vz1)) {
                throw new NoWhenBranchMatchedException();
            }
            nm1 nm1Var = pm1.b;
            ck1 ck1Var = ((vz1) xz1Var).a;
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
        return (NativeAdLoadResult) obj;
    }
}
