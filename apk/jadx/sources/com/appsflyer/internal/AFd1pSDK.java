package com.appsflyer.internal;

import java.util.ArrayList;
import p005kotlin.ExceptionsKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
public final class AFd1pSDK {
    public static final AFc1cSDK AFAdRevenueData(Throwable th, String str) {
        Intrinsics.checkNotNullParameter(th, "");
        Intrinsics.checkNotNullParameter(str, "");
        Intrinsics.checkNotNullParameter(th, "");
        String name = th.getClass().getName();
        Intrinsics.checkNotNullExpressionValue(name, "");
        return new AFc1cSDK(name + ": " + str, getRevenue(th), ExceptionsKt.stackTraceToString(th), 0, 8, null);
    }

    private static String getRevenue(Throwable th) {
        Intrinsics.checkNotNullParameter(th, "");
        Intrinsics.checkNotNullParameter(th, "");
        Intrinsics.checkNotNullParameter(th, "");
        StackTraceElement[] stackTrace = th.getStackTrace();
        Intrinsics.checkNotNullExpressionValue(stackTrace, "");
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : stackTrace) {
            String className = stackTraceElement.getClassName();
            Intrinsics.checkNotNullExpressionValue(className, "");
            if (!StringsKt.startsWith$default(className, "com.appsflyer", false, 2, (Object) null)) {
                stackTraceElement = null;
            }
            if (stackTraceElement != null) {
                arrayList.add(stackTraceElement);
            }
        }
        String str = th + "\n" + CollectionsKt.joinToString$default(arrayList, "\n", null, null, 0, null, new Function1<StackTraceElement, CharSequence>() { // from class: com.appsflyer.internal.AFd1pSDK.2
            @Override // p005kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: AFAdRevenueData, reason: merged with bridge method [inline-methods] */
            public final CharSequence invoke(StackTraceElement stackTraceElement2) {
                Intrinsics.checkNotNullParameter(stackTraceElement2, "");
                return "at " + stackTraceElement2;
            }
        }, 30, null);
        Intrinsics.checkNotNullParameter(str, "");
        return AFd1rSDK.AFAdRevenueData(str, "SHA-256");
    }
}
