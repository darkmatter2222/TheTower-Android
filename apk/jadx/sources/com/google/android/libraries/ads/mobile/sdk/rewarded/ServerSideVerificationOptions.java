package com.google.android.libraries.ads.mobile.sdk.rewarded;

import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006¨\u0006\r"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;", "", "", "a", "Ljava/lang/String;", "getUserId", "()Ljava/lang/String;", "userId", "b", "getCustomData", "customData", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class ServerSideVerificationOptions {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final String userId;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final String customData;

    public ServerSideVerificationOptions(String userId, String customData) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(customData, "customData");
        this.userId = userId;
        this.customData = customData;
    }

    public final String getCustomData() {
        return this.customData;
    }

    public final String getUserId() {
        return this.userId;
    }
}
