package com.unity3d.ads.core.domain.adload;

import com.ironsource.C3635i2;
import com.unity3d.ads.adplayer.AdPlayer;
import com.unity3d.ads.adplayer.WebViewBridge;
import com.unity3d.ads.adplayer.model.LoadEvent;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PreloadedWebView.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0007HÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, d2 = {"Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;", "", "adPlayer", "Lcom/unity3d/ads/adplayer/AdPlayer;", "bridge", "Lcom/unity3d/ads/adplayer/WebViewBridge;", "loadEvent", "Lcom/unity3d/ads/adplayer/model/LoadEvent;", "<init>", "(Lcom/unity3d/ads/adplayer/AdPlayer;Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/adplayer/model/LoadEvent;)V", "getAdPlayer", "()Lcom/unity3d/ads/adplayer/AdPlayer;", "getBridge", "()Lcom/unity3d/ads/adplayer/WebViewBridge;", "getLoadEvent", "()Lcom/unity3d/ads/adplayer/model/LoadEvent;", "component1", "component2", "component3", "copy", "equals", "", C3635i2.d, "hashCode", "", "toString", "", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class PreloadedWebView {
    private final AdPlayer adPlayer;
    private final WebViewBridge bridge;
    private final LoadEvent loadEvent;

    public PreloadedWebView(AdPlayer adPlayer, WebViewBridge bridge, LoadEvent loadEvent) {
        Intrinsics.checkNotNullParameter(adPlayer, "adPlayer");
        Intrinsics.checkNotNullParameter(bridge, "bridge");
        Intrinsics.checkNotNullParameter(loadEvent, "loadEvent");
        this.adPlayer = adPlayer;
        this.bridge = bridge;
        this.loadEvent = loadEvent;
    }

    public static /* synthetic */ PreloadedWebView copy$default(PreloadedWebView preloadedWebView, AdPlayer adPlayer, WebViewBridge webViewBridge, LoadEvent loadEvent, int i, Object obj) {
        if ((i & 1) != 0) {
            adPlayer = preloadedWebView.adPlayer;
        }
        if ((i & 2) != 0) {
            webViewBridge = preloadedWebView.bridge;
        }
        if ((i & 4) != 0) {
            loadEvent = preloadedWebView.loadEvent;
        }
        return preloadedWebView.copy(adPlayer, webViewBridge, loadEvent);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final AdPlayer getAdPlayer() {
        return this.adPlayer;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final WebViewBridge getBridge() {
        return this.bridge;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final LoadEvent getLoadEvent() {
        return this.loadEvent;
    }

    public final PreloadedWebView copy(AdPlayer adPlayer, WebViewBridge bridge, LoadEvent loadEvent) {
        Intrinsics.checkNotNullParameter(adPlayer, "adPlayer");
        Intrinsics.checkNotNullParameter(bridge, "bridge");
        Intrinsics.checkNotNullParameter(loadEvent, "loadEvent");
        return new PreloadedWebView(adPlayer, bridge, loadEvent);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PreloadedWebView)) {
            return false;
        }
        PreloadedWebView preloadedWebView = (PreloadedWebView) other;
        return Intrinsics.areEqual(this.adPlayer, preloadedWebView.adPlayer) && Intrinsics.areEqual(this.bridge, preloadedWebView.bridge) && Intrinsics.areEqual(this.loadEvent, preloadedWebView.loadEvent);
    }

    public final AdPlayer getAdPlayer() {
        return this.adPlayer;
    }

    public final WebViewBridge getBridge() {
        return this.bridge;
    }

    public final LoadEvent getLoadEvent() {
        return this.loadEvent;
    }

    public int hashCode() {
        return (((this.adPlayer.hashCode() * 31) + this.bridge.hashCode()) * 31) + this.loadEvent.hashCode();
    }

    public String toString() {
        return "PreloadedWebView(adPlayer=" + this.adPlayer + ", bridge=" + this.bridge + ", loadEvent=" + this.loadEvent + ')';
    }
}
