package com.facebook.ads.redexgen.X;

import java.lang.reflect.Proxy;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.jU, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2654jU {
    public static <T> T A00(T t, Class<T> cls) {
        ClassLoader classLoader = t.getClass().getClassLoader();
        return cls.cast(Proxy.newProxyInstance(classLoader, new Class[]{cls}, new C2653jT(t, classLoader)));
    }
}
