package com.unity3d.player;

import java.lang.invoke.MethodHandles;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/* JADX INFO: renamed from: com.unity3d.player.r, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C4136r implements InvocationHandler {
    public final RunnableC4142u a;
    public final UnityPlayer b;
    public final long c;
    public final /* synthetic */ long d;

    public C4136r(long j, UnityPlayer unityPlayer) {
        this.d = j;
        long j2 = ReflectionHelper.b;
        this.a = new RunnableC4142u(j2, j);
        this.b = unityPlayer;
        this.c = j2;
    }

    public static Object a(Object obj, Method method, Object[] objArr, C4140t c4140t) {
        try {
            if (objArr == null) {
                try {
                    objArr = new Object[0];
                } catch (NoClassDefFoundError unused) {
                    com.unity3d.player.a.t.Log(6, "Java interface default methods are only supported since Android Oreo");
                    ReflectionHelper.nativeProxyLogJNIInvokeException(c4140t.a);
                    c4140t.a = 0L;
                    return null;
                }
            }
            Class<?> declaringClass = method.getDeclaringClass();
            Constructor declaredConstructor = MethodHandles.Lookup.class.getDeclaredConstructor(Class.class, Integer.TYPE);
            declaredConstructor.setAccessible(true);
            Object objInvokeWithArguments = ((MethodHandles.Lookup) declaredConstructor.newInstance(declaringClass, 2)).in(declaringClass).unreflectSpecial(method, declaringClass).bindTo(obj).invokeWithArguments(objArr);
            long j = c4140t.a;
            if (j != 0) {
                ReflectionHelper.nativeProxyJNIFreeGCHandle(j);
            }
            return objInvokeWithArguments;
        } catch (Throwable th) {
            long j2 = c4140t.a;
            if (j2 != 0) {
                ReflectionHelper.nativeProxyJNIFreeGCHandle(j2);
            }
            throw th;
        }
    }

    public void finalize() throws Throwable {
        this.b.invokeOnMainThread(this.a);
        super.finalize();
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) {
        if (!ReflectionHelper.beginProxyCall(this.c)) {
            com.unity3d.player.a.t.Log(6, "Scripting proxy object was destroyed, because Unity player was unloaded.");
            return null;
        }
        try {
            Object objNativeProxyInvoke = ReflectionHelper.nativeProxyInvoke(this.d, method.getName(), objArr);
            if (!(objNativeProxyInvoke instanceof C4140t)) {
                return objNativeProxyInvoke;
            }
            C4140t c4140t = (C4140t) objNativeProxyInvoke;
            if (c4140t.b && (method.getModifiers() & 1024) == 0) {
                return a(obj, method, objArr, c4140t);
            }
            ReflectionHelper.nativeProxyLogJNIInvokeException(c4140t.a);
            return null;
        } finally {
            ReflectionHelper.endProxyCall();
        }
    }
}
