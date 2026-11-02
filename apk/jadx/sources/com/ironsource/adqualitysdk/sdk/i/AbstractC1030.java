package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﻣ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC1030 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final String f3634 = StringFog.decrypt("+kRr+nhhtIbD\n", "sBcktC0V3eo=\n");

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m2412(Object obj, int i) throws JSONException {
        if (obj instanceof JSONObject) {
            m2417((JSONObject) obj, i, (HashMap) null);
        } else {
            if (obj instanceof JSONArray) {
                JSONArray jSONArray = (JSONArray) obj;
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    String strM2412 = m2412(jSONArray.opt(i2), i);
                    if (strM2412 != null) {
                        jSONArray.put(i2, strM2412);
                    }
                }
            } else if (obj instanceof String) {
                String str = (String) obj;
                return str.length() > i ? AbstractC0897.m2299("ueiLTMXDZaT0p9EB1Zg=\n", "l8alZLGxEMo=\n", new StringBuilder().append(str.substring(0, i))) : str;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static LinkedHashMap m2413(JSONObject jSONObject, C0598 c0598) {
        AbstractC1031 abstractC1031M2321;
        if (jSONObject == null) {
            return null;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            c0598.getClass();
            try {
                String strOptString = jSONObject.optString(next);
                if (jSONObject.opt(next) instanceof String) {
                    strOptString = StringFog.decrypt("EA==\n", "MrduBYxPT7I=\n") + strOptString + StringFog.decrypt("JA==\n", "Bjx11s/6ISg=\n");
                }
                abstractC1031M2321 = new C0950().m2321(AbstractC0795.m2277(c0598.f2427.f2382, strOptString, strOptString));
            } catch (Throwable th) {
                AbstractC0991.m2386(c0598.f2427.f2382, AbstractC0662.m2192("BZWfkhCHay4ylISTBYc=\n", "QOft/WKnG08=\n", new StringBuilder(), next).append(StringFog.decrypt("6ilgi5JjtIQ=\n", "ykoP5eEXjqQ=\n")).append(jSONObject.optString(next)).toString(), th, null);
                abstractC1031M2321 = null;
            }
            linkedHashMap.put(next, abstractC1031M2321);
        }
        return linkedHashMap;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static List m2414(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            Object objOpt = jSONArray.opt(i);
            if (objOpt != null) {
                arrayList.add(objOpt);
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static JSONObject m2415(int i, int i2, long j, long j2) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (j > -1) {
                jSONObject.put(StringFog.decrypt("dA==\n", "DBqGdhc7P+Q=\n"), i);
                jSONObject.put(StringFog.decrypt("Kw==\n", "Un41ZDV2oXM=\n"), i2);
                jSONObject.put(StringFog.decrypt("Pg==\n", "Shj+5fYQzjE=\n"), j);
                jSONObject.put(StringFog.decrypt("Fg==\n", "Y/xOYdy43zg=\n"), j2);
                return jSONObject;
            }
            jSONObject.put(StringFog.decrypt("Fg==\n", "buXt1ewFydk=\n"), -1);
            jSONObject.put(StringFog.decrypt("/Q==\n", "hKucsh4Gc84=\n"), -1);
            jSONObject.put(StringFog.decrypt("/Q==\n", "iVG09x4PVl8=\n"), -1);
            jSONObject.put(StringFog.decrypt("cw==\n", "Bl3e9vfVqIk=\n"), -1);
            return jSONObject;
        } catch (JSONException e) {
            String str = f3634;
            AbstractC0250.m1999(str, str, StringFog.decrypt("ZQ41k+DrkXRFHTOV/KzSakEPM6j9vpFuABY0k/w=\n", "IHxH/JLL8gY=\n"), e, null, false);
            return jSONObject;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static JSONObject m2416(JSONObject jSONObject, boolean z) {
        if (jSONObject != null) {
            try {
                JSONObject jSONObject2 = new JSONObject(jSONObject.toString());
                if (z) {
                    jSONObject2.remove(AbstractC0115.f626);
                }
                return jSONObject2;
            } catch (JSONException unused) {
            }
        }
        return new JSONObject();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2417(JSONObject jSONObject, int i, HashMap map) {
        try {
            JSONArray jSONArrayNames = jSONObject.names();
            if (jSONArrayNames != null) {
                for (int i2 = 0; i2 < jSONArrayNames.length(); i2++) {
                    String strOptString = jSONArrayNames.optString(i2);
                    Object obj = null;
                    Integer num = map != null ? (Integer) map.get(strOptString) : null;
                    String strM2412 = m2412(jSONObject.opt(strOptString), num != null ? num.intValue() : i);
                    if (strM2412 != null) {
                        if (!strM2412.equals("")) {
                            obj = strM2412;
                        }
                        jSONObject.put(strOptString, obj);
                    }
                }
            }
        } catch (JSONException e) {
            String str = f3634;
            AbstractC0250.m1999(str, str, StringFog.decrypt("NrjgKzhigbcfo/YlPiuZsVOg4Ssk\n", "c8qSREpC99Y=\n"), e, null, false);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2418(JSONObject jSONObject, JSONObject jSONObject2, boolean z) {
        if (jSONObject == null || jSONObject2 == null) {
            return;
        }
        Iterator<String> itKeys = jSONObject2.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            try {
                jSONObject.put(next, jSONObject2.opt(next));
            } catch (JSONException unused) {
            }
        }
        if (z) {
            jSONObject.remove(AbstractC0115.f626);
        }
    }
}
