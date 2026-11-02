package com.ironsource;

import java.lang.reflect.Method;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.o4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3744o4 {
    private final boolean b() {
        return true;
    }

    private final boolean c() {
        try {
            Class.forName("kotlinx.coroutines.test.TestScope");
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private final boolean d() {
        try {
            Method[] declaredMethods = Class.forName("kotlinx.coroutines.flow.FlowKt").getDeclaredMethods();
            Intrinsics.checkNotNullExpressionValue(declaredMethods, "getDeclaredMethods(...)");
            for (Method method : declaredMethods) {
                if (Intrinsics.areEqual(method.getName(), "chunked") && method.getParameterCount() == 2) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public final String a() {
        if (d()) {
            return "1.9.0+";
        }
        if (c()) {
            return "1.6.0-1.8.x";
        }
        return b() ? "1.3.0-1.5.x" : "<1.3.0";
    }
}
