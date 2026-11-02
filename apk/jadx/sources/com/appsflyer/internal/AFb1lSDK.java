package com.appsflyer.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.os.Bundle;
import com.appsflyer.AFLogger;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
final class AFb1lSDK implements Application.ActivityLifecycleCallbacks {
    private volatile boolean AFAdRevenueData;
    private final Runnable component1;
    private ScheduledFuture<?> component4;
    private final AFa1rSDK getCurrencyIso4217Code;
    private final ScheduledExecutorService getMediationNetwork;
    private final AFi1kSDK getMonetizationNetwork;
    final AFb1aSDK.AFa1ySDK getRevenue;

    public AFb1lSDK(ScheduledExecutorService scheduledExecutorService, AFa1rSDK aFa1rSDK, AFi1kSDK aFi1kSDK, AFb1aSDK.AFa1ySDK aFa1ySDK) {
        Intrinsics.checkNotNullParameter(scheduledExecutorService, "");
        Intrinsics.checkNotNullParameter(aFa1rSDK, "");
        Intrinsics.checkNotNullParameter(aFi1kSDK, "");
        Intrinsics.checkNotNullParameter(aFa1ySDK, "");
        this.getMediationNetwork = scheduledExecutorService;
        this.getCurrencyIso4217Code = aFa1rSDK;
        this.getMonetizationNetwork = aFi1kSDK;
        this.getRevenue = aFa1ySDK;
        this.component1 = new Runnable() { // from class: com.appsflyer.internal.AFb1lSDK$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AFb1lSDK.getRevenue(this.f$0);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getMediationNetwork(AFb1lSDK aFb1lSDK, Activity activity) {
        Object objM3022constructorimpl;
        Intrinsics.checkNotNullParameter(aFb1lSDK, "");
        Intrinsics.checkNotNullParameter(activity, "");
        try {
            Result.Companion companion = Result.INSTANCE;
            aFb1lSDK.getRevenue.getMonetizationNetwork(new AFh1rSDK(activity, aFb1lSDK.getMonetizationNetwork));
            objM3022constructorimpl = Result.m3022constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(objM3022constructorimpl);
        if (thM3025exceptionOrNullimpl != null) {
            AFLogger.afErrorLog("Listener thrown an exception: ", thM3025exceptionOrNullimpl, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getRevenue(AFb1lSDK aFb1lSDK) {
        Object objM3022constructorimpl;
        Intrinsics.checkNotNullParameter(aFb1lSDK, "");
        aFb1lSDK.AFAdRevenueData = false;
        try {
            Result.Companion companion = Result.INSTANCE;
            aFb1lSDK.getRevenue.getMediationNetwork();
            objM3022constructorimpl = Result.m3022constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(objM3022constructorimpl);
        if (thM3025exceptionOrNullimpl != null) {
            AFLogger.afErrorLog("Background task failed with a throwable: ", thM3025exceptionOrNullimpl);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.checkNotNullParameter(activity, "");
        AFa1rSDK aFa1rSDK = this.getCurrencyIso4217Code;
        Intent intent = activity.getIntent();
        if (((intent == null || !"android.intent.action.VIEW".equals(intent.getAction())) ? null : intent.getData()) != null && intent != aFa1rSDK.getCurrencyIso4217Code) {
            aFa1rSDK.getCurrencyIso4217Code = intent;
        }
        this.getMonetizationNetwork.getMonetizationNetwork(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "");
        if (this.AFAdRevenueData) {
            ScheduledExecutorService scheduledExecutorService = this.getMediationNetwork;
            Runnable runnable = this.component1;
            AFb1aSDK.Companion companion = AFb1aSDK.INSTANCE;
            this.component4 = scheduledExecutorService.schedule(runnable, AFb1aSDK.Companion.getRevenue(), TimeUnit.MILLISECONDS);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(final Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "");
        if (!this.AFAdRevenueData) {
            this.AFAdRevenueData = true;
            this.getMediationNetwork.execute(new Runnable() { // from class: com.appsflyer.internal.AFb1lSDK$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    AFb1lSDK.getMediationNetwork(this.f$0, activity);
                }
            });
        } else {
            ScheduledFuture<?> scheduledFuture = this.component4;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        Intrinsics.checkNotNullParameter(activity, "");
        Intrinsics.checkNotNullParameter(bundle, "");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "");
    }
}
