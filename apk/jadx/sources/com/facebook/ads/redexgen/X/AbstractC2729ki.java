package com.facebook.ads.redexgen.X;

import java.lang.reflect.Method;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ki, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2729ki {
    public static Object A00(Object obj, Method method, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (Exception unused) {
            return null;
        }
    }

    public static Method A01(Class<?> cls, String str, Class<?>... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public static Method A02(String str, String str2, Class<?>... clsArr) {
        try {
            return A01(Class.forName(str), str2, clsArr);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}
