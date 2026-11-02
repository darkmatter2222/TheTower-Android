package com.ironsource.adqualitysdk.sdk.i;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ʄ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0190 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final int f1063;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final List f1064;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final HashSet f1062 = new HashSet();

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final HashSet f1061 = new HashSet();

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public int f1060 = 0;

    public C0190(List list, int i) {
        this.f1064 = list;
        this.f1063 = i;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static boolean m1938(Object obj) {
        if (obj == null) {
            return true;
        }
        if (obj instanceof String) {
            return ((String) obj).isEmpty();
        }
        if (obj instanceof Number) {
            return ((Number) obj).doubleValue() == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        }
        if (obj instanceof Boolean) {
            return !((Boolean) obj).booleanValue();
        }
        if (obj instanceof Collection) {
            return ((Collection) obj).isEmpty();
        }
        if (obj instanceof Map) {
            return ((Map) obj).isEmpty();
        }
        return obj.getClass().isArray() && Array.getLength(obj) == 0;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m1939(String str) {
        return AbstractC0897.m2299("6w==\n", "ybv7+aTixfY=\n", new StringBuilder().append(StringFog.decrypt("NQ==\n", "F+SUrs2uo8o=\n")).append(str.replace(StringFog.decrypt("bQ==\n", "McLpQYjqo+w=\n"), StringFog.decrypt("3zg=\n", "g2T0awnFxT8=\n")).replace(StringFog.decrypt("dA==\n", "VueOuIPSVik=\n"), StringFog.decrypt("ym8=\n", "lk3geZrRQDU=\n")).replace("\n", StringFog.decrypt("+O8=\n", "pIEFfmX3Xqg=\n")).replace("\r", StringFog.decrypt("6qc=\n", "ttUHvUjt3yo=\n")).replace("\t", StringFog.decrypt("nrI=\n", "wsaS3IrLzUw=\n"))));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m1940(Object obj) {
        String strM1939;
        if (obj instanceof WeakReference) {
            obj = ((WeakReference) obj).get();
        } else if (obj instanceof AtomicReference) {
            obj = ((AtomicReference) obj).get();
        }
        if (obj == null) {
            return StringFog.decrypt("tAx9Xg==\n", "2nkRMltmACE=\n");
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() > 30) {
                if (this.f1061.contains(str)) {
                    return StringFog.decrypt("83InAS2T2A==\n", "0U5DdF2t+jI=\n");
                }
                this.f1061.add(str);
            }
            return m1939(str);
        }
        if ((obj instanceof Number) || (obj instanceof Boolean)) {
            return String.valueOf(obj);
        }
        if (obj instanceof Character) {
            return m1939(String.valueOf(obj));
        }
        int i = 0;
        if (obj instanceof JSONArray) {
            JSONArray jSONArray = (JSONArray) obj;
            ArrayList arrayList = new ArrayList();
            while (i < jSONArray.length()) {
                Object objOpt = jSONArray.opt(i);
                if (objOpt != null) {
                    arrayList.add(objOpt);
                }
                i++;
            }
            return m1941((Collection) arrayList);
        }
        String str2 = null;
        if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            Map linkedHashMap = new LinkedHashMap();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                linkedHashMap.put(next, jSONObject.optString(next, null));
            }
            return m1942(linkedHashMap);
        }
        if (obj instanceof Map) {
            return m1942((Map) obj);
        }
        if (obj instanceof Collection) {
            return m1941((Collection) obj);
        }
        if (obj.getClass().isArray()) {
            ArrayList arrayList2 = new ArrayList();
            while (i < Array.getLength(obj)) {
                arrayList2.add(Array.get(obj, i));
                i++;
            }
            return m1941((Collection) arrayList2);
        }
        if (obj instanceof Bundle) {
            Bundle bundle = (Bundle) obj;
            HashMap map = new HashMap();
            for (String str3 : bundle.keySet()) {
                map.put(str3, bundle.get(str3));
            }
            return AbstractC0897.m2299("SA==\n", "NRoSxb16OhI=\n", new StringBuilder().append(StringFog.decrypt("1xquRuJ9tuqOAtNn+3Kh9cka3QfReKTtzRrL\n", "rDjxJY4cxZk=\n")).append(m1942((Map) map)));
        }
        if (obj instanceof SharedPreferences) {
            return AbstractC0897.m2299("LQ==\n", "UGF8lfoIp/c=\n", new StringBuilder().append(StringFog.decrypt("HZwekj3r+mdEhGOiOev7cQLuM5Q37/txCN0kgnOmq0sC3zWQc7A=\n", "Zr5B8VGKiRQ=\n")).append(m1942(((SharedPreferences) obj).getAll())));
        }
        if (!AbstractC1059.m2429(obj.getClass(), this.f1064)) {
            return m1939(obj.getClass().getSimpleName() + StringFog.decrypt("hA==\n", "xEVdOyPtLMU=\n") + Integer.toHexString(obj.hashCode()));
        }
        if (this.f1060 > this.f1063 || this.f1062.contains(obj)) {
            return m1939(obj.getClass().getSimpleName() + StringFog.decrypt("sA==\n", "8J6h+8Q7LGE=\n") + Integer.toHexString(obj.hashCode()));
        }
        this.f1062.add(obj);
        this.f1060++;
        StringBuilder sb = new StringBuilder(StringFog.decrypt("uHVvjZzFH8LhbQ==\n", "w1cw7vCkbLE=\n"));
        sb.append(m1939(obj.getClass().getSimpleName()));
        try {
            String string = obj.toString();
            if (!TextUtils.isEmpty(string)) {
                String hexString = Integer.toHexString(obj.hashCode());
                if (!string.equals(obj.getClass().getName() + StringFog.decrypt("+A==\n", "uDCl2tuKAF0=\n") + hexString) && !string.equals(obj.getClass().getSimpleName() + StringFog.decrypt("6Q==\n", "qWKj6TpFc7M=\n") + hexString)) {
                    str2 = string;
                }
            }
        } catch (Throwable unused) {
        }
        if (!TextUtils.isEmpty(str2)) {
            StringBuilder sbAppend = sb.append(StringFog.decrypt("h+rgzGdLDyPCptiaMg==\n", "q8i/uAgYe1E=\n"));
            if (str2.length() <= 30) {
                strM1939 = m1939(str2);
            } else if (this.f1061.contains(str2)) {
                strM1939 = StringFog.decrypt("83InAS2T2A==\n", "0U5DdF2t+jI=\n");
            } else {
                this.f1061.add(str2);
                strM1939 = m1939(str2);
            }
            sbAppend.append(strM1939);
        }
        try {
            ArrayList arrayList3 = new ArrayList();
            for (Class<?> superclass = obj.getClass(); superclass != null && AbstractC1059.m2429(superclass, this.f1064); superclass = superclass.getSuperclass()) {
                arrayList3.addAll(Arrays.asList(superclass.getDeclaredFields()));
            }
            Field[] fieldArr = (Field[]) arrayList3.toArray(new Field[0]);
            int length = fieldArr.length;
            while (i < length) {
                Field field = fieldArr[i];
                if (Modifier.isStatic(field.getModifiers())) {
                    Class<?> type = field.getType();
                    if (!type.isPrimitive() && type != String.class) {
                    }
                    i++;
                }
                field.setAccessible(true);
                Object obj2 = field.get(obj);
                if (obj2 instanceof WeakReference) {
                    obj2 = ((WeakReference) obj2).get();
                } else if (obj2 instanceof AtomicReference) {
                    obj2 = ((AtomicReference) obj2).get();
                }
                if (!m1938(obj2)) {
                    sb.append(StringFog.decrypt("OeQ=\n", "FcbFYiOdBJA=\n")).append(field.getName()).append(StringFog.decrypt("40M=\n", "wXmF0lqhmpc=\n")).append(m1940(obj2));
                }
                i++;
            }
        } catch (Throwable unused2) {
        }
        this.f1060--;
        sb.append(StringFog.decrypt("aA==\n", "FUz5DeJCL4g=\n"));
        return sb.toString();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m1941(Collection collection) {
        StringBuilder sb = new StringBuilder(StringFog.decrypt("kw==\n", "yKwkH3iJpmM=\n"));
        boolean z = true;
        for (Object obj : collection) {
            if (!m1938(obj)) {
                if (!z) {
                    sb.append(StringFog.decrypt("iQ==\n", "pQwSEPs1EMY=\n"));
                }
                sb.append(m1940(obj));
                z = false;
            }
        }
        sb.append(StringFog.decrypt("EA==\n", "TW0pSk0kmoQ=\n"));
        return sb.toString();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m1942(Map map) {
        StringBuilder sb = new StringBuilder(StringFog.decrypt("Tg==\n", "Nfh05UxZD2E=\n"));
        boolean z = true;
        for (Map.Entry entry : map.entrySet()) {
            if (!m1938(entry.getValue())) {
                if (!z) {
                    sb.append(StringFog.decrypt("CA==\n", "JDUvXeAJtNU=\n"));
                }
                sb.append(m1939(String.valueOf(entry.getKey()))).append(StringFog.decrypt("Ow==\n", "AbJBURV1wlM=\n")).append(m1940(entry.getValue()));
                z = false;
            }
        }
        sb.append(StringFog.decrypt("7g==\n", "k5Zr/aunAY8=\n"));
        return sb.toString();
    }
}
