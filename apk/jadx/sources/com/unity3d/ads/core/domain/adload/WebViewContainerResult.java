package com.unity3d.ads.core.domain.adload;

import com.ironsource.C3635i2;
import com.unity3d.ads.adplayer.AdPlayer;
import com.unity3d.ads.adplayer.AndroidWebViewContainer;
import com.unity3d.ads.adplayer.WebViewBridge;
import com.unity3d.ads.adplayer.model.LoadEvent;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WebViewContainerResult.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\u00020\u0001:\u0003\b\t\nB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003R\u0012\u0010\u0004\u001a\u00020\u0005X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0003\u000b\f\r¨\u0006\u000e"}, d2 = {"Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;", "", "<init>", "()V", "container", "Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;", "getContainer", "()Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;", "OnDemand", "FromPool", "FullyPreloaded", "Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;", "Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;", "Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class WebViewContainerResult {

    /* JADX INFO: compiled from: WebViewContainerResult.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;", "Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;", "container", "Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;", "<init>", "(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;)V", "getContainer", "()Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;", "component1", "copy", "equals", "", C3635i2.d, "", "hashCode", "", "toString", "", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class FromPool extends WebViewContainerResult {
        private final AndroidWebViewContainer container;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FromPool(AndroidWebViewContainer container) {
            super(null);
            Intrinsics.checkNotNullParameter(container, "container");
            this.container = container;
        }

        public static /* synthetic */ FromPool copy$default(FromPool fromPool, AndroidWebViewContainer androidWebViewContainer, int i, Object obj) {
            if ((i & 1) != 0) {
                androidWebViewContainer = fromPool.container;
            }
            return fromPool.copy(androidWebViewContainer);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final AndroidWebViewContainer getContainer() {
            return this.container;
        }

        public final FromPool copy(AndroidWebViewContainer container) {
            Intrinsics.checkNotNullParameter(container, "container");
            return new FromPool(container);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof FromPool) && Intrinsics.areEqual(this.container, ((FromPool) other).container);
        }

        @Override // com.unity3d.ads.core.domain.adload.WebViewContainerResult
        public AndroidWebViewContainer getContainer() {
            return this.container;
        }

        public int hashCode() {
            return this.container.hashCode();
        }

        public String toString() {
            return "FromPool(container=" + this.container + ')';
        }
    }

    /* JADX INFO: compiled from: WebViewContainerResult.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0017\u001a\u00020\tHÆ\u0003J1\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cHÖ\u0003J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\t\u0010\u001f\u001a\u00020 HÖ\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006!"}, d2 = {"Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;", "Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;", "container", "Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;", "adPlayer", "Lcom/unity3d/ads/adplayer/AdPlayer;", "bridge", "Lcom/unity3d/ads/adplayer/WebViewBridge;", "loadEvent", "Lcom/unity3d/ads/adplayer/model/LoadEvent;", "<init>", "(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lcom/unity3d/ads/adplayer/AdPlayer;Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/adplayer/model/LoadEvent;)V", "getContainer", "()Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;", "getAdPlayer", "()Lcom/unity3d/ads/adplayer/AdPlayer;", "getBridge", "()Lcom/unity3d/ads/adplayer/WebViewBridge;", "getLoadEvent", "()Lcom/unity3d/ads/adplayer/model/LoadEvent;", "component1", "component2", "component3", "component4", "copy", "equals", "", C3635i2.d, "", "hashCode", "", "toString", "", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class FullyPreloaded extends WebViewContainerResult {
        private final AdPlayer adPlayer;
        private final WebViewBridge bridge;
        private final AndroidWebViewContainer container;
        private final LoadEvent loadEvent;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FullyPreloaded(AndroidWebViewContainer container, AdPlayer adPlayer, WebViewBridge bridge, LoadEvent loadEvent) {
            super(null);
            Intrinsics.checkNotNullParameter(container, "container");
            Intrinsics.checkNotNullParameter(adPlayer, "adPlayer");
            Intrinsics.checkNotNullParameter(bridge, "bridge");
            Intrinsics.checkNotNullParameter(loadEvent, "loadEvent");
            this.container = container;
            this.adPlayer = adPlayer;
            this.bridge = bridge;
            this.loadEvent = loadEvent;
        }

        public static /* synthetic */ FullyPreloaded copy$default(FullyPreloaded fullyPreloaded, AndroidWebViewContainer androidWebViewContainer, AdPlayer adPlayer, WebViewBridge webViewBridge, LoadEvent loadEvent, int i, Object obj) {
            if ((i & 1) != 0) {
                androidWebViewContainer = fullyPreloaded.container;
            }
            if ((i & 2) != 0) {
                adPlayer = fullyPreloaded.adPlayer;
            }
            if ((i & 4) != 0) {
                webViewBridge = fullyPreloaded.bridge;
            }
            if ((i & 8) != 0) {
                loadEvent = fullyPreloaded.loadEvent;
            }
            return fullyPreloaded.copy(androidWebViewContainer, adPlayer, webViewBridge, loadEvent);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final AndroidWebViewContainer getContainer() {
            return this.container;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final AdPlayer getAdPlayer() {
            return this.adPlayer;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final WebViewBridge getBridge() {
            return this.bridge;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final LoadEvent getLoadEvent() {
            return this.loadEvent;
        }

        public final FullyPreloaded copy(AndroidWebViewContainer container, AdPlayer adPlayer, WebViewBridge bridge, LoadEvent loadEvent) {
            Intrinsics.checkNotNullParameter(container, "container");
            Intrinsics.checkNotNullParameter(adPlayer, "adPlayer");
            Intrinsics.checkNotNullParameter(bridge, "bridge");
            Intrinsics.checkNotNullParameter(loadEvent, "loadEvent");
            return new FullyPreloaded(container, adPlayer, bridge, loadEvent);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof FullyPreloaded)) {
                return false;
            }
            FullyPreloaded fullyPreloaded = (FullyPreloaded) other;
            return Intrinsics.areEqual(this.container, fullyPreloaded.container) && Intrinsics.areEqual(this.adPlayer, fullyPreloaded.adPlayer) && Intrinsics.areEqual(this.bridge, fullyPreloaded.bridge) && Intrinsics.areEqual(this.loadEvent, fullyPreloaded.loadEvent);
        }

        public final AdPlayer getAdPlayer() {
            return this.adPlayer;
        }

        public final WebViewBridge getBridge() {
            return this.bridge;
        }

        @Override // com.unity3d.ads.core.domain.adload.WebViewContainerResult
        public AndroidWebViewContainer getContainer() {
            return this.container;
        }

        public final LoadEvent getLoadEvent() {
            return this.loadEvent;
        }

        public int hashCode() {
            return (((((this.container.hashCode() * 31) + this.adPlayer.hashCode()) * 31) + this.bridge.hashCode()) * 31) + this.loadEvent.hashCode();
        }

        public String toString() {
            return "FullyPreloaded(container=" + this.container + ", adPlayer=" + this.adPlayer + ", bridge=" + this.bridge + ", loadEvent=" + this.loadEvent + ')';
        }
    }

    /* JADX INFO: compiled from: WebViewContainerResult.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;", "Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;", "container", "Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;", "<init>", "(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;)V", "getContainer", "()Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;", "component1", "copy", "equals", "", C3635i2.d, "", "hashCode", "", "toString", "", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class OnDemand extends WebViewContainerResult {
        private final AndroidWebViewContainer container;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnDemand(AndroidWebViewContainer container) {
            super(null);
            Intrinsics.checkNotNullParameter(container, "container");
            this.container = container;
        }

        public static /* synthetic */ OnDemand copy$default(OnDemand onDemand, AndroidWebViewContainer androidWebViewContainer, int i, Object obj) {
            if ((i & 1) != 0) {
                androidWebViewContainer = onDemand.container;
            }
            return onDemand.copy(androidWebViewContainer);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final AndroidWebViewContainer getContainer() {
            return this.container;
        }

        public final OnDemand copy(AndroidWebViewContainer container) {
            Intrinsics.checkNotNullParameter(container, "container");
            return new OnDemand(container);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof OnDemand) && Intrinsics.areEqual(this.container, ((OnDemand) other).container);
        }

        @Override // com.unity3d.ads.core.domain.adload.WebViewContainerResult
        public AndroidWebViewContainer getContainer() {
            return this.container;
        }

        public int hashCode() {
            return this.container.hashCode();
        }

        public String toString() {
            return "OnDemand(container=" + this.container + ')';
        }
    }

    private WebViewContainerResult() {
    }

    public /* synthetic */ WebViewContainerResult(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract AndroidWebViewContainer getContainer();
}
