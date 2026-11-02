package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｨ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC1059 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final String f3785 = StringFog.decrypt("GQfPEq0CLpMkDPwKoQ0p\n", "S2KpfshhWvo=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static final ConcurrentHashMap f3784 = new ConcurrentHashMap();

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Method m2426(Class cls, String str, List list, boolean z) {
        for (Method method : cls.getMethods()) {
            if (method.getName().equals(str) && method.getParameterTypes().length == list.size() && Modifier.isStatic(method.getModifiers()) == z && m2430(method.getParameterTypes(), list)) {
                return method;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.reflect.Method] */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Method m2427(Object obj, String str, ArrayList arrayList) {
        try {
            Class<?>[] clsArr = new Class[arrayList.size()];
            for (int i = 0; i < arrayList.size(); i++) {
                clsArr[i] = (Class) arrayList.get(i);
            }
            if (!(obj instanceof Class)) {
                return obj.getClass().getMethod(str, clsArr);
            }
            try {
                obj = ((Class) obj).getMethod(str, clsArr);
                return obj;
            } catch (NoSuchMethodException unused) {
                return Class.class.getMethod(str, clsArr);
            }
        } catch (NoSuchMethodException e) {
            AbstractC0991.m2386(f3785, AbstractC0662.m2192("ohNk8Q==\n", "7HxE1lmCGVg=\n", new StringBuilder(), str).append(StringFog.decrypt("65JauHB98x3s1FioanG8H6PAFw==\n", "zLI33QQVnHk=\n")).append(obj).toString(), e, null);
            return null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Method m2428(Object obj, String str, List list) {
        Method methodM2426;
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : list) {
            if (obj2 != null) {
                arrayList.add(obj2.getClass());
            } else {
                arrayList.add(Object.class);
            }
        }
        C0159 c0159 = new C0159(obj, str, arrayList);
        ConcurrentHashMap concurrentHashMap = f3784;
        Method method = (Method) concurrentHashMap.get(c0159);
        if (method != null) {
            if (m2430(method.getParameterTypes(), list)) {
                return method;
            }
            AbstractC0991.m2386(f3785, StringFog.decrypt("93K8SkNUcOrGdKdLVlR07tFoq0ERGXL72m+qBQ==\n", "sgDOJTF0F48=\n") + c0159, null, null);
        }
        if (obj instanceof Class) {
            methodM2426 = m2426((Class) obj, str, list, true);
            if (methodM2426 == null) {
                methodM2426 = m2426(Class.class.getClass(), str, list, false);
            }
        } else {
            methodM2426 = m2426(obj.getClass(), str, list, false);
        }
        if (methodM2426 != null) {
            concurrentHashMap.put(c0159, methodM2426);
        }
        return methodM2426;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static boolean m2429(Class cls, List list) {
        if (list == null || list.isEmpty()) {
            return true;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if ((str.equals("") && (cls.getPackage() == null || cls.getPackage().getName().equals(""))) || (!str.equals("") && cls.getName().startsWith(str))) {
                return true;
            }
        }
        return !AbstractC1059.class.getName().startsWith(StringFog.decrypt("f/g82+RlVl1v+CSH7nIXUnjmJJThfk1K\n", "HJdR9Y0XOTM=\n")) && ((AbstractC1059.class.getPackage() == null && cls.getPackage() == null) || (AbstractC1059.class.getPackage() != null && AbstractC1059.class.getPackage().equals(cls.getPackage())));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static boolean m2430(Class[] clsArr, List list) {
        int i = 0;
        while (true) {
            boolean zIsAssignableFrom = true;
            if (i >= clsArr.length) {
                return true;
            }
            Object obj = list.get(i);
            if (obj != null || Object.class.isAssignableFrom(clsArr[i])) {
                if (obj != null) {
                    Class cls = clsArr[i];
                    Class<?> cls2 = obj.getClass();
                    if (!cls.isAssignableFrom(Byte.TYPE) || !cls2.isAssignableFrom(Byte.class)) {
                        Class<?> cls3 = Short.TYPE;
                        if ((!cls.isAssignableFrom(cls3) || !cls2.isAssignableFrom(Short.class)) && (!cls.isAssignableFrom(cls3) || !cls2.isAssignableFrom(Byte.class))) {
                            Class<?> cls4 = Integer.TYPE;
                            if ((!cls.isAssignableFrom(cls4) || !cls2.isAssignableFrom(Integer.class)) && ((!cls.isAssignableFrom(cls4) || !cls2.isAssignableFrom(Short.class)) && (!cls.isAssignableFrom(cls4) || !cls2.isAssignableFrom(Byte.class)))) {
                                Class<?> cls5 = Long.TYPE;
                                if ((!cls.isAssignableFrom(cls5) || !cls2.isAssignableFrom(Long.class)) && ((!cls.isAssignableFrom(cls5) || !cls2.isAssignableFrom(Integer.class)) && ((!cls.isAssignableFrom(cls5) || !cls2.isAssignableFrom(Short.class)) && (!cls.isAssignableFrom(cls5) || !cls2.isAssignableFrom(Byte.class))))) {
                                    Class<?> cls6 = Float.TYPE;
                                    if ((!cls.isAssignableFrom(cls6) || !cls2.isAssignableFrom(Float.class)) && ((!cls.isAssignableFrom(cls6) || !cls2.isAssignableFrom(Long.class)) && ((!cls.isAssignableFrom(cls6) || !cls2.isAssignableFrom(Integer.class)) && ((!cls.isAssignableFrom(cls6) || !cls2.isAssignableFrom(Short.class)) && (!cls.isAssignableFrom(cls6) || !cls2.isAssignableFrom(Byte.class)))))) {
                                        Class<?> cls7 = Double.TYPE;
                                        if ((!cls.isAssignableFrom(cls7) || !cls2.isAssignableFrom(Double.class)) && ((!cls.isAssignableFrom(cls7) || !cls2.isAssignableFrom(Float.class)) && ((!cls.isAssignableFrom(cls7) || !cls2.isAssignableFrom(Long.class)) && ((!cls.isAssignableFrom(cls7) || !cls2.isAssignableFrom(Integer.class)) && ((!cls.isAssignableFrom(cls7) || !cls2.isAssignableFrom(Short.class)) && ((!cls.isAssignableFrom(cls7) || !cls2.isAssignableFrom(Byte.class)) && (!cls.isAssignableFrom(Boolean.TYPE) || !cls2.isAssignableFrom(Boolean.class)))))))) {
                                            zIsAssignableFrom = cls.isAssignableFrom(cls2);
                                        }
                                    }
                                }
                            }
                        }
                    }
                    if (!zIsAssignableFrom) {
                    }
                }
                i++;
            }
            return false;
        }
    }
}
