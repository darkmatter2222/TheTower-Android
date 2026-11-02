package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import com.google.gson.annotations.SerializedName;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BrowserSignals;", "", "", "isDefaultBrowserCustomTabsCapable", "Ljava/lang/Boolean;", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final /* data */ class BrowserSignals {

    @SerializedName("is_browser_custom_tabs_capable")
    public Boolean isDefaultBrowserCustomTabsCapable;

    public BrowserSignals() {
        this(0);
    }

    public /* synthetic */ BrowserSignals(int i) {
        this((Boolean) null);
    }

    public BrowserSignals(Boolean bool) {
        this.isDefaultBrowserCustomTabsCapable = bool;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BrowserSignals) && Intrinsics.areEqual(this.isDefaultBrowserCustomTabsCapable, ((BrowserSignals) obj).isDefaultBrowserCustomTabsCapable);
    }

    public final int hashCode() {
        Boolean bool = this.isDefaultBrowserCustomTabsCapable;
        if (bool == null) {
            return 0;
        }
        return bool.hashCode();
    }

    public final String toString() {
        return "BrowserSignals(isDefaultBrowserCustomTabsCapable=" + this.isDefaultBrowserCustomTabsCapable + ")";
    }
}
