package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.model.InitializationConfigurationInternal;
import com.unity3d.ads.core.data.repository.SessionRepository;
import java.util.Map;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidGetIsModulesInitEnabled.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0000\u0018\u0000 \b2\u00020\u0001:\u0001\bB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\u0006\u001a\u00020\u0007H\u0096\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidGetIsModulesInitEnabled;", "Lcom/unity3d/ads/core/domain/GetIsModulesInitEnabled;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "<init>", "(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V", "invoke", "", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidGetIsModulesInitEnabled implements GetIsModulesInitEnabled {
    public static final String ENABLE_MODULES_INIT_KEY = "enable_modules_init";
    public static final String ENABLE_MODULES_INIT_VALUE = "true";
    private final SessionRepository sessionRepository;

    public AndroidGetIsModulesInitEnabled(SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        this.sessionRepository = sessionRepository;
    }

    @Override // com.unity3d.ads.core.domain.GetIsModulesInitEnabled
    public boolean invoke() {
        Map<String, String> extras;
        InitializationConfigurationInternal initializationConfiguration = this.sessionRepository.getInitializationConfiguration();
        return Intrinsics.areEqual((initializationConfiguration == null || (extras = initializationConfiguration.getExtras()) == null) ? null : extras.get(ENABLE_MODULES_INIT_KEY), "true");
    }
}
