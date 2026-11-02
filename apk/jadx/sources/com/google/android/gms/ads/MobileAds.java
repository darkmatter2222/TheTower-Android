package com.google.android.gms.ads;

import com.ironsource.C3813rg;
import java.util.List;
import p005kotlin.Metadata;
import p005kotlin.jvm.JvmStatic;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/google/android/gms/ads/MobileAds;", "", "Lcom/google/android/gms/ads/RequestConfiguration;", "getRequestConfiguration", "()Lcom/google/android/gms/ads/RequestConfiguration;", "Lcom/google/android/gms/ads/VersionInfo;", C3813rg.b, "()Lcom/google/android/gms/ads/VersionInfo;", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class MobileAds {
    public static final MobileAds INSTANCE = new MobileAds();

    private MobileAds() {
    }

    @JvmStatic
    public static final RequestConfiguration getRequestConfiguration() {
        com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration requestConfiguration = com.google.android.libraries.ads.mobile.sdk.MobileAds.INSTANCE.getRequestConfiguration();
        int value = requestConfiguration.getTagForChildDirectedTreatment().getValue();
        int value2 = requestConfiguration.getTagForUnderAgeOfConsent().getValue();
        String value3 = requestConfiguration.getMaxAdContentRating().getValue();
        List<String> testDeviceIds = requestConfiguration.getTestDeviceIds();
        String strName = requestConfiguration.getAgeRestrictedTreatment().name();
        AgeRestrictedTreatment ageRestrictedTreatment = AgeRestrictedTreatment.UNSPECIFIED;
        return new RequestConfiguration(value, value2, value3, testDeviceIds, (AgeRestrictedTreatment) Enum.valueOf(AgeRestrictedTreatment.class, strName));
    }

    @JvmStatic
    public static final VersionInfo getVersion() {
        com.google.android.libraries.ads.mobile.sdk.common.VersionInfo version = com.google.android.libraries.ads.mobile.sdk.MobileAds.INSTANCE.getVersion();
        return new VersionInfo(version.getMajorVersion(), version.getMinorVersion(), version.getMicroVersion());
    }
}
