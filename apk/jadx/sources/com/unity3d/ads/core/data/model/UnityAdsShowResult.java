package com.unity3d.ads.core.data.model;

import p005kotlin.Metadata;
import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;

/* JADX INFO: compiled from: UnityAdsShowResult.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;", "", "<init>", "(Ljava/lang/String;I)V", "NOT_INITIALIZED", "NOT_READY", "VIDEO_PLAYER_ERROR", "INVALID_ARGUMENT", "NO_CONNECTION", "ALREADY_SHOWING", "INTERNAL_ERROR", "TIMEOUT", "SUCCESS", "FAILURE", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public enum UnityAdsShowResult {
    NOT_INITIALIZED,
    NOT_READY,
    VIDEO_PLAYER_ERROR,
    INVALID_ARGUMENT,
    NO_CONNECTION,
    ALREADY_SHOWING,
    INTERNAL_ERROR,
    TIMEOUT,
    SUCCESS,
    FAILURE;

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

    public static EnumEntries<UnityAdsShowResult> getEntries() {
        return $ENTRIES;
    }
}
