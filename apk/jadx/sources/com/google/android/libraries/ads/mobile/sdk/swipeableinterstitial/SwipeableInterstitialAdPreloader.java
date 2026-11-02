package com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial;

import com.google.android.libraries.ads.mobile.sdk.common.AdPreloader;
import com.google.android.libraries.ads.mobile.sdk.common.PreloadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.PreloadConfiguration;
import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import com.tapjoy.TJAdUnitConstants;
import java.util.Map;
import kotlin.a01;
import kotlin.bs2;
import kotlin.j53;
import kotlin.pt2;
import kotlin.rs3;
import kotlin.vf0;
import kotlin.zm3;
import kotlin.zn1;
import kotlin.zz0;
import kotlinx.coroutines.BuildersKt;
import p005kotlin.Metadata;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bg\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdPreloader;", "", "Companion", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface SwipeableInterstitialAdPreloader {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.b;

    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J)\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0017¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0017¢\u0006\u0004\b\n\u0010\fJ\u0019\u0010\r\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0017¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0004\u001a\u00020\u0003H\u0017¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0017¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\u0014H\u0017¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0003H\u0017¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0017¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0003H\u0017¢\u0006\u0004\b\u001c\u0010\u0018J\u0017\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0004\u001a\u00020\u0003H\u0017¢\u0006\u0004\b\u001e\u0010\u001f¨\u0006 "}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdPreloader$Companion;", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdPreloader;", "Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAd;", "", "preloadId", "Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;", "preloadConfiguration", "Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;", "preloadCallback", "", TJAdUnitConstants.String.VIDEO_START, "(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;)Z", "(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;)Z", "pollAd", "(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAd;", "Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;", "peekAdResponseInfo", "(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;", "getConfiguration", "(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;", "", "getConfigurations", "()Ljava/util/Map;", "destroy", "(Ljava/lang/String;)Z", "", "destroyAll", "()V", "isAdAvailable", "", "getNumAdsAvailable", "(Ljava/lang/String;)I", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Companion extends AdPreloader<SwipeableInterstitialAd> {
        static final /* synthetic */ Companion b = new Companion();

        private Companion() {
            super(j53.l);
        }

        @Override // com.google.android.libraries.ads.mobile.sdk.common.AdPreloader
        @JvmStatic
        public boolean destroy(String preloadId) {
            Intrinsics.checkNotNullParameter(preloadId, "preloadId");
            return super.destroy(preloadId);
        }

        @Override // com.google.android.libraries.ads.mobile.sdk.common.AdPreloader
        @JvmStatic
        public void destroyAll() throws InterruptedException {
            super.destroyAll();
        }

        @Override // com.google.android.libraries.ads.mobile.sdk.common.AdPreloader
        @JvmStatic
        public PreloadConfiguration getConfiguration(String preloadId) {
            Intrinsics.checkNotNullParameter(preloadId, "preloadId");
            return super.getConfiguration(preloadId);
        }

        @Override // com.google.android.libraries.ads.mobile.sdk.common.AdPreloader
        @JvmStatic
        public Map<String, PreloadConfiguration> getConfigurations() {
            return super.getConfigurations();
        }

        @Override // com.google.android.libraries.ads.mobile.sdk.common.AdPreloader
        @JvmStatic
        public int getNumAdsAvailable(String preloadId) {
            Intrinsics.checkNotNullParameter(preloadId, "preloadId");
            return super.getNumAdsAvailable(preloadId);
        }

        @Override // com.google.android.libraries.ads.mobile.sdk.common.AdPreloader
        @JvmStatic
        public boolean isAdAvailable(String preloadId) {
            Intrinsics.checkNotNullParameter(preloadId, "preloadId");
            return super.isAdAvailable(preloadId);
        }

        @Override // com.google.android.libraries.ads.mobile.sdk.common.AdPreloader
        @JvmStatic
        public ResponseInfo peekAdResponseInfo(String preloadId) {
            Intrinsics.checkNotNullParameter(preloadId, "preloadId");
            return super.peekAdResponseInfo(preloadId);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.android.libraries.ads.mobile.sdk.common.AdPreloader
        @JvmStatic
        public SwipeableInterstitialAd pollAd(String preloadId) {
            Intrinsics.checkNotNullParameter(preloadId, "preloadId");
            a01.a.getClass();
            pt2 pt2Var = (pt2) ((vf0) zz0.a()).x1.get();
            pt2Var.getClass();
            Intrinsics.checkNotNullParameter(preloadId, "configurationId");
            zn1 zn1Var = (zn1) BuildersKt.runBlocking(new rs3(), new bs2(pt2Var, preloadId, null));
            if (zn1Var != null) {
                return new zm3(zn1Var);
            }
            return null;
        }

        @Override // com.google.android.libraries.ads.mobile.sdk.common.AdPreloader
        @JvmStatic
        public boolean start(String preloadId, PreloadConfiguration preloadConfiguration) {
            Intrinsics.checkNotNullParameter(preloadId, "preloadId");
            Intrinsics.checkNotNullParameter(preloadConfiguration, "preloadConfiguration");
            return super.start(preloadId, preloadConfiguration, null);
        }

        @Override // com.google.android.libraries.ads.mobile.sdk.common.AdPreloader
        @JvmStatic
        public boolean start(String preloadId, PreloadConfiguration preloadConfiguration, PreloadCallback preloadCallback) {
            Intrinsics.checkNotNullParameter(preloadId, "preloadId");
            Intrinsics.checkNotNullParameter(preloadConfiguration, "preloadConfiguration");
            return super.start(preloadId, preloadConfiguration, preloadCallback);
        }
    }

    @JvmStatic
    static boolean destroy(String str) {
        return INSTANCE.destroy(str);
    }

    @JvmStatic
    static void destroyAll() throws InterruptedException {
        INSTANCE.destroyAll();
    }

    @JvmStatic
    static PreloadConfiguration getConfiguration(String str) {
        return INSTANCE.getConfiguration(str);
    }

    @JvmStatic
    static Map<String, PreloadConfiguration> getConfigurations() {
        return INSTANCE.getConfigurations();
    }

    @JvmStatic
    static int getNumAdsAvailable(String str) {
        return INSTANCE.getNumAdsAvailable(str);
    }

    @JvmStatic
    static boolean isAdAvailable(String str) {
        return INSTANCE.isAdAvailable(str);
    }

    @JvmStatic
    static ResponseInfo peekAdResponseInfo(String str) {
        return INSTANCE.peekAdResponseInfo(str);
    }

    @JvmStatic
    static SwipeableInterstitialAd pollAd(String str) {
        return INSTANCE.pollAd(str);
    }

    @JvmStatic
    static boolean start(String str, PreloadConfiguration preloadConfiguration) {
        return INSTANCE.start(str, preloadConfiguration);
    }

    @JvmStatic
    static boolean start(String str, PreloadConfiguration preloadConfiguration, PreloadCallback preloadCallback) {
        return INSTANCE.start(str, preloadConfiguration, preloadCallback);
    }
}
