package com.unity3d.ads.core.domain.work;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import com.google.android.gms.ads.RequestConfiguration;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BackgroundWorker.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001d\u0010\n\u001a\u00020\u000b\"\n\b\u0000\u0010\f\u0018\u0001*\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0086\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0011"}, d2 = {"Lcom/unity3d/ads/core/domain/work/BackgroundWorker;", "", "applicationContext", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "workManager", "Landroidx/work/WorkManager;", "getWorkManager", "()Landroidx/work/WorkManager;", "invoke", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lcom/unity3d/ads/core/domain/work/UniversalRequestJob;", "universalRequestWorkerData", "Lcom/unity3d/ads/core/domain/work/UniversalRequestWorkerData;", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BackgroundWorker {
    public static final String TAG = "UnityAdsBackgroundWorker";
    private final WorkManager workManager;

    public BackgroundWorker(Context applicationContext) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        WorkManager workManager = WorkManager.getInstance(applicationContext);
        Intrinsics.checkNotNullExpressionValue(workManager, "getInstance(...)");
        this.workManager = workManager;
    }

    public final WorkManager getWorkManager() {
        return this.workManager;
    }

    public final /* synthetic */ <T extends UniversalRequestJob> void invoke(UniversalRequestWorkerData universalRequestWorkerData) {
        Intrinsics.checkNotNullParameter(universalRequestWorkerData, "universalRequestWorkerData");
        Intrinsics.reifiedOperationMarker(4, RequestConfiguration.MAX_AD_CONTENT_RATING_T);
        OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(ListenableWorker.class).setInputData(universalRequestWorkerData.invoke()).addTag(TAG).build();
        Intrinsics.checkNotNullExpressionValue(oneTimeWorkRequestBuild, "build(...)");
        getWorkManager().enqueue(oneTimeWorkRequestBuild);
    }
}
