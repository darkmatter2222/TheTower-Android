package com.unity3d.ads.core.data.model;

import p005kotlin.Metadata;
import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;

/* JADX INFO: compiled from: AdRefreshState.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/unity3d/ads/core/data/model/AdRefreshState;", "", "<init>", "(Ljava/lang/String;I)V", "REUSE_RELOADED", "REUSE_NO_FILL", "REUSE_ERROR", "REUSE_DURING_RELOAD", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public enum AdRefreshState {
    REUSE_RELOADED,
    REUSE_NO_FILL,
    REUSE_ERROR,
    REUSE_DURING_RELOAD;

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

    public static EnumEntries<AdRefreshState> getEntries() {
        return $ENTRIES;
    }
}
