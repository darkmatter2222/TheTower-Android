package com.unity3d.ads;

import android.app.Activity;
import android.content.Context;
import com.google.protobuf.ByteString;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.metadata.MetaData;
import com.unity3d.services.core.properties.ClientProperties;
import java.util.Map;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ShowActivityResolver.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a6\u0010\u0000\u001a\u0004\u0018\u00010\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0000\u001a&\u0010\u000b\u001a\u00020\f2\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00012\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0000¨\u0006\u000f"}, d2 = {"resolveEffectiveActivity", "Landroid/app/Activity;", "context", "Landroid/content/Context;", "trackedActivity", "adObject", "Lcom/unity3d/ads/core/data/model/AdObject;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "commitExtras", "", "configuration", "Lcom/unity3d/ads/ShowConfiguration;", "unity-ads_defaultRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ShowActivityResolverKt {
    public static final void commitExtras(Context context, Activity activity, ShowConfiguration showConfiguration) {
        Map<String, String> extras;
        if (context == null) {
            context = activity != null ? activity : ClientProperties.getApplicationContext();
        }
        if (context != null) {
            MetaData metaData = new MetaData(context);
            if (showConfiguration != null && (extras = showConfiguration.getExtras()) != null) {
                for (Map.Entry<String, String> entry : extras.entrySet()) {
                    metaData.set(entry.getKey(), entry.getValue());
                }
            }
            metaData.commit();
        }
    }

    public static final Activity resolveEffectiveActivity(Context context, Activity activity, AdObject adObject, SendDiagnosticEvent sendDiagnosticEvent, SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Activity activity2 = context instanceof Activity ? (Activity) context : null;
        if (activity2 != null && !activity2.isDestroyed()) {
            if (activity != activity2) {
                SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_show_activity_mismatch", (Double) null, (Map) null, (Map) null, adObject, (Integer) null, (ByteString) null, (MediationInfo) null, 238, (Object) null);
            }
            return activity2;
        }
        if (!sessionRepository.getNativeConfiguration().getFeatureFlags().getUseCurrentActivityForShow()) {
            return null;
        }
        if (activity == null) {
            SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_show_current_activity_null", (Double) null, (Map) null, (Map) null, adObject, (Integer) null, (ByteString) null, (MediationInfo) null, 238, (Object) null);
        }
        return activity;
    }
}
