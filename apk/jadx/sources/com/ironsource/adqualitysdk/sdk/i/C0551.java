package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒉ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0551 extends AbstractC0993 {
    static {
        StringFog.decrypt("9lWqxOcJDCE=\n", "kTDego5sYEU=\n");
        StringFog.decrypt("DiFARr3hXKoa\n", "aUQ0ANSEMM4=\n");
        StringFog.decrypt("/Mc7ARrCYUXdyyorF/90ZeLSKg==\n", "m6JPR3OwEjE=\n");
        StringFog.decrypt("KM19gOYA1yAJwWyq6yXNICf4e6PpG9w=\n", "T6gJxo9ypFQ=\n");
        StringFog.decrypt("p06mpBGjJUyhUKeBAKAhUK1Qp6AX\n", "xDzDxWXGYyU=\n");
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static Field m2125(ArrayList arrayList) {
        Field[] fields;
        Class cls = (Class) AbstractC0993.m2388(arrayList, 0, Class.class);
        String str = (String) AbstractC0993.m2388(arrayList, 1, String.class);
        C0554 c0554 = C0793.m2275().f2975;
        synchronized (C0554.class) {
            if (c0554.f2287 == null) {
                c0554.f2287 = new ArrayList();
            }
            c0554.f2287.clear();
            ArrayList arrayList2 = c0554.f2287;
            try {
                fields = cls.getDeclaredFields();
            } catch (Error unused) {
                fields = cls.getFields();
            }
            for (Field field : fields) {
                if (field.getType().getName().toLowerCase().startsWith(str.toLowerCase())) {
                    field.setAccessible(true);
                    arrayList2.add(field);
                }
            }
            if (c0554.f2287.isEmpty()) {
                return null;
            }
            return (Field) c0554.f2287.get(0);
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static Field m2126(ArrayList arrayList) {
        if (!(arrayList.get(0) instanceof Class)) {
            Object objM2388 = AbstractC0993.m2388(arrayList, 0, Object.class);
            return C0793.m2275().f2975.m2134(objM2388.getClass(), (Class) AbstractC0993.m2388(arrayList, 1, Class.class));
        }
        Class cls = (Class) AbstractC0993.m2388(arrayList, 0, Class.class);
        if (arrayList.get(1) instanceof Class) {
            return C0793.m2275().f2975.m2134(cls, (Class) AbstractC0993.m2388(arrayList, 1, Class.class));
        }
        return C0793.m2275().f2975.m2133(cls, (C0591) AbstractC0993.m2388(arrayList, 1, C0591.class));
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static List m2127(ArrayList arrayList) {
        if (!(arrayList.get(0) instanceof Class)) {
            Object objM2388 = AbstractC0993.m2388(arrayList, 0, Object.class);
            boolean zBooleanValue = arrayList.size() > 1 ? ((Boolean) AbstractC0993.m2388(arrayList, 1, Boolean.class)).booleanValue() : false;
            C0554 c0554 = C0793.m2275().f2975;
            return Arrays.asList(C0554.m2132(objM2388.getClass(), zBooleanValue, -1, null));
        }
        if (arrayList.size() <= 1) {
            return new ArrayList();
        }
        Class cls = (Class) AbstractC0993.m2388(arrayList, 0, Class.class);
        C0591 c0591 = (C0591) AbstractC0993.m2388(arrayList, 1, C0591.class);
        C0554 c0555 = C0793.m2275().f2975;
        ArrayList arrayList2 = new ArrayList();
        c0555.m2135(cls, c0591, arrayList2);
        return arrayList2;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static C0592 m2128() {
        C0554 c0554 = C0793.m2275().f2975;
        return new C0592();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Field m2129(ArrayList arrayList) {
        return C0793.m2275().f2975.m2133((Class) AbstractC0993.m2388(arrayList, 0, Class.class), (C0591) AbstractC0993.m2388(arrayList, 1, C0591.class));
    }
}
