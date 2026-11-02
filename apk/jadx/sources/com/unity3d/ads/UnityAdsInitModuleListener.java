package com.unity3d.ads;

import java.util.Map;
import p005kotlin.Metadata;

/* JADX INFO: compiled from: UnityAdsInitModuleListener.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\bf\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fJ\b\u0010\u0002\u001a\u00020\u0003H&J\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0007H&J$\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0007H&J\u0018\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&¨\u0006\u0010"}, d2 = {"Lcom/unity3d/ads/UnityAdsInitModuleListener;", "", "moduleName", "", "initParams", "", "extraData", "", "onSuccess", "", "config", "onFailure", "reason", "errorCode", "", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface UnityAdsInitModuleListener {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;
    public static final int ERROR_INITIALIZATION_FAILED = 1;
    public static final int ERROR_INTERNAL = 3;
    public static final int ERROR_NO_CONFIG = 2;

    /* JADX INFO: compiled from: UnityAdsInitModuleListener.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/unity3d/ads/UnityAdsInitModuleListener$Companion;", "", "<init>", "()V", "ERROR_INITIALIZATION_FAILED", "", "ERROR_NO_CONFIG", "ERROR_INTERNAL", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final int ERROR_INITIALIZATION_FAILED = 1;
        public static final int ERROR_INTERNAL = 3;
        public static final int ERROR_NO_CONFIG = 2;

        private Companion() {
        }
    }

    byte[] initParams(Map<String, ? extends Object> extraData);

    String moduleName();

    void onFailure(String reason, int errorCode);

    void onSuccess(byte[] config, Map<String, ? extends Object> extraData);
}
