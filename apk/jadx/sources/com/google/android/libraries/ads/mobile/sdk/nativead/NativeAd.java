package com.google.android.libraries.ads.mobile.sdk.nativead;

import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.libraries.ads.mobile.sdk.common.Ad;
import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesInfo;
import com.google.android.libraries.ads.mobile.sdk.common.Image;
import com.ironsource.C3510b4;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import p005kotlin.Metadata;
import p005kotlin.enums.EnumEntriesKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0006\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\bf\u0018\u00002\u00020\u0001:\u0003@ABJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H&¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0007H&¢\u0006\u0004\b\f\u0010\tJ\u0017\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0002H'¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0002H'¢\u0006\u0004\b\u0011\u0010\u000fJ\u0017\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0002H'¢\u0006\u0004\b\u0013\u0010\u000fR\u001e\u0010\u0019\u001a\u0004\u0018\u00010\u00148&@&X¦\u000e¢\u0006\f\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001d\u001a\u0004\u0018\u00010\u001a8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u0016\u0010!\u001a\u0004\u0018\u00010\u001e8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0016\u0010#\u001a\u0004\u0018\u00010\u001a8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010\u001cR\u0016\u0010%\u001a\u0004\u0018\u00010\u001a8&X¦\u0004¢\u0006\u0006\u001a\u0004\b$\u0010\u001cR\u0016\u0010'\u001a\u0004\u0018\u00010\u001a8&X¦\u0004¢\u0006\u0006\u001a\u0004\b&\u0010\u001cR\u001c\u0010*\u001a\u0004\u0018\u00010\u001a8&X§\u0004¢\u0006\f\u0012\u0004\b)\u0010\t\u001a\u0004\b(\u0010\u001cR\u0016\u0010.\u001a\u0004\u0018\u00010+8&X¦\u0004¢\u0006\u0006\u001a\u0004\b,\u0010-R\u0016\u00100\u001a\u0004\u0018\u00010\u001a8&X¦\u0004¢\u0006\u0006\u001a\u0004\b/\u0010\u001cR\u0016\u00102\u001a\u0004\u0018\u00010\u001a8&X¦\u0004¢\u0006\u0006\u001a\u0004\b1\u0010\u001cR\u0016\u00104\u001a\u0004\u0018\u00010\u001e8&X¦\u0004¢\u0006\u0006\u001a\u0004\b3\u0010 R\u0016\u00108\u001a\u0004\u0018\u0001058&X¦\u0004¢\u0006\u0006\u001a\u0004\b6\u00107R\u0014\u0010<\u001a\u0002098&X¦\u0004¢\u0006\u0006\u001a\u0004\b:\u0010;R\u0014\u0010?\u001a\u00020\u00028&X¦\u0004¢\u0006\u0006\u001a\u0004\b=\u0010>ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006CÀ\u0006\u0001"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;", "Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;", "Landroid/os/Bundle;", "impressionData", "", "recordImpression", "(Landroid/os/Bundle;)Z", "", "enableCustomClickGesture", "()V", "isCustomClickGestureEnabled", "()Z", "recordCustomClickGesture", "clickData", "performClick", "(Landroid/os/Bundle;)V", "touchEventData", "reportTouchEvent", "signals", "recordEvent", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;", "getAdEventCallback", "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;", "setAdEventCallback", "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;)V", "adEventCallback", "", "getHeadline", "()Ljava/lang/String;", "headline", "Lcom/google/android/libraries/ads/mobile/sdk/common/Image;", "getImage", "()Lcom/google/android/libraries/ads/mobile/sdk/common/Image;", "image", "getBody", C3510b4.i.E0, "getCallToAction", "callToAction", "getAdvertiser", C3510b4.i.F0, "getCreativeSummary", "getCreativeSummary$annotations", "creativeSummary", "", "getStarRating", "()Ljava/lang/Double;", "starRating", "getStore", "store", "getPrice", "price", "getIcon", C3510b4.i.H0, "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesInfo;", "getAdChoicesInfo", "()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesInfo;", "adChoicesInfo", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;", "getMediaContent", "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;", "mediaContent", "getExtras", "()Landroid/os/Bundle;", HandleInvocationsFromAdViewer.KEY_EXTRAS, "NativeAdType", "NativeMediaAspectRatio", "SwipeGestureDirection", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public interface NativeAd extends Ad {

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd$NativeAdType[], still in use, count: 1, list:
  (r0v1 com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd$NativeAdType[]) from 0x0024: INVOKE (r0v1 com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd$NativeAdType[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m)]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;", "", "NATIVE", "CUSTOM_NATIVE", "BANNER", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class NativeAdType {
        NATIVE,
        CUSTOM_NATIVE,
        BANNER;

        static {
            EnumEntriesKt.enumEntries(nativeAdTypeArr);
        }

        private NativeAdType() {
            super(str, i);
        }

        public static NativeAdType[] values() {
            return (NativeAdType[]) a.clone();
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd$NativeMediaAspectRatio[], still in use, count: 1, list:
  (r0v1 com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd$NativeMediaAspectRatio[]) from 0x0038: INVOKE (r0v1 com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd$NativeMediaAspectRatio[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m)]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;", "", "UNKNOWN", "ANY", "LANDSCAPE", "PORTRAIT", "SQUARE", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class NativeMediaAspectRatio {
        UNKNOWN,
        ANY,
        LANDSCAPE,
        PORTRAIT,
        SQUARE;

        static {
            EnumEntriesKt.enumEntries(nativeMediaAspectRatioArr);
        }

        private NativeMediaAspectRatio() {
            super(str, i);
        }

        public static NativeMediaAspectRatio[] values() {
            return (NativeMediaAspectRatio[]) a.clone();
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd$SwipeGestureDirection[], still in use, count: 1, list:
  (r0v1 com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd$SwipeGestureDirection[]) from 0x0031: INVOKE (r0v1 com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd$SwipeGestureDirection[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m)]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;", "", "", "a", "I", "getValue", "()I", "value", "RIGHT", "LEFT", "UP", "DOWN", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class SwipeGestureDirection {
        RIGHT(1),
        LEFT(2),
        UP(4),
        DOWN(8);


        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final int value;

        static {
            EnumEntriesKt.enumEntries(swipeGestureDirectionArr);
        }

        private SwipeGestureDirection(int i) {
            super(str, i);
            this.value = i;
        }

        public static SwipeGestureDirection[] values() {
            return (SwipeGestureDirection[]) b.clone();
        }

        public final int getValue() {
            return this.value;
        }
    }

    void enableCustomClickGesture();

    AdChoicesInfo getAdChoicesInfo();

    NativeAdEventCallback getAdEventCallback();

    String getAdvertiser();

    String getBody();

    String getCallToAction();

    String getCreativeSummary();

    Bundle getExtras();

    String getHeadline();

    Image getIcon();

    Image getImage();

    MediaContent getMediaContent();

    String getPrice();

    Double getStarRating();

    String getStore();

    boolean isCustomClickGestureEnabled();

    @KeepForSdk
    void performClick(Bundle clickData);

    void recordCustomClickGesture();

    @KeepForSdk
    void recordEvent(Bundle signals);

    @KeepForSdk
    boolean recordImpression(Bundle impressionData);

    @KeepForSdk
    void reportTouchEvent(Bundle touchEventData);

    void setAdEventCallback(NativeAdEventCallback nativeAdEventCallback);
}
