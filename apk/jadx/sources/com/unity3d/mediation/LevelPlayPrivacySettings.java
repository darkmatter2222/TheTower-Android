package com.unity3d.mediation;

import com.ironsource.C3769pb;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.Map;
import p005kotlin.Deprecated;
import p005kotlin.DeprecationLevel;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class LevelPlayPrivacySettings {
    public static final LevelPlayPrivacySettings INSTANCE = new LevelPlayPrivacySettings();

    private LevelPlayPrivacySettings() {
    }

    @JvmStatic
    public static final void setCCPA(boolean z) {
        IronLog.API.info("LevelPlayPrivacySettings.setCCPA() value: " + z);
        C3769pb.d.a().a(z);
    }

    @JvmStatic
    public static final void setCOPPA(boolean z) {
        IronLog.API.info("LevelPlayPrivacySettings.setCOPPA() value: " + z);
        C3769pb.d.a().b(z);
    }

    @JvmStatic
    public static final void setGDPRConsent(boolean z) {
        IronLog.API.info("LevelPlayPrivacySettings.setGDPRConsent() consent: " + z);
        C3769pb.d.a().c(z);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Use LevelPlayPrivacySettings.setGDPRConsent() for GDPR consent management.")
    @JvmStatic
    public static final void setGDPRConsents(Map<String, Boolean> networkConsents) {
        Intrinsics.checkNotNullParameter(networkConsents, "networkConsents");
        IronLog.API.info("LevelPlayPrivacySettings.setGDPRConsents() networkConsents: " + networkConsents);
        C3769pb.d.a().a(networkConsents);
    }
}
