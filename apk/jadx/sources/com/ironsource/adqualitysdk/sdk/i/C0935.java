package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.רּ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0935 implements InvocationHandler {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f3340 = StringFog.decrypt("6rr+gMInWXjsq++g5CVaZu++6a8=\n", "jd+KxKdENgo=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0405 f3341;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Object f3342;

    public C0935(Object obj, C0405 c0405) {
        this.f3342 = obj;
        this.f3341 = c0405;
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) {
        String name = method.getName();
        if (name.hashCode() == 1622498214) {
            String str = f3340;
            if (name.equals(str)) {
                try {
                    String name2 = method.getName();
                    if (name2.hashCode() == 1622498214 && name2.equals(str)) {
                        return this.f3342;
                    }
                    return null;
                } catch (Throwable th) {
                    AbstractC1071.m2435(StringFog.decrypt("BK89diY1RCo4rg==\n", "VN1SDl9gMEM=\n"), StringFog.decrypt("9uc/349pX2fF+ibV3ShSWMb0IdmJMBZk1uEl35lp\n", "s5VNsP1JNgk=\n") + method.getName(), th, true);
                    return null;
                }
            }
        }
        try {
            this.f3341.m2085(obj, method, objArr);
        } catch (Throwable th2) {
            String strDecrypt = StringFog.decrypt("MCnQ/xJ4QIMMKA==\n", "YFu/h2stNOo=\n");
            StringBuilder sbAppend = new StringBuilder().append(StringFog.decrypt("Zat8vM7C9ZBWtmW2nI71jVS8YLbO2Lw=\n", "INkO07zinP4=\n"));
            Object obj2 = this.f3342;
            AbstractC1071.m2435(strDecrypt, sbAppend.append(obj2 != null ? obj2.toString() : StringFog.decrypt("zxaZ7w==\n", "oWP1g0+D37U=\n")).append(StringFog.decrypt("RQyrIwF9Vxg=\n", "ZWHOV2kSMyI=\n")).append(method.getName()).toString(), th2, true);
        }
        Object obj3 = this.f3342;
        if (obj3 != null) {
            return method.invoke(obj3, objArr);
        }
        if (!Object.class.equals(method.getDeclaringClass())) {
            return null;
        }
        if (objArr != null) {
            try {
                ArrayList arrayList = new ArrayList();
                for (Object obj4 : objArr) {
                    if (Proxy.isProxyClass(obj4.getClass())) {
                        arrayList.add(Proxy.getInvocationHandler(obj4));
                    } else {
                        arrayList.add(obj4);
                    }
                }
                objArr = arrayList.toArray();
            } catch (Throwable th3) {
                AbstractC1071.m2435(StringFog.decrypt("Svd3qY65AKd29g==\n", "GoUY0ffsdM4=\n"), StringFog.decrypt("2n9aLt7gc7zreUEvy+B9t+liSyDYqXu3v2xaJt8=\n", "nw0oQazAFNk=\n"), th3, true);
            }
        }
        return method.invoke(this, objArr);
    }
}
