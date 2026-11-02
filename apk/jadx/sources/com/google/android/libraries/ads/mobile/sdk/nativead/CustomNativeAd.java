package com.google.android.libraries.ads.mobile.sdk.nativead;

import com.google.android.libraries.ads.mobile.sdk.common.Ad;
import com.google.android.libraries.ads.mobile.sdk.common.Image;
import java.util.Set;
import p005kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018\u0000 #2\u00020\u0001:\u0001#J\n\u0010\u001a\u001a\u0004\u0018\u00010\u001bH&J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\nH&J\u0012\u0010\u001f\u001a\u0004\u0018\u00010\n2\u0006\u0010\u001e\u001a\u00020\nH&J\u0010\u0010 \u001a\u00020!2\u0006\u0010\u001e\u001a\u00020\nH&J\b\u0010\"\u001a\u00020!H&R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u0018\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u0004\u0018\u00010\nX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u0011X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u0015X¦\u000e¢\u0006\f\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006$À\u0006\u0001"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd;", "Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;", "adEventCallback", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;", "getAdEventCallback", "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;", "setAdEventCallback", "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;)V", "assetNameSet", "", "", "getAssetNameSet", "()Ljava/util/Set;", "customFormatId", "getCustomFormatId", "()Ljava/lang/String;", "mediaContent", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;", "getMediaContent", "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;", "onCustomClickListener", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/OnCustomClickListener;", "getOnCustomClickListener", "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/OnCustomClickListener;", "setOnCustomClickListener", "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/OnCustomClickListener;)V", "getDisplayOpenMeasurement", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/DisplayOpenMeasurement;", "getImage", "Lcom/google/android/libraries/ads/mobile/sdk/common/Image;", "assetName", "getText", "performClick", "", "recordImpression", "Companion", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface CustomNativeAd extends Ad {
    public static final String ASSET_NAME_VIDEO = "_videoMediaView";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd$Companion;", "", "", "ASSET_NAME_VIDEO", "Ljava/lang/String;", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Companion {
        public static final String ASSET_NAME_VIDEO = "_videoMediaView";
        static final /* synthetic */ Companion a = new Companion();

        private Companion() {
        }
    }

    NativeAdEventCallback getAdEventCallback();

    Set<String> getAssetNameSet();

    String getCustomFormatId();

    DisplayOpenMeasurement getDisplayOpenMeasurement();

    Image getImage(String assetName);

    MediaContent getMediaContent();

    OnCustomClickListener getOnCustomClickListener();

    String getText(String assetName);

    void performClick(String assetName);

    void recordImpression();

    void setAdEventCallback(NativeAdEventCallback nativeAdEventCallback);

    void setOnCustomClickListener(OnCustomClickListener onCustomClickListener);
}
