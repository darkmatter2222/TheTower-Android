package com.applovin.impl;

import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class y3 {
    private static final HashMap d = new HashMap();
    private static final Object e = new Object();
    private static final HashMap f = new HashMap();
    private static final Object g = new Object();
    private static final HashMap h = new LinkedHashMap();
    private static final Object i = new Object();
    private final com.applovin.impl.sdk.l a;
    private final JSONObject b = a(v3.I8);
    private final JSONObject c = a(v3.H8);

    public y3(com.applovin.impl.sdk.l lVar) {
        this.a = lVar;
        a((String) f5.a(e5.K, (Object) null, com.applovin.impl.sdk.l.p()), x3.a.AD_UNIT_ID);
        a((String) f5.a(e5.L, (Object) null, com.applovin.impl.sdk.l.p()), x3.a.AD_FORMAT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long a(Long l) {
        return Long.valueOf(l != null ? 1 + l.longValue() : 1L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long a(Long l, Long l2) {
        return l;
    }

    private Object a(Object obj) {
        return obj instanceof Integer ? Long.valueOf(((Integer) obj).longValue()) : obj;
    }

    private String a(Map map) {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry entry : map.entrySet()) {
            JSONObject jSONObject2 = new JSONObject();
            for (Map.Entry entry2 : ((HashMap) entry.getValue()).entrySet()) {
                w3 w3Var = (w3) entry2.getKey();
                Object value = entry2.getValue();
                if (value != null) {
                    JsonUtils.putObject(jSONObject2, w3Var.toString(), value);
                }
            }
            JsonUtils.putJSONObject(jSONObject, (String) entry.getKey(), jSONObject2);
        }
        return jSONObject.toString();
    }

    private HashMap a(x3.a aVar) {
        if (aVar == x3.a.AD_UNIT_ID) {
            return d;
        }
        return aVar == x3.a.AD_FORMAT ? f : h;
    }

    private HashMap a(x3 x3Var) {
        HashMap map = new HashMap();
        HashMap mapA = a(x3Var.a());
        synchronized (b(x3Var.a())) {
            for (Map.Entry entry : mapA.entrySet()) {
                String str = (String) entry.getKey();
                HashMap map2 = (HashMap) entry.getValue();
                if (!CollectionUtils.isEmpty(map2)) {
                    HashMap map3 = (HashMap) map2.get(w3.a.INSTALL.b());
                    if (!CollectionUtils.isEmpty(map3)) {
                        map.put(str, new HashMap(map3));
                    }
                }
            }
        }
        return map;
    }

    private Map a(w3 w3Var, x3.a aVar, w3.a aVar2) {
        HashMap mapA = a(aVar);
        Object objB = b(aVar);
        HashMap map = new HashMap();
        synchronized (objB) {
            for (String str : mapA.keySet()) {
                HashMap map2 = (HashMap) mapA.get(str);
                String strB = aVar2.b();
                if (map2 != null && map2.containsKey(strB)) {
                    HashMap map3 = (HashMap) map2.get(strB);
                    if (aVar == x3.a.AD) {
                        map.put(n3.a(str).b(), map3.get(w3Var));
                    } else {
                        map.put(str, map3.get(w3Var));
                    }
                }
            }
        }
        return map;
    }

    private JSONObject a(c5 c5Var) {
        return JsonUtils.jsonObjectFromJsonString((String) this.a.a(c5Var), new JSONObject());
    }

    private void a(u3 u3Var, Map map) {
        MaxAdFormat maxAdFormatA = u3Var.c().a();
        Integer integer = JsonUtils.getInteger(this.c, maxAdFormatA.getLabel(), null);
        if (integer == null) {
            return;
        }
        Iterator it = map.keySet().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (n3.a((String) it.next()).a().equals(maxAdFormatA)) {
                i2++;
            }
        }
        if (i2 < integer.intValue()) {
            return;
        }
        Iterator it2 = map.entrySet().iterator();
        while (it2.hasNext() && i2 >= integer.intValue()) {
            if (n3.a((String) ((Map.Entry) it2.next()).getKey()).a().equals(maxAdFormatA)) {
                it2.remove();
                i2--;
            }
        }
    }

    private void a(String str, x3.a aVar) {
        if (StringUtils.isValidString(str)) {
            HashMap mapA = a(aVar);
            Object objB = b(aVar);
            Map<String, Object> stringObjectMap = JsonUtils.toStringObjectMap(str);
            synchronized (objB) {
                for (Map.Entry<String, Object> entry : stringObjectMap.entrySet()) {
                    String key = entry.getKey();
                    HashMap map = new HashMap();
                    for (Map.Entry entry2 : ((Map) entry.getValue()).entrySet()) {
                        w3 w3VarA = w3.a((String) entry2.getKey());
                        if (w3VarA != null) {
                            map.put(w3VarA, a(entry2.getValue()));
                        }
                    }
                    if (!CollectionUtils.isEmpty(map)) {
                        HashMap map2 = new HashMap();
                        map2.put(w3.a.INSTALL.b(), map);
                        mapA.put(key, map2);
                    }
                }
            }
        }
    }

    private boolean a(w3 w3Var, x3 x3Var, w3.b bVar) {
        if (w3Var == null) {
            this.a.Q();
            if (com.applovin.impl.sdk.p.a()) {
                this.a.Q().b("MediationStatsManager", "Failed to update stat, no stat provided");
            }
            return false;
        }
        if (x3Var == null) {
            this.a.Q();
            if (com.applovin.impl.sdk.p.a()) {
                this.a.Q().b("MediationStatsManager", "Failed to update stat, no dimension key provided");
            }
            return false;
        }
        if (bVar != null) {
            return true;
        }
        this.a.Q();
        if (com.applovin.impl.sdk.p.a()) {
            this.a.Q().b("MediationStatsManager", "Failed to update stat, no stat updater provided");
        }
        return false;
    }

    private Object b(x3.a aVar) {
        if (aVar == x3.a.AD_UNIT_ID) {
            return e;
        }
        return aVar == x3.a.AD_FORMAT ? g : i;
    }

    private Map b(w3 w3Var, x3 x3Var, w3.b bVar) {
        if (!a(w3Var, x3Var, bVar) || !b(w3Var, x3Var)) {
            return null;
        }
        String strB = x3Var.b();
        HashMap mapA = a(x3Var.a());
        Object objB = b(x3Var.a());
        HashMap map = new HashMap();
        synchronized (objB) {
            if (x3Var instanceof u3) {
                a((u3) x3Var, mapA);
            }
            HashMap map2 = (HashMap) mapA.get(strB);
            if (map2 == null) {
                map2 = new HashMap();
                mapA.put(strB, map2);
            }
            Iterator it = w3Var.b().iterator();
            while (it.hasNext()) {
                String strB2 = ((w3.a) it.next()).b();
                HashMap map3 = (HashMap) map2.get(strB2);
                if (map3 == null) {
                    map3 = new HashMap();
                    map2.put(strB2, map3);
                }
                Object objA = bVar.a(map3.get(w3Var));
                map3.put(w3Var, objA);
                map.put(strB2, objA);
            }
        }
        if (w3Var.a(w3.a.INSTALL)) {
            b(x3Var);
        }
        return map;
    }

    private void b(x3 x3Var) {
        e5 e5VarC = c(x3Var.a());
        if (e5VarC == null) {
            return;
        }
        f5.b(e5VarC, a((Map) a(x3Var)), com.applovin.impl.sdk.l.p());
    }

    private boolean b(w3 w3Var, x3 x3Var) {
        Iterator<String> itKeys = this.b.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (next.equals(x3Var.a().toString().toLowerCase()) && JsonUtils.valueExists(JsonUtils.getJSONArray(this.b, next, new JSONArray()), w3Var.a())) {
                return false;
            }
        }
        return true;
    }

    private e5 c(x3.a aVar) {
        if (aVar == x3.a.AD_UNIT_ID) {
            return e5.K;
        }
        if (aVar == x3.a.AD_FORMAT) {
            return e5.L;
        }
        return null;
    }

    public Map a(w3 w3Var, x3.a aVar) {
        return a(w3Var, aVar, w3.a.SESSION);
    }

    public Map a(w3 w3Var, x3 x3Var) {
        return b(w3Var, x3Var, new w3.b() { // from class: com.applovin.impl.y3$$ExternalSyntheticLambda0
            @Override // com.applovin.impl.w3.b
            public final Object a(Object obj) {
                return y3.a((Long) obj);
            }
        });
    }

    public void a(w3 w3Var, x3 x3Var, final Long l) {
        b(w3Var, x3Var, new w3.b() { // from class: com.applovin.impl.y3$$ExternalSyntheticLambda1
            @Override // com.applovin.impl.w3.b
            public final Object a(Object obj) {
                return y3.a(l, (Long) obj);
            }
        });
    }
}
