package com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial;

import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.common.BaseSignalRequestBuilder;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import com.ironsource.C3510b4;
import com.ironsource.C3908x1;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import p005kotlin.Deprecated;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001 R\u001a\u0010\b\u001a\u00020\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR \u0010\u0016\u001a\u00020\u000f8\u0017X\u0097\u0004¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u0012\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0012\u0010\u0013R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u00178\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001f\u001a\u00020\u000f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001d\u0010\u0011\u001a\u0004\b\u001e\u0010\u0013¨\u0006!"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest;", "Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;", "Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;", "", "o", "I", "getMaxScreenHoldDurationSeconds", "()I", "maxScreenHoldDurationSeconds", "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", "p", "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", "getAdSize", "()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", C3510b4.i.O, "", "q", "Z", "getCustomClickGestureEnabled", "()Z", "getCustomClickGestureEnabled$annotations", "()V", "customClickGestureEnabled", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;", AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ, "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;", "getCustomClickSwipeGestureDirection", "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;", "customClickSwipeGestureDirection", "s", "getCustomClickSwipeGestureTapsAllowed", "customClickSwipeGestureTapsAllowed", "Builder", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class SwipeableInterstitialSignalRequest extends SignalRequest implements SwipeableInterstitialRequest {

    /* JADX INFO: renamed from: o, reason: from kotlin metadata */
    private final int maxScreenHoldDurationSeconds;

    /* JADX INFO: renamed from: p, reason: from kotlin metadata */
    private final AdSize adSize;

    /* JADX INFO: renamed from: q, reason: from kotlin metadata */
    private final boolean customClickGestureEnabled;

    /* JADX INFO: renamed from: r, reason: from kotlin metadata */
    private final NativeAd.SwipeGestureDirection customClickSwipeGestureDirection;

    /* JADX INFO: renamed from: s, reason: from kotlin metadata */
    private final boolean customClickSwipeGestureTapsAllowed;

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002B\u0011\b\u0016\u0012\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u0003\u001a\u00020\u0000H\u0014¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\u000b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0000H\u0017¢\u0006\u0004\b\r\u0010\u0004J\u001f\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\r\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u001b"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;", "Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest$Builder;", C3908x1.o, "()Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest$Builder;", "", "maxScreenHoldDurationSeconds", "setMaxScreenHoldDurationSeconds", "(I)Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest$Builder;", "width", "height", "setAdSize", "(II)Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest$Builder;", "requestCustomClickGesture", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;", "customClickSwipeGestureDirection", "", "customClickSwipeGestureTapsAllowed", "enableCustomClickSwipeGesture", "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;Z)Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest;", "build", "()Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest;", "", "signalType", "<init>", "(Ljava/lang/String;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Builder extends BaseSignalRequestBuilder<Builder> implements SwipeableInterstitialRequest.Builder<Builder> {
        private int n;
        private AdSize o;
        private boolean p;
        private NativeAd.SwipeGestureDirection q;
        private boolean r;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(String signalType) {
            this(signalType, 0);
            Intrinsics.checkNotNullParameter(signalType, "signalType");
        }

        private Builder(String str, int i) {
            super(str, null);
            this.r = true;
        }

        public final SwipeableInterstitialSignalRequest build() {
            return new SwipeableInterstitialSignalRequest(getM(), getA(), getB(), getC(), getD(), getE(), getF(), getG(), getH(), getI(), getJ(), this.n, this.o, this.p, this.q, this.r, 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest.Builder
        public Builder enableCustomClickSwipeGesture(NativeAd.SwipeGestureDirection customClickSwipeGestureDirection, boolean customClickSwipeGestureTapsAllowed) {
            Intrinsics.checkNotNullParameter(customClickSwipeGestureDirection, "customClickSwipeGestureDirection");
            this.q = customClickSwipeGestureDirection;
            this.r = customClickSwipeGestureTapsAllowed;
            return self();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest.Builder
        @Deprecated(message = "Use enableCustomClickSwipeGesture(SwipeGestureDirection, Boolean) instead.")
        @KeepForSdk
        public Builder requestCustomClickGesture() {
            this.p = true;
            return self();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.libraries.ads.mobile.sdk.common.BaseRequestBuilder
        public Builder self() {
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest.Builder
        public Builder setAdSize(int width, int height) {
            this.o = new AdSize(width, height);
            return self();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest.Builder
        public Builder setMaxScreenHoldDurationSeconds(int maxScreenHoldDurationSeconds) {
            if (maxScreenHoldDurationSeconds > 0) {
                this.n = maxScreenHoldDurationSeconds;
            }
            return self();
        }
    }

    private SwipeableInterstitialSignalRequest(String str, String str2, LinkedHashSet linkedHashSet, String str3, LinkedHashMap linkedHashMap, Bundle bundle, HashSet hashSet, HashSet hashSet2, LinkedHashMap linkedHashMap2, String str4, String str5, int i, AdSize adSize, boolean z, NativeAd.SwipeGestureDirection swipeGestureDirection, boolean z2) {
        super(str, str2, linkedHashSet, str3, linkedHashMap, bundle, hashSet, hashSet2, linkedHashMap2, str4, str5);
        this.maxScreenHoldDurationSeconds = i;
        this.adSize = adSize;
        this.customClickGestureEnabled = z;
        this.customClickSwipeGestureDirection = swipeGestureDirection;
        this.customClickSwipeGestureTapsAllowed = z2;
    }

    public /* synthetic */ SwipeableInterstitialSignalRequest(String str, String str2, LinkedHashSet linkedHashSet, String str3, LinkedHashMap linkedHashMap, Bundle bundle, HashSet hashSet, HashSet hashSet2, LinkedHashMap linkedHashMap2, String str4, String str5, int i, AdSize adSize, boolean z, NativeAd.SwipeGestureDirection swipeGestureDirection, boolean z2, int i2) {
        this(str, str2, linkedHashSet, str3, linkedHashMap, bundle, hashSet, hashSet2, linkedHashMap2, str4, str5, i, adSize, z, swipeGestureDirection, z2);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest
    public AdSize getAdSize() {
        return this.adSize;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest
    @KeepForSdk
    public boolean getCustomClickGestureEnabled() {
        return this.customClickGestureEnabled;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest
    public NativeAd.SwipeGestureDirection getCustomClickSwipeGestureDirection() {
        return this.customClickSwipeGestureDirection;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest
    public boolean getCustomClickSwipeGestureTapsAllowed() {
        return this.customClickSwipeGestureTapsAllowed;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest
    public int getMaxScreenHoldDurationSeconds() {
        return this.maxScreenHoldDurationSeconds;
    }
}
