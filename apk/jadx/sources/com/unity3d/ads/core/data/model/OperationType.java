package com.unity3d.ads.core.data.model;

import java.util.Locale;
import p005kotlin.Metadata;
import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OperationType.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0013\n\u0002\u0010\u000e\n\u0000\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0014\u001a\u00020\u0015H\u0016j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0016"}, d2 = {"Lcom/unity3d/ads/core/data/model/OperationType;", "", "<init>", "(Ljava/lang/String;I)V", "UNKNOWN", "INITIALIZATION", "LOAD", "LOAD_HEADER_BIDDING", "SHOW", "REFRESH", "AD_VIEWER_REQUEST", "PRIVACY_UPDATE", "INITIALIZATION_COMPLETED", "TRANSACTION_EVENT", "AD_REVENUE_EVENT", "LIFECYCLE_EVENT", "GET_TOKEN", "DIAGNOSTIC_EVENT", "OPERATIVE_EVENT", "UNIVERSAL_EVENT", "toString", "", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public enum OperationType {
    UNKNOWN,
    INITIALIZATION,
    LOAD,
    LOAD_HEADER_BIDDING,
    SHOW,
    REFRESH,
    AD_VIEWER_REQUEST,
    PRIVACY_UPDATE,
    INITIALIZATION_COMPLETED,
    TRANSACTION_EVENT,
    AD_REVENUE_EVENT,
    LIFECYCLE_EVENT,
    GET_TOKEN,
    DIAGNOSTIC_EVENT,
    OPERATIVE_EVENT,
    UNIVERSAL_EVENT;

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

    public static EnumEntries<OperationType> getEntries() {
        return $ENTRIES;
    }

    @Override // java.lang.Enum
    public String toString() {
        String string = super.toString();
        Locale ROOT = Locale.ROOT;
        Intrinsics.checkNotNullExpressionValue(ROOT, "ROOT");
        String lowerCase = string.toLowerCase(ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }
}
