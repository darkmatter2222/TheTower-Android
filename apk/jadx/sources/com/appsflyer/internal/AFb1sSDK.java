package com.appsflyer.internal;

import android.os.Process;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.tapjoy.TJAdUnitConstants;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n"}, d2 = {"Lcom/appsflyer/internal/AFb1sSDK;", "", "Lcom/appsflyer/internal/AFh1jSDK;", TJAdUnitConstants.String.USAGE_TRACKER_VALUES, "<init>", "(Lcom/appsflyer/internal/AFh1jSDK;)V", "", "afInfoLog", "()V", "AFAdRevenueData", "Lcom/appsflyer/internal/AFh1jSDK;", "getRevenue"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AFb1sSDK {

    /* JADX INFO: renamed from: AFAdRevenueData, reason: from kotlin metadata */
    private final AFh1jSDK getRevenue;

    public AFb1sSDK(AFh1jSDK aFh1jSDK) {
        Intrinsics.checkNotNullParameter(aFh1jSDK, "");
        this.getRevenue = aFh1jSDK;
    }

    public final void afInfoLog() throws Throwable {
        try {
            Object declaredConstructor = AFa1jSDK.unregisterClient.get(-1660327767);
            if (declaredConstructor == null) {
                declaredConstructor = ((Class) AFa1jSDK.AFAdRevenueData(88 - View.MeasureSpec.getMode(0), (char) (1 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1))), 35 - Process.getGidForName(""))).getDeclaredConstructor(null);
                AFa1jSDK.unregisterClient.put(-1660327767, declaredConstructor);
            }
            Object objNewInstance = ((Constructor) declaredConstructor).newInstance(null);
            Object[] objArr = {this.getRevenue};
            Object method = AFa1jSDK.unregisterClient.get(290011790);
            if (method == null) {
                method = ((Class) AFa1jSDK.AFAdRevenueData((ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 87, (char) ExpandableListView.getPackedPositionGroup(0L), (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + 35)).getMethod("getMonetizationNetwork", AFh1jSDK.class);
                AFa1jSDK.unregisterClient.put(290011790, method);
            }
            ((Method) method).invoke(objNewInstance, objArr);
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause == null) {
                throw th;
            }
            throw cause;
        }
    }
}
