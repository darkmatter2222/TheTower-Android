package com.ironsource;

import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import android.os.Build;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.logger.IronLog;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.vd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3884vd implements InterfaceC3944z1 {
    public static final C3884vd a = new C3884vd();
    private static final int b = 0;
    private static final int c = 0;

    private C3884vd() {
    }

    private final List<A1> a(Context context) {
        Object systemService = context.getSystemService("activity");
        ActivityManager activityManager = systemService instanceof ActivityManager ? (ActivityManager) systemService : null;
        if (activityManager == null) {
            return CollectionsKt.emptyList();
        }
        try {
            List<ApplicationExitInfo> historicalProcessExitReasons = activityManager.getHistoricalProcessExitReasons(context.getPackageName(), 0, 0);
            Intrinsics.checkNotNullExpressionValue(historicalProcessExitReasons, "getHistoricalProcessExitReasons(...)");
            ArrayList<ApplicationExitInfo> arrayList = new ArrayList();
            for (Object obj : historicalProcessExitReasons) {
                if (((ApplicationExitInfo) obj).getReason() != 5) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
            for (ApplicationExitInfo applicationExitInfo : arrayList) {
                C3884vd c3884vd = a;
                Intrinsics.checkNotNull(applicationExitInfo);
                arrayList2.add(c3884vd.b(applicationExitInfo));
            }
            return arrayList2;
        } catch (Throwable th) {
            IronLog.INTERNAL.error("anr reporter: failed to read exit reasons: " + th);
            return CollectionsKt.emptyList();
        }
    }

    private final StackTraceElement[] a(ApplicationExitInfo applicationExitInfo) {
        StackTraceElement[] stackTraceElementArrA;
        try {
            InputStream traceInputStream = applicationExitInfo.getTraceInputStream();
            if (traceInputStream != null && (stackTraceElementArrA = E1.a.a(traceInputStream)) != null) {
                return stackTraceElementArrA;
            }
            return new StackTraceElement[0];
        } catch (Throwable th) {
            IronLog.INTERNAL.error("anr reporter: failed to read trace: " + th);
            return new StackTraceElement[0];
        }
    }

    private final A1 b(final ApplicationExitInfo applicationExitInfo) {
        long timestamp = applicationExitInfo.getTimestamp();
        int importance = applicationExitInfo.getImportance();
        String description = applicationExitInfo.getDescription();
        if (description == null) {
            description = "";
        }
        int reason = applicationExitInfo.getReason();
        boolean z = applicationExitInfo.getReason() == 6;
        String processName = applicationExitInfo.getProcessName();
        Intrinsics.checkNotNullExpressionValue(processName, "getProcessName(...)");
        return new A1(timestamp, importance, description, reason, z, processName, new Function0() { // from class: com.ironsource.vd$$ExternalSyntheticLambda0
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return C3884vd.c(applicationExitInfo);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final StackTraceElement[] c(ApplicationExitInfo applicationExitInfo) {
        return a.a(applicationExitInfo);
    }

    @Override // com.ironsource.InterfaceC3944z1
    public List<A1> a() {
        Context applicationContext;
        if (Build.VERSION.SDK_INT >= 30 && (applicationContext = ContextProvider.getInstance().getApplicationContext()) != null) {
            return a(applicationContext);
        }
        return CollectionsKt.emptyList();
    }
}
