package com.unity3d.services.core.extensions;

import com.unity3d.services.UnityAdsConstants;
import p005kotlin.Metadata;

/* JADX INFO: compiled from: StringExtensions.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0001¨\u0006\u0002"}, d2 = {"toUnityMessage", "", "unity-ads_defaultRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class StringExtensionsKt {
    public static final String toUnityMessage(String str) {
        String str2 = str;
        return (str2 == null || str2.length() == 0) ? "[Unity Ads] Internal error" : UnityAdsConstants.Messages.MSG_UNITY_BASE + str;
    }
}
