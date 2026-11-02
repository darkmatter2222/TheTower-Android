package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.services.core.properties.SdkProperties;
import java.util.Locale;
import java.util.Map;
import p005kotlin.Metadata;
import p005kotlin.TuplesKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidGetAdPlayerContext.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0000\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\tH\u0086\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidGetAdPlayerContext;", "", "deviceInfoRepository", "Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "<init>", "(Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/SessionRepository;)V", "invoke", "", "", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidGetAdPlayerContext {
    public static final String KEY_GAME_ID = "gameId";
    private final DeviceInfoRepository deviceInfoRepository;
    private final SessionRepository sessionRepository;

    public AndroidGetAdPlayerContext(DeviceInfoRepository deviceInfoRepository, SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        this.deviceInfoRepository = deviceInfoRepository;
        this.sessionRepository = sessionRepository;
    }

    public final Map<String, Object> invoke() {
        String gameId = this.sessionRepository.getGameId();
        if (gameId == null) {
            gameId = "";
        }
        return MapsKt.mapOf(TuplesKt.to("bundleId", this.deviceInfoRepository.getAppName()), TuplesKt.to("bundleVersion", this.deviceInfoRepository.getBundleVersion()), TuplesKt.to("webviewHash", "unknown"), TuplesKt.to("sdkVersion", Integer.valueOf(SdkProperties.getVersionCode())), TuplesKt.to("sdkVersionName", SdkProperties.getVersionName()), TuplesKt.to("osVersion", this.deviceInfoRepository.getOsVersion()), TuplesKt.to("systemLanguage", Locale.getDefault().toString()), TuplesKt.to("deviceModel", this.deviceInfoRepository.getModel()), TuplesKt.to("limitAdTracking", Boolean.valueOf(this.deviceInfoRepository.getLimitedTracking())), TuplesKt.to("maxVolume", Double.valueOf(this.deviceInfoRepository.getMaxVolume())), TuplesKt.to(KEY_GAME_ID, gameId));
    }
}
