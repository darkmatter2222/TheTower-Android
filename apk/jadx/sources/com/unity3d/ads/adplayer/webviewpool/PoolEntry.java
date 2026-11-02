package com.unity3d.ads.adplayer.webviewpool;

import android.webkit.WebView;
import com.ironsource.C3635i2;
import com.unity3d.ads.adplayer.AndroidWebViewClient;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PoolEntry.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;", "", "webView", "Landroid/webkit/WebView;", "client", "Lcom/unity3d/ads/adplayer/AndroidWebViewClient;", "<init>", "(Landroid/webkit/WebView;Lcom/unity3d/ads/adplayer/AndroidWebViewClient;)V", "getWebView", "()Landroid/webkit/WebView;", "getClient", "()Lcom/unity3d/ads/adplayer/AndroidWebViewClient;", "component1", "component2", "copy", "equals", "", C3635i2.d, "hashCode", "", "toString", "", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class PoolEntry {
    private final AndroidWebViewClient client;
    private final WebView webView;

    public PoolEntry(WebView webView, AndroidWebViewClient client) {
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(client, "client");
        this.webView = webView;
        this.client = client;
    }

    public static /* synthetic */ PoolEntry copy$default(PoolEntry poolEntry, WebView webView, AndroidWebViewClient androidWebViewClient, int i, Object obj) {
        if ((i & 1) != 0) {
            webView = poolEntry.webView;
        }
        if ((i & 2) != 0) {
            androidWebViewClient = poolEntry.client;
        }
        return poolEntry.copy(webView, androidWebViewClient);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final WebView getWebView() {
        return this.webView;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final AndroidWebViewClient getClient() {
        return this.client;
    }

    public final PoolEntry copy(WebView webView, AndroidWebViewClient client) {
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(client, "client");
        return new PoolEntry(webView, client);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PoolEntry)) {
            return false;
        }
        PoolEntry poolEntry = (PoolEntry) other;
        return Intrinsics.areEqual(this.webView, poolEntry.webView) && Intrinsics.areEqual(this.client, poolEntry.client);
    }

    public final AndroidWebViewClient getClient() {
        return this.client;
    }

    public final WebView getWebView() {
        return this.webView;
    }

    public int hashCode() {
        return (this.webView.hashCode() * 31) + this.client.hashCode();
    }

    public String toString() {
        return "PoolEntry(webView=" + this.webView + ", client=" + this.client + ')';
    }
}
