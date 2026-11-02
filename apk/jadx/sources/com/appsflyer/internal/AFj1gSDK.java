package com.appsflyer.internal;

import com.android.billingclient.BuildConfig;
import java.lang.reflect.Field;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class AFj1gSDK implements AFj1jSDK {
    @Override // com.appsflyer.internal.AFj1jSDK
    public final String getRevenue() {
        Object objM3022constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            AFj1gSDK aFj1gSDK = this;
            Field declaredField = BuildConfig.class.getDeclaredField("VERSION_NAME");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(null);
            Intrinsics.checkNotNull(obj, "");
            objM3022constructorimpl = Result.m3022constructorimpl((String) obj);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        return (String) (Result.m3028isFailureimpl(objM3022constructorimpl) ? "" : objM3022constructorimpl);
    }
}
