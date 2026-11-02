package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.coherence.CoherenceLibraryManager;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidGetUniversalRequestCommonAttributes.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0013\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bH\u0096\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidGetUniversalRequestCommonAttributes;", "Lcom/unity3d/ads/core/domain/GetUniversalRequestCommonAttributes;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "coherenceLibraryManager", "Lcom/unity3d/ads/core/domain/coherence/CoherenceLibraryManager;", "<init>", "(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/coherence/CoherenceLibraryManager;)V", "invoke", "Lcom/google/protobuf/ByteString;", "isInitializationRequest", "", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidGetUniversalRequestCommonAttributes implements GetUniversalRequestCommonAttributes {
    private final CoherenceLibraryManager coherenceLibraryManager;
    private final SessionRepository sessionRepository;

    public AndroidGetUniversalRequestCommonAttributes(SessionRepository sessionRepository, CoherenceLibraryManager coherenceLibraryManager) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(coherenceLibraryManager, "coherenceLibraryManager");
        this.sessionRepository = sessionRepository;
        this.coherenceLibraryManager = coherenceLibraryManager;
    }

    @Override // com.unity3d.ads.core.domain.GetUniversalRequestCommonAttributes
    public ByteString invoke(boolean isInitializationRequest) {
        if (!this.sessionRepository.getNativeConfiguration().getFeatureFlags().getEnableDataLibraryRequestAttributes()) {
            return null;
        }
        byte[] commonAttributes = this.coherenceLibraryManager.getCommonAttributes(!isInitializationRequest ? 1 : 0);
        if (commonAttributes != null) {
            return ByteString.copyFrom(commonAttributes);
        }
        return null;
    }
}
