package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import com.google.android.libraries.ads.mobile.sdk.internal.nativead.InternalNativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdLoadResult;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdLoaderCallback;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class pm1 extends ei1 {
    public static final nm1 b = new nm1();
    public final NativeAdLoaderCallback a;

    public pm1(NativeAdLoaderCallback loadCallback) {
        Intrinsics.checkNotNullParameter(loadCallback, "loadCallback");
        this.a = loadCallback;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0086  */
    /* JADX WARN: Code duplicated, block: B:31:0x0092  */
    /* JADX WARN: Code duplicated, block: B:33:0x0096  */
    /* JADX WARN: Code duplicated, block: B:34:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.ei1
    public final Object a(xz1 xz1Var, Continuation continuation) {
        om1 om1Var;
        NativeAdLoaderCallback nativeAdLoaderCallback;
        NativeAdLoadResult nativeAdSuccess;
        NativeAdLoadResult failure;
        if (continuation instanceof om1) {
            om1Var = (om1) continuation;
            int i = om1Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                om1Var.d = i - Integer.MIN_VALUE;
            } else {
                om1Var = new om1(this, continuation);
            }
        } else {
            om1Var = new om1(this, continuation);
        }
        Object obj = om1Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = om1Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            if (xz1Var instanceof wz1) {
                InternalNativeAd ad = ((wz1) xz1Var).a;
                Intrinsics.checkNotNullParameter(ad, "ad");
                q02 q02Var = ad.getO().b;
                int i3 = q02Var == null ? -1 : lm1.a[q02Var.ordinal()];
                if (i3 != 1) {
                    if (i3 != 2) {
                        failure = new NativeAdLoadResult.Failure(new LoadAdError(LoadAdError.ErrorCode.INTERNAL_ERROR, "Invalid native ad response.", null));
                    } else {
                        nativeAdSuccess = new NativeAdLoadResult.CustomNativeAdSuccess(new nc0(ad));
                    }
                    if (failure instanceof NativeAdLoadResult.NativeAdSuccess) {
                        this.a.onNativeAdLoaded(((NativeAdLoadResult.NativeAdSuccess) failure).getAd());
                    } else if (failure instanceof NativeAdLoadResult.CustomNativeAdSuccess) {
                        this.a.onCustomNativeAdLoaded(((NativeAdLoadResult.CustomNativeAdSuccess) failure).getAd());
                    } else {
                        this.a.onAdFailedToLoad(new LoadAdError(LoadAdError.ErrorCode.INTERNAL_ERROR, "Invalid native ad response.", null));
                    }
                } else {
                    nativeAdSuccess = new NativeAdLoadResult.NativeAdSuccess(new l12(ad));
                }
                failure = nativeAdSuccess;
                if (failure instanceof NativeAdLoadResult.NativeAdSuccess) {
                    this.a.onNativeAdLoaded(((NativeAdLoadResult.NativeAdSuccess) failure).getAd());
                } else if (failure instanceof NativeAdLoadResult.CustomNativeAdSuccess) {
                    this.a.onCustomNativeAdLoaded(((NativeAdLoadResult.CustomNativeAdSuccess) failure).getAd());
                } else {
                    this.a.onAdFailedToLoad(new LoadAdError(LoadAdError.ErrorCode.INTERNAL_ERROR, "Invalid native ad response.", null));
                }
            } else if (xz1Var instanceof vz1) {
                NativeAdLoaderCallback nativeAdLoaderCallback2 = this.a;
                nm1 nm1Var = b;
                ck1 ck1Var = ((vz1) xz1Var).a;
                om1Var.a = nativeAdLoaderCallback2;
                om1Var.d = 1;
                Object objA = nm1Var.a(ck1Var, om1Var);
                if (objA == coroutine_suspended) {
                    return coroutine_suspended;
                }
                obj = objA;
                nativeAdLoaderCallback = nativeAdLoaderCallback2;
            }
            return p005kotlin.Unit.INSTANCE;
        }
        if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        nativeAdLoaderCallback = om1Var.a;
        p005kotlin.ResultKt.throwOnFailure(obj);
        nativeAdLoaderCallback.onBannerAdLoaded(((NativeAdLoadResult.BannerAdSuccess) obj).getAd());
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.ei1
    public final void a() {
        this.a.onAdLoadingCompleted();
    }

    @Override // kotlin.ei1
    public final void a(LoadAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.a.onAdFailedToLoad(error);
    }
}
