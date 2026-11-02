package com.ironsource;

import android.adservices.measurement.MeasurementManager;
import android.content.Context;
import android.os.Build;
import android.os.ext.SdkExtensions;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.DurationKt;

/* JADX INFO: renamed from: com.ironsource.l0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3686l0 {
    public static final C3686l0 a = new C3686l0();

    private C3686l0() {
    }

    public static final int a() {
        if (Build.VERSION.SDK_INT < 30) {
            return 0;
        }
        try {
            return SdkExtensions.getExtensionVersion(DurationKt.NANOS_IN_MILLIS);
        } catch (Exception e) {
            C3801r4.d().a(e);
            return 0;
        }
    }

    @JvmStatic
    public static final MeasurementManager a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (Build.VERSION.SDK_INT >= 30 && a() >= 4) {
            try {
                return (MeasurementManager) context.getSystemService(MeasurementManager.class);
            } catch (Exception unused) {
            }
        }
        return null;
    }

    @JvmStatic
    public static /* synthetic */ void b() {
    }
}
