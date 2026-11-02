package com.ironsource.adqualitysdk.sdk.i;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒍ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0554 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public ArrayList f2287;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public C0591 f2288;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public C0557 f2289;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2131(Class cls, C0557 c0557, ArrayList arrayList) {
        Field[] fields;
        boolean z;
        C0591 c0591 = c0557.f2293;
        if (c0591 == null || !(z = c0591.f865)) {
            try {
                fields = cls.getDeclaredFields();
            } catch (Error unused) {
                fields = cls.getFields();
            }
        } else {
            fields = m2132(cls, z, c0591.f864, null);
        }
        for (Field field : fields) {
            if (c0557.f2293 != null) {
                int modifiers = field.getModifiers();
                int i = c0557.f2293.f863;
                if ((modifiers & i) == i) {
                    int modifiers2 = field.getModifiers();
                    C0591 c0592 = c0557.f2293;
                    if ((modifiers2 & c0592.f862) == 0 && !c0592.f2360.contains(field.getType())) {
                        C0591 c0593 = c0557.f2293;
                        if (c0593.f2361 ? field.getType().equals(c0557.f2293.f2363) : c0593.f2363.isAssignableFrom(field.getType())) {
                            int i2 = c0557.f2292;
                            if (i2 == 0) {
                                field.setAccessible(true);
                                arrayList.add(field);
                            } else {
                                c0557.f2292 = i2 - 1;
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Field[] m2132(Class cls, boolean z, int i, List list) {
        while (cls != null && !AbstractC1059.m2429(cls, list)) {
            cls = cls.getSuperclass();
        }
        Field[] fieldArr = new Field[0];
        if (cls == null) {
            return fieldArr;
        }
        Field[] declaredFields = new Field[0];
        Field[] fields = new Field[0];
        try {
            declaredFields = cls.getDeclaredFields();
        } catch (Error unused) {
        }
        try {
            fields = cls.getFields();
        } catch (Error unused2) {
        }
        String str = AbstractC1059.f3785;
        int length = declaredFields.length;
        int length2 = fields.length;
        Field[] fieldArr2 = new Field[length + length2];
        System.arraycopy(declaredFields, 0, fieldArr2, 0, length);
        System.arraycopy(fields, 0, fieldArr2, length, length2);
        if (!z) {
            return fieldArr2;
        }
        Class superclass = cls.getSuperclass();
        for (int i2 = 0; superclass != null && i2 != i; i2++) {
            try {
                Field[] declaredFields2 = superclass.getDeclaredFields();
                int length3 = fieldArr2.length;
                int length4 = declaredFields2.length;
                Field[] fieldArr3 = new Field[length3 + length4];
                System.arraycopy(fieldArr2, 0, fieldArr3, 0, length3);
                System.arraycopy(declaredFields2, 0, fieldArr3, length3, length4);
                fieldArr2 = fieldArr3;
            } catch (Error unused3) {
            }
            try {
                Field[] fields2 = superclass.getFields();
                int length5 = fieldArr2.length;
                int length6 = fields2.length;
                Field[] fieldArr4 = new Field[length5 + length6];
                System.arraycopy(fieldArr2, 0, fieldArr4, 0, length5);
                System.arraycopy(fields2, 0, fieldArr4, length5, length6);
                fieldArr2 = fieldArr4;
            } catch (Error unused4) {
            }
            superclass = superclass.getSuperclass();
        }
        return fieldArr2;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Field m2133(Class cls, C0591 c0591) {
        synchronized (AbstractC0129.class) {
            if (this.f2287 == null) {
                this.f2287 = new ArrayList();
            }
            this.f2287.clear();
            m2135(cls, c0591, this.f2287);
            if (this.f2287.isEmpty()) {
                return null;
            }
            return (Field) this.f2287.get(0);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Field m2134(Class cls, Class cls2) {
        Field fieldM2133;
        synchronized (AbstractC0129.class) {
            if (this.f2288 == null) {
                this.f2288 = new C0591();
            }
            C0591 c0591 = this.f2288;
            c0591.f2363 = cls2;
            fieldM2133 = m2133(cls, c0591);
        }
        return fieldM2133;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2135(Class cls, C0591 c0591, ArrayList arrayList) {
        synchronized (C0554.class) {
            if (this.f2289 == null) {
                this.f2289 = new C0557();
            }
            C0557 c0557 = this.f2289;
            c0557.f2293 = c0591;
            c0557.f2292 = c0591.f2362;
            m2131(cls, c0557, arrayList);
        }
    }
}
