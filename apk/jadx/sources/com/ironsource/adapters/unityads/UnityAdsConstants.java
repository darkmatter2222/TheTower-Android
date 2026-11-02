package com.ironsource.adapters.unityads;

import p005kotlin.Metadata;

/* JADX INFO: compiled from: UnityAdsConstants.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\f\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u001eB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0013X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0013X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0013X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0013X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0013X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0013X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/ironsource/adapters/unityads/UnityAdsConstants;", "", "<init>", "()V", "ADAPTER_VERSION", "", "MEDIATION_NAME", "SOURCE_ID_KEY", "ZONE_ID_KEY", "AD_UNIT_ID_KEY", "BANNER_SIZE_KEY", "UADS_INIT_BLOB", "UADS_TRAITS", "TOKEN_KEY", "CONSENT_GDPR", "CONSENT_CCPA", "UNITYADS_COPPA", "UNITYADS_METADATA_COPPA_KEY", "UNITYADS_NO_FILL_ERROR_CODE", "", "BANNER_SIZE_BANNER", "BANNER_SIZE_LARGE", "BANNER_SIZE_RECTANGLE", "BANNER_SIZE_SMART", "BANNER_WIDTH", "BANNER_HEIGHT", "RECTANGLE_WIDTH", "RECTANGLE_HEIGHT", "LEADERBOARD_WIDTH", "LEADERBOARD_HEIGHT", "Logs", "unityadsadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UnityAdsConstants {
    public static final String ADAPTER_VERSION = "5.14.0";
    public static final String AD_UNIT_ID_KEY = "adUnitId";
    public static final int BANNER_HEIGHT = 50;
    public static final String BANNER_SIZE_BANNER = "BANNER";
    public static final String BANNER_SIZE_KEY = "bannerSize";
    public static final String BANNER_SIZE_LARGE = "LARGE";
    public static final String BANNER_SIZE_RECTANGLE = "RECTANGLE";
    public static final String BANNER_SIZE_SMART = "SMART";
    public static final int BANNER_WIDTH = 320;
    public static final String CONSENT_CCPA = "privacy.consent";
    public static final String CONSENT_GDPR = "gdpr.consent";
    public static final UnityAdsConstants INSTANCE = new UnityAdsConstants();
    public static final int LEADERBOARD_HEIGHT = 90;
    public static final int LEADERBOARD_WIDTH = 728;
    public static final String MEDIATION_NAME = "ironSource";
    public static final int RECTANGLE_HEIGHT = 250;
    public static final int RECTANGLE_WIDTH = 300;
    public static final String SOURCE_ID_KEY = "sourceId";
    public static final String TOKEN_KEY = "token";
    public static final String UADS_INIT_BLOB = "uads_init_blob";
    public static final String UADS_TRAITS = "traits";
    public static final String UNITYADS_COPPA = "user.nonBehavioral";
    public static final String UNITYADS_METADATA_COPPA_KEY = "unityads_coppa";
    public static final int UNITYADS_NO_FILL_ERROR_CODE = 52100;
    public static final String ZONE_ID_KEY = "zoneId";

    /* JADX INFO: compiled from: UnityAdsConstants.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0010\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/ironsource/adapters/unityads/UnityAdsConstants$Logs;", "", "<init>", "()V", "SOURCE_ID", "", "ZONE_ID", "MISSING_PARAM", "NETWORK_ADAPTER_IS_NULL", "INIT_FAILED", "SDK_INIT_FAILED", "META_DATA_SET", "CCPA", "COPPA", "CONSENT", "FAILED_TO_LOAD", "FAILED_TO_SHOW", "AD_NOT_AVAILABLE", "UNSUPPORTED_BANNER_SIZE", "TOKEN", "TOKEN_FAILURE", "unityadsadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Logs {
        public static final String AD_NOT_AVAILABLE = "Ad is not available";
        public static final String CCPA = "ccpa = %s";
        public static final String CONSENT = "consent = %s";
        public static final String COPPA = "coppa = %s";
        public static final String FAILED_TO_LOAD = "Failed to load, errorCode = %s, errorMessage = %s";
        public static final String FAILED_TO_SHOW = "Failed to show, errorCode = %s, errorMessage = %s";
        public static final String INIT_FAILED = "init failed, errorCode = %s, errorMessage = %s";
        public static final Logs INSTANCE = new Logs();
        public static final String META_DATA_SET = "key = %s, value = %s";
        public static final String MISSING_PARAM = "Missing params - %s";
        public static final String NETWORK_ADAPTER_IS_NULL = "Network adapter is null";
        public static final String SDK_INIT_FAILED = "UnityAds SDK init failed";
        public static final String SOURCE_ID = "sourceId = %s";
        public static final String TOKEN = "token = %s";
        public static final String TOKEN_FAILURE = "failed to receive token - UnityAds";
        public static final String UNSUPPORTED_BANNER_SIZE = "Banner size is not supported";
        public static final String ZONE_ID = "zoneId = %s";

        private Logs() {
        }
    }

    private UnityAdsConstants() {
    }
}
