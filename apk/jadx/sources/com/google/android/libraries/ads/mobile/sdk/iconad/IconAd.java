package com.google.android.libraries.ads.mobile.sdk.iconad;

import com.google.android.libraries.ads.mobile.sdk.common.Ad;
import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesInfo;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadResult;
import com.google.android.libraries.ads.mobile.sdk.common.Image;
import com.ironsource.C3510b4;
import kotlin.a01;
import kotlin.a91;
import kotlin.cm1;
import kotlin.e91;
import kotlin.g91;
import kotlin.h91;
import kotlin.iq;
import kotlin.iz2;
import kotlin.j53;
import kotlin.j91;
import kotlin.jq;
import kotlin.vf0;
import kotlin.zh0;
import kotlin.zz0;
import kotlinx.coroutines.flow.Flow;
import p005kotlin.Deprecated;
import p005kotlin.Metadata;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0004\bf\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cR\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u0007X¦\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u0004\u0018\u00010\rX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u0004\u0018\u00010\rX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000fR\u0012\u0010\u0012\u001a\u00020\u0013X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\rX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u000fR\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u0019X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u001dÀ\u0006\u0001"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAd;", "Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;", "adChoicesInfo", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesInfo;", "getAdChoicesInfo", "()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesInfo;", "adEventCallback", "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdEventCallback;", "getAdEventCallback", "()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdEventCallback;", "setAdEventCallback", "(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdEventCallback;)V", "callToAction", "", "getCallToAction", "()Ljava/lang/String;", "headline", "getHeadline", C3510b4.i.H0, "Lcom/google/android/libraries/ads/mobile/sdk/common/Image;", "getIcon", "()Lcom/google/android/libraries/ads/mobile/sdk/common/Image;", "packageName", "getPackageName", "starRating", "", "getStarRating", "()Ljava/lang/Double;", "Companion", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface IconAd extends Ad {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.a;

    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001J!\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007J/\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u000bJ%\u0010\u0006\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\fH\u0007¢\u0006\u0004\b\u0006\u0010\u000fJ'\u0010\u0006\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u0010H\u0007¢\u0006\u0004\b\u0006\u0010\u0011J-\u0010\u0006\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\fH\u0007¢\u0006\u0004\b\u0006\u0010\u0012J%\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00132\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\fH\u0007¢\u0006\u0004\b\u0015\u0010\u0016\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0017"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAd$Companion;", "", "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;", "adRequest", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;", "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAd;", "load", "(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "maxNumberOfAds", "Lkotlinx/coroutines/flow/Flow;", "(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;", "adLoadCallback", "", "(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V", "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdLoadCallback;", "(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;ILcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdLoadCallback;)V", "(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;ILcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V", "", "adResponse", "loadFromAdResponse", "(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Companion {
        static final /* synthetic */ Companion a = new Companion();

        private Companion() {
        }

        public final Object load(IconAdRequest iconAdRequest, int i, Continuation<? super Flow<? extends AdLoadResult<? extends IconAd>>> continuation) {
            j91.j.getClass();
            return jq.a.a(h91.a(iconAdRequest, i), new e91(null), continuation);
        }

        public final Object load(IconAdRequest iconAdRequest, Continuation<? super AdLoadResult<? extends IconAd>> continuation) {
            j91.j.getClass();
            return jq.a.b(h91.a(iconAdRequest, 1), new iq(new a91(), null), continuation);
        }

        @Deprecated(message = "Use load(IconAdRequest, Int, IconAdLoadCallback) instead.")
        @JvmStatic
        public final void load(IconAdRequest adRequest, int maxNumberOfAds, AdLoadCallback<IconAd> adLoadCallback) {
            Intrinsics.checkNotNullParameter(adRequest, "adRequest");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            j91.j.getClass();
            h91.a(adRequest, maxNumberOfAds, adLoadCallback);
        }

        @JvmStatic
        public final void load(IconAdRequest adRequest, int maxNumberOfAds, IconAdLoadCallback adLoadCallback) {
            Intrinsics.checkNotNullParameter(adRequest, "adRequest");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            j91.j.getClass();
            h91.a(adRequest, maxNumberOfAds, adLoadCallback);
        }

        @JvmStatic
        public final void load(IconAdRequest adRequest, AdLoadCallback<IconAd> adLoadCallback) {
            Intrinsics.checkNotNullParameter(adRequest, "adRequest");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            j91.j.getClass();
            h91.a(adRequest, 1, adLoadCallback);
        }

        @JvmStatic
        public final void loadFromAdResponse(String adResponse, AdLoadCallback<IconAd> adLoadCallback) {
            Intrinsics.checkNotNullParameter(adResponse, "adResponse");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            j91.j.getClass();
            Intrinsics.checkNotNullParameter(adResponse, "adResponse");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            a01.a.getClass();
            vf0 vf0Var = ((vf0) zz0.a()).c;
            adResponse.getClass();
            ((cm1) ((vf0) zz0.a()).q3.get()).a((Function1) new g91((iz2) new zh0(vf0Var, j53.g, adResponse, Boolean.FALSE).h.get(), adLoadCallback, null));
        }
    }

    @Deprecated(message = "Use load(IconAdRequest, Int, IconAdLoadCallback) instead.")
    @JvmStatic
    static void load(IconAdRequest iconAdRequest, int i, AdLoadCallback<IconAd> adLoadCallback) {
        INSTANCE.load(iconAdRequest, i, adLoadCallback);
    }

    @JvmStatic
    static void load(IconAdRequest iconAdRequest, int i, IconAdLoadCallback iconAdLoadCallback) {
        INSTANCE.load(iconAdRequest, i, iconAdLoadCallback);
    }

    @JvmStatic
    static void load(IconAdRequest iconAdRequest, AdLoadCallback<IconAd> adLoadCallback) {
        INSTANCE.load(iconAdRequest, adLoadCallback);
    }

    @JvmStatic
    static void loadFromAdResponse(String str, AdLoadCallback<IconAd> adLoadCallback) {
        INSTANCE.loadFromAdResponse(str, adLoadCallback);
    }

    AdChoicesInfo getAdChoicesInfo();

    IconAdEventCallback getAdEventCallback();

    String getCallToAction();

    String getHeadline();

    Image getIcon();

    String getPackageName();

    Double getStarRating();

    void setAdEventCallback(IconAdEventCallback iconAdEventCallback);
}
