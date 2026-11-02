package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᔥ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0632 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String f2510 = StringFog.decrypt("I9BfDNitR5QC1lAb\n", "bLI1abvZAf0=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final HashMap f2509 = new HashMap();

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m2159(Object obj, Class cls, String str) {
        if (cls == null || cls.equals(Object.class)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Field field : cls.getDeclaredFields()) {
            if (field.getType().equals(String.class)) {
                arrayList.add(field);
            }
        }
        for (Field field2 : (Field[]) arrayList.toArray(new Field[0])) {
            field2.setAccessible(true);
            try {
                String str2 = (String) field2.get(obj);
                if (str2 != null && Pattern.compile(str).matcher(str2).matches()) {
                    return str2;
                }
            } catch (Exception unused) {
            }
        }
        return m2159(obj, cls.getSuperclass(), str);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static ArrayList m2160(Object obj, boolean z, boolean z2, boolean z3) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof Collection) && z) {
            return new ArrayList((Collection) obj);
        }
        if (obj.getClass().isArray() && z3) {
            return new ArrayList(Arrays.asList(obj));
        }
        if (!(obj instanceof Map) || !z2) {
            return null;
        }
        Map map = (Map) obj;
        ArrayList arrayList = new ArrayList(map.values());
        arrayList.addAll(map.keySet());
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x010f  */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final InterfaceC0792 m2161(C0758 c0758, C0706 c0706, int i) {
        C0758 c0759;
        boolean zMo1883;
        Object objM2263 = c0758.m2263();
        if (c0706.f2657.contains(objM2263) || c0706.f2655.contains(objM2263)) {
            return null;
        }
        if (C0724.m2254(i, c0706.f2659.f2696.f2727)) {
            try {
                zMo1883 = c0706.f2659.f2695.mo1883(c0758);
            } catch (Exception unused) {
                zMo1883 = false;
            }
            if (zMo1883) {
                if (c0706.f2656) {
                    c0706.f2654.add(c0758);
                    c0706.f2655.add(objM2263);
                }
                return c0758;
            }
        }
        if (objM2263 instanceof WeakReference) {
            WeakReference weakReference = (WeakReference) objM2263;
            if (weakReference.get() != null && C0724.m2254(i, c0706.f2659.f2696.f2724)) {
                Object obj = weakReference.get();
                if (obj != null ? AbstractC1059.m2429(obj.getClass(), c0706.f2659.f2696.f2729) : false) {
                    return m2163(weakReference.get(), c0706, i + 1, c0758);
                }
            }
        }
        if (objM2263 != null ? AbstractC1059.m2429(objM2263.getClass(), c0706.f2659.f2696.f2729) : false) {
            return m2163(objM2263, c0706, i + 1, c0758);
        }
        if (c0706.f2659.f2696.f2720 && objM2263 != null) {
            c0706.f2657.add(objM2263);
        }
        C0724 c0724 = c0706.f2659;
        ArrayList arrayListM2160 = m2160(objM2263, C0724.m2254(i, c0724.f2696.f2723), C0724.m2254(i, c0724.f2696.f2722), C0724.m2254(i, c0724.f2696.f2721));
        C0552 c0552 = c0706.f2658;
        if (arrayListM2160 == null) {
            return null;
        }
        InterfaceC0792 interfaceC0792M2161 = null;
        for (Object obj2 : arrayListM2160) {
            if (objM2263 == null) {
                c0759 = null;
            } else if (objM2263 instanceof Collection) {
                c0759 = new C0758((Collection) objM2263, obj2, c0758);
            } else if (objM2263 instanceof Map) {
                c0759 = new C0758((Map) objM2263, obj2, c0758);
            } else if (objM2263.getClass().isArray()) {
                c0759 = new C0758(new ArrayList(Arrays.asList(objM2263)), obj2, c0758);
            } else {
                c0759 = null;
            }
            int i2 = c0552.f2281 + 1;
            c0552.f2281 = i2;
            c0552.f2282.add(i2, new ArrayList());
            interfaceC0792M2161 = m2161(c0759, c0706, i);
            if (interfaceC0792M2161 != null && !c0706.f2656) {
                return interfaceC0792M2161;
            }
            c0552.f2282.remove(c0552.f2281);
            c0552.f2281--;
        }
        return interfaceC0792M2161;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0088  */
    /* JADX WARN: Code duplicated, block: B:26:0x0093 A[Catch: Exception -> 0x0045, TryCatch #0 {Exception -> 0x0045, blocks: (B:13:0x0051, B:15:0x0055, B:23:0x0089, B:24:0x008d, B:26:0x0093, B:28:0x00a5, B:30:0x00b4, B:29:0x00b0, B:32:0x00be, B:16:0x005e, B:18:0x0062, B:19:0x006b, B:21:0x0075), top: B:37:0x0051 }] */
    /* JADX WARN: Code duplicated, block: B:28:0x00a5 A[Catch: Exception -> 0x0045, TryCatch #0 {Exception -> 0x0045, blocks: (B:13:0x0051, B:15:0x0055, B:23:0x0089, B:24:0x008d, B:26:0x0093, B:28:0x00a5, B:30:0x00b4, B:29:0x00b0, B:32:0x00be, B:16:0x005e, B:18:0x0062, B:19:0x006b, B:21:0x0075), top: B:37:0x0051 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00b0 A[Catch: Exception -> 0x0045, TryCatch #0 {Exception -> 0x0045, blocks: (B:13:0x0051, B:15:0x0055, B:23:0x0089, B:24:0x008d, B:26:0x0093, B:28:0x00a5, B:30:0x00b4, B:29:0x00b0, B:32:0x00be, B:16:0x005e, B:18:0x0062, B:19:0x006b, B:21:0x0075), top: B:37:0x0051 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00be A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x0045 A[SYNTHETIC] */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final InterfaceC0792 m2162(InterfaceC0792 interfaceC0792, C0552 c0552, int i) {
        C0758 c0758;
        Object obj;
        if (i >= c0552.f2282.size()) {
            return interfaceC0792;
        }
        List<Field> list = (List) c0552.f2282.get(i);
        C0758 c0759 = (C0758) interfaceC0792;
        Object objM2263 = c0759.m2263();
        ArrayList arrayListM2160 = m2160(objM2263, true, true, true);
        if (arrayListM2160 == null) {
            AbstractC0250.m1990(this.f2510, StringFog.decrypt("nsR6lDKwih37/2WdPaGMDbLTZNE+ts80uswm0SOhjByyym+VcQ==\n", "27wK8VHE73k=\n") + objM2263.getClass());
            return null;
        }
        Iterator it = arrayListM2160.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (objM2263 != null) {
                try {
                    if (objM2263 instanceof Collection) {
                        c0758 = new C0758((Collection) objM2263, next, c0759);
                    } else if (objM2263 instanceof Map) {
                        c0758 = new C0758((Map) objM2263, next, c0759);
                    } else if (objM2263.getClass().isArray()) {
                        c0758 = new C0758(new ArrayList(Arrays.asList(objM2263)), next, c0759);
                    } else {
                        c0758 = null;
                    }
                    for (Field field : list) {
                        if (WeakReference.class.isAssignableFrom(field.getType())) {
                            obj = ((WeakReference) field.get(next)).get();
                        } else {
                            obj = field.get(next);
                        }
                        C0758 c07510 = new C0758(field, next, c0758);
                        next = obj;
                        c0758 = c07510;
                    }
                    if (c0758 != null) {
                        return m2162(c0758, c0552, i + 1);
                    }
                    continue;
                } catch (Exception unused) {
                    continue;
                }
            } else {
                c0758 = null;
                while (r7.hasNext()) {
                    if (WeakReference.class.isAssignableFrom(field.getType())) {
                        obj = ((WeakReference) field.get(next)).get();
                    } else {
                        obj = field.get(next);
                    }
                    C0758 c07511 = new C0758(field, next, c0758);
                    next = obj;
                    c0758 = c07511;
                }
                if (c0758 != null) {
                    return m2162(c0758, c0552, i + 1);
                }
                continue;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final InterfaceC0792 m2163(Object obj, C0706 c0706, int i, C0758 c0758) {
        Field[] fieldArrM2132;
        if (i != c0706.f2659.f2696.f2728 && obj != null && !c0706.f2657.contains(obj) && (i <= 0 || !(obj instanceof Activity))) {
            c0706.f2657.add(obj);
            try {
                t0 t0Var = c0706.f2659.f2694;
                if (t0Var != null) {
                    C0554 c0554 = C0793.m2275().f2975;
                    fieldArrM2132 = C0554.m2132(obj.getClass(), true, -1, t0Var.f382);
                } else {
                    Class<?> superclass = obj.getClass();
                    C0724 c0724 = c0706.f2659;
                    int i2 = C0724.m2254(i, c0724.f2696.f2726) ? c0724.f2696.f2725 : 0;
                    Field[] declaredFields = superclass.getDeclaredFields();
                    for (int i3 = 0; superclass != null && i3 != i2; i3++) {
                        superclass = superclass.getSuperclass();
                        if (superclass != null) {
                            Field[] declaredFields2 = superclass.getDeclaredFields();
                            String str = AbstractC1059.f3785;
                            int length = declaredFields.length;
                            int length2 = declaredFields2.length;
                            Field[] fieldArr = new Field[length + length2];
                            System.arraycopy(declaredFields, 0, fieldArr, 0, length);
                            System.arraycopy(declaredFields2, 0, fieldArr, length, length2);
                            declaredFields = fieldArr;
                        }
                    }
                    fieldArrM2132 = declaredFields;
                }
                C0552 c0552 = c0706.f2658;
                for (Field field : fieldArrM2132) {
                    field.setAccessible(true);
                    ((List) c0552.f2282.get(c0552.f2281)).add(field);
                    InterfaceC0792 interfaceC0792M2161 = m2161(new C0758(field, obj, c0758), c0706, i);
                    if (interfaceC0792M2161 != null && !c0706.f2656) {
                        return interfaceC0792M2161;
                    }
                    ((List) c0552.f2282.get(c0552.f2281)).remove(field);
                }
            } catch (Throwable th) {
                String str2 = this.f2510;
                AbstractC0250.m1999(str2, str2, StringFog.decrypt("JVHIeSB7YSgUV9N4NXtJLwpG2WIUMmMhBA==\n", "YCO6FlJbBk0=\n"), th, null, false);
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final InterfaceC0792 m2164(Object obj, C0724 c0724) {
        InterfaceC0792 interfaceC0792M2162;
        boolean zMo1883;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Class<?> cls = obj.getClass();
        C0735 c0735 = c0724.f2696;
        c0735.f2732 = cls;
        C0552 c0552 = (C0552) this.f2509.get(c0735);
        if (c0552 != null) {
            try {
                Object obj2 = obj;
                C0758 c0758 = null;
                for (Field field : (List) c0552.f2282.get(0)) {
                    Object obj3 = WeakReference.class.isAssignableFrom(field.getType()) ? ((WeakReference) field.get(obj2)).get() : field.get(obj2);
                    C0758 c0759 = new C0758(field, obj2, c0758);
                    obj2 = obj3;
                    c0758 = c0759;
                }
                interfaceC0792M2162 = m2162(c0758, c0552, 1);
            } catch (Exception e) {
                String str = this.f2510;
                AbstractC0250.m1999(str, str, StringFog.decrypt("qmo/kNDox1CbbCSRxejvV4V9LovkocVZizgrjc2lgEWObCU=\n", "7xhN/6LIoDU=\n"), e, null, false);
                interfaceC0792M2162 = null;
            }
            if (interfaceC0792M2162 != null) {
                try {
                    zMo1883 = c0724.f2695.mo1883(interfaceC0792M2162);
                } catch (Exception unused) {
                    zMo1883 = false;
                }
                if (zMo1883) {
                    m2165(interfaceC0792M2162, obj, AbstractC0897.m2299("u8E=\n", "1rIJSeDTjMI=\n", new StringBuilder().append(StringFog.decrypt("HYmEA6+aVt0Ui9Edqs5YjxKI0Q==\n", "e+bxbcu6MK8=\n")).append(System.currentTimeMillis() - jCurrentTimeMillis)));
                    return interfaceC0792M2162;
                }
            }
            AbstractC0250.m1990(this.f2510, obj + StringFog.decrypt("07ZcBlBIKpOA5V8=\n", "6ZYsZyQgCv4=\n"));
            this.f2509.remove(c0735);
        }
        C0706 c0706 = new C0706(c0724);
        InterfaceC0792 interfaceC0792M2163 = m2163(obj, c0706, 0, (C0758) null);
        if (interfaceC0792M2163 == null) {
            m2165((InterfaceC0792) null, obj, AbstractC0897.m2299("InLnEyuEslIidOtZPYKy\n", "Ah2FeU7nxiE=\n", new StringBuilder().append(StringFog.decrypt("Fya+VTgPJGcdaaMbfg==\n", "eUnKdV5gUQk=\n")).append(System.currentTimeMillis() - jCurrentTimeMillis).append(StringFog.decrypt("xTSX/Q==\n", "qEe73RuPBlU=\n")).append(c0706.f2657.size())));
            return null;
        }
        m2165(interfaceC0792M2163, obj, AbstractC0897.m2299("O/cDHHYnAdo78Q9WYCEB\n", "G5hhdhNEdak=\n", new StringBuilder().append(StringFog.decrypt("pM6Rz5o0CGvi\n", "wqHkof4UYQU=\n")).append(System.currentTimeMillis() - jCurrentTimeMillis).append(StringFog.decrypt("aMyFww==\n", "Bb+p43D5UmQ=\n")).append(c0706.f2657.size())));
        this.f2509.put(c0735, c0706.f2658);
        return interfaceC0792M2163;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2165(InterfaceC0792 interfaceC0792, Object obj, String str) {
        if (interfaceC0792 != null) {
            AbstractC0250.m1991(this.f2510, AbstractC0662.m2192("7qs=\n", "1Iur6KRLbI8=\n", new StringBuilder().append(obj), str).append(StringFog.decrypt("BstZMwHUoGg=\n", "KusvUm2hxUg=\n")).append(((C0758) interfaceC0792).m2263()).toString());
        } else {
            AbstractC0250.m1991(this.f2510, obj + StringFog.decrypt("pUc=\n", "n2c4MkhxNuE=\n") + str);
        }
    }
}
