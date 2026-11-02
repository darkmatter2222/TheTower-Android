package com.tapjoy.internal;

import android.os.Handler;
import android.os.Looper;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/* JADX INFO: loaded from: classes5.dex */
public final class fp {

    static class a implements InvocationHandler {
        private final Object a;
        private final Thread b;
        private final Looper c;

        public a(Object obj, Thread thread, Looper looper) {
            this.a = obj;
            this.b = thread;
            this.c = looper;
        }

        @Override // java.lang.reflect.InvocationHandler
        public final Object invoke(Object obj, final Method method, final Object[] objArr) {
            if (this.b == Thread.currentThread()) {
                return method.invoke(this.a, objArr);
            }
            if (!method.getReturnType().equals(Void.TYPE)) {
                throw new UnsupportedOperationException("method not return void: " + method.getName());
            }
            Runnable runnable = new Runnable() { // from class: com.tapjoy.internal.fp.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        method.invoke(a.this.a, objArr);
                    } catch (IllegalAccessException e) {
                        throw gt.a(e);
                    } catch (IllegalArgumentException e2) {
                        throw gt.a(e2);
                    } catch (InvocationTargetException e3) {
                        throw gt.a(e3);
                    }
                }
            };
            if (this.c != null && new Handler(this.c).post(runnable)) {
                return null;
            }
            if (this.b == hb.b() && hb.a.a(runnable)) {
                return null;
            }
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper == null || !new Handler(mainLooper).post(runnable)) {
                return method.invoke(this.a, objArr);
            }
            return null;
        }
    }

    public static <T> T a(T t, Class<T> cls) {
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new a(t, Thread.currentThread(), Looper.myLooper()));
    }
}
