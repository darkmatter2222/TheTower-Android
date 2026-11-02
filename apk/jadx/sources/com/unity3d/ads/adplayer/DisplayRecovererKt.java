package com.unity3d.ads.adplayer;

import android.content.Context;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.repository.FocusRepository;
import com.unity3d.ads.core.data.repository.OrientationRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DisplayRecoverer.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a0\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0000¨\u0006\f"}, d2 = {"displayRecovererFactory", "Lcom/unity3d/ads/adplayer/DisplayRecovererFactory;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "focusRepository", "Lcom/unity3d/ads/core/data/repository/FocusRepository;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "context", "Landroid/content/Context;", "orientationRepository", "Lcom/unity3d/ads/core/data/repository/OrientationRepository;", "unity-ads_defaultRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class DisplayRecovererKt {
    public static final DisplayRecovererFactory displayRecovererFactory(final SessionRepository sessionRepository, final FocusRepository focusRepository, final SendDiagnosticEvent sendDiagnosticEvent, final Context context, final OrientationRepository orientationRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(focusRepository, "focusRepository");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(orientationRepository, "orientationRepository");
        return new DisplayRecovererFactory() { // from class: com.unity3d.ads.adplayer.DisplayRecovererKt$$ExternalSyntheticLambda0
            @Override // com.unity3d.ads.adplayer.DisplayRecovererFactory
            public final DisplayRecoverer create(String str, AdObject adObject, AndroidShowOptions androidShowOptions, CoroutineScope coroutineScope) {
                return DisplayRecovererKt.displayRecovererFactory$lambda$1(sessionRepository, focusRepository, sendDiagnosticEvent, context, orientationRepository, str, adObject, androidShowOptions, coroutineScope);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisplayRecoverer displayRecovererFactory$lambda$1(SessionRepository sessionRepository, FocusRepository focusRepository, SendDiagnosticEvent sendDiagnosticEvent, Context context, OrientationRepository orientationRepository, String opportunityId, AdObject adObject, AndroidShowOptions showOptions, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
        Intrinsics.checkNotNullParameter(showOptions, "showOptions");
        Intrinsics.checkNotNullParameter(scope, "scope");
        if (!sessionRepository.getFeatureFlags().getRecoverFullscreenDisplayEnabled()) {
            return null;
        }
        DisplayRecoverer displayRecoverer = new DisplayRecoverer(opportunityId, adObject, sessionRepository, focusRepository, sendDiagnosticEvent, context, orientationRepository, showOptions);
        displayRecoverer.start(scope);
        return displayRecoverer;
    }
}
