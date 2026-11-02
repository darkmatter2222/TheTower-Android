package com.google.android.libraries.ads.mobile.sdk.nativead;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import kotlin.a01;
import kotlin.cm1;
import kotlin.fi0;
import kotlin.gi0;
import kotlin.h01;
import kotlin.i01;
import kotlin.j53;
import kotlin.jl1;
import kotlin.jq;
import kotlin.px2;
import kotlin.tz2;
import kotlin.v01;
import kotlin.vf0;
import kotlin.vz2;
import kotlin.zz0;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import p005kotlin.Metadata;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bf\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoader;", "", "Companion", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface NativeAdLoader {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.a;

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001J\u001b\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J)\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\nJ\u001f\u0010\u0005\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\u0005\u0010\u000eJ'\u0010\u0005\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\u0005\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\f\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\u0012\u0010\u0013\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoader$Companion;", "", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;", "adRequest", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult;", "load", "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "numberOfAds", "Lkotlinx/coroutines/flow/Flow;", "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;", "adLoadCallback", "", "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;)V", "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;ILcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;)V", "", "adResponse", "loadFromAdResponse", "(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Companion {
        static final /* synthetic */ Companion a = new Companion();

        private Companion() {
        }

        private static px2 a(NativeAdRequest nativeAdRequest, int i) {
            a01.a.getClass();
            return ((vz2) ((vz2) ((vz2) ((vz2) ((vz2) new gi0(((vf0) zz0.a()).c).a((BaseRequest) nativeAdRequest)).a((AdRequest) nativeAdRequest)).a((NativeRequest) nativeAdRequest).a(nativeAdRequest).a(j53.i)).b(false)).a(false)).a(i).a().a();
        }

        public final Object load(NativeAdRequest nativeAdRequest, int i, Continuation<? super Flow<? extends NativeAdLoadResult>> continuation) {
            v01 v01VarA = jl1.a(nativeAdRequest.getNativeAdTypes(), nativeAdRequest.getCustomFormatIds(), nativeAdRequest.getAdSize(), Boxing.boxInt(i));
            return v01VarA instanceof i01 ? FlowKt.flowOf(new NativeAdLoadResult.Failure(new LoadAdError(LoadAdError.ErrorCode.INVALID_REQUEST, h01.a((i01) v01VarA), null))) : jq.a.a(a(nativeAdRequest, i), new b(null), continuation);
        }

        public final Object load(NativeAdRequest nativeAdRequest, Continuation<? super NativeAdLoadResult> continuation) {
            v01 v01VarA = jl1.a(nativeAdRequest.getNativeAdTypes(), nativeAdRequest.getCustomFormatIds(), nativeAdRequest.getAdSize(), null);
            return v01VarA instanceof i01 ? new NativeAdLoadResult.Failure(new LoadAdError(LoadAdError.ErrorCode.INVALID_REQUEST, h01.a((i01) v01VarA), null)) : jq.a.b(a(nativeAdRequest, 1), new a(null), continuation);
        }

        @JvmStatic
        public final void load(NativeAdRequest adRequest, int numberOfAds, NativeAdLoaderCallback adLoadCallback) {
            Intrinsics.checkNotNullParameter(adRequest, "adRequest");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            v01 v01VarA = jl1.a(adRequest.getNativeAdTypes(), adRequest.getCustomFormatIds(), adRequest.getAdSize(), Integer.valueOf(numberOfAds));
            if (v01VarA instanceof i01) {
                adLoadCallback.onAdFailedToLoad(new LoadAdError(LoadAdError.ErrorCode.INVALID_REQUEST, h01.a((i01) v01VarA), null));
            } else {
                a01.a.getClass();
                ((cm1) ((vf0) zz0.a()).q3.get()).a((Function1) new c(a(adRequest, numberOfAds), adLoadCallback, null));
            }
        }

        @JvmStatic
        public final void load(NativeAdRequest adRequest, NativeAdLoaderCallback adLoadCallback) {
            Intrinsics.checkNotNullParameter(adRequest, "adRequest");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            load(adRequest, 1, adLoadCallback);
        }

        @JvmStatic
        public final void loadFromAdResponse(String adResponse, NativeAdLoaderCallback adLoadCallback) {
            Intrinsics.checkNotNullParameter(adResponse, "adResponse");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            a01.a.getClass();
            cm1 cm1Var = (cm1) ((vf0) zz0.a()).q3.get();
            vf0 vf0Var = ((vf0) zz0.a()).c;
            adResponse.getClass();
            cm1Var.a((Function1) new d((tz2) new fi0(vf0Var, j53.i, adResponse, Boolean.FALSE).h.get(), adLoadCallback, null));
        }
    }

    @JvmStatic
    static void load(NativeAdRequest nativeAdRequest, int i, NativeAdLoaderCallback nativeAdLoaderCallback) {
        INSTANCE.load(nativeAdRequest, i, nativeAdLoaderCallback);
    }

    @JvmStatic
    static void load(NativeAdRequest nativeAdRequest, NativeAdLoaderCallback nativeAdLoaderCallback) {
        INSTANCE.load(nativeAdRequest, nativeAdLoaderCallback);
    }

    @JvmStatic
    static void loadFromAdResponse(String str, NativeAdLoaderCallback nativeAdLoaderCallback) {
        INSTANCE.loadFromAdResponse(str, nativeAdLoaderCallback);
    }
}
