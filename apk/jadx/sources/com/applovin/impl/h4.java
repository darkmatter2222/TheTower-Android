package com.applovin.impl;

import android.text.TextUtils;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class h4 {
    private final com.applovin.impl.sdk.l a;
    private final String b;
    private final List c;
    private final int d;
    private Long e;
    private final Map f = new HashMap();
    private final Object g = new Object();
    private final Deque h = new ArrayDeque();
    private final Object i = new Object();

    public h4(com.applovin.impl.sdk.l lVar) {
        this.a = lVar;
        this.b = (String) lVar.a(c5.G4);
        this.c = lVar.c(c5.H4);
        this.d = ((Integer) lVar.a(c5.I4)).intValue();
        d();
    }

    private void a(long j, String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        synchronized (this.g) {
            Map map = (Map) this.f.get(str2);
            if (map == null) {
                map = new HashMap();
                this.f.put(str2, map);
            }
            List arrayList = (List) map.get(str);
            if (arrayList == null) {
                arrayList = new ArrayList();
                map.put(str, arrayList);
            }
            arrayList.add(Long.valueOf(j));
        }
    }

    private void c() {
        JSONArray jSONArray = new JSONArray();
        Iterator it = b().iterator();
        while (it.hasNext()) {
            jSONArray.put(new JSONObject((Map) it.next()));
        }
        this.a.r0().b(e5.U, jSONArray.toString());
    }

    private void d() {
        JSONArray jsonArray;
        Long l = (Long) this.a.r0().a(e5.T, null);
        if (l != null) {
            this.e = l;
        }
        if (this.d <= 0) {
            return;
        }
        String str = (String) this.a.r0().a(e5.U, null);
        if (TextUtils.isEmpty(str) || (jsonArray = JsonUtils.toJsonArray(str, null)) == null) {
            return;
        }
        synchronized (this.i) {
            for (int i = 0; i < jsonArray.length() && this.h.size() != this.d; i++) {
                JSONObject jSONObject = JsonUtils.getJSONObject(jsonArray, i, (JSONObject) null);
                if (JsonUtils.isValid(jSONObject)) {
                    Map<String, Object> mapTryToStringObjectMap = JsonUtils.tryToStringObjectMap(jSONObject);
                    if (!CollectionUtils.isEmpty(mapTryToStringObjectMap)) {
                        this.h.addLast(mapTryToStringObjectMap);
                    }
                }
            }
        }
    }

    public Long a() {
        return this.e;
    }

    public void a(String str) {
        Map map;
        if (TextUtils.isEmpty(str) || this.d <= 0) {
            return;
        }
        synchronized (this.g) {
            map = (Map) this.f.remove(str);
        }
        if (CollectionUtils.isEmpty(map)) {
            return;
        }
        HashMap map2 = new HashMap();
        map2.put("cc_ms", Long.valueOf(System.currentTimeMillis()));
        map2.put("network_type", s0.g(this.a));
        for (Map.Entry entry : map.entrySet()) {
            List list = (List) entry.getValue();
            if (!CollectionUtils.isEmpty(list)) {
                Iterator it = list.iterator();
                long jLongValue = 0;
                while (it.hasNext()) {
                    jLongValue += ((Long) it.next()).longValue();
                }
                map2.put((String) entry.getKey(), Long.valueOf(jLongValue / ((long) list.size())));
            }
        }
        synchronized (this.i) {
            if (this.h.size() == this.d) {
                this.h.pollLast();
            }
            this.h.addFirst(map2);
        }
        c();
    }

    public List b() {
        ArrayList arrayList;
        synchronized (this.i) {
            arrayList = new ArrayList(this.h);
        }
        return arrayList;
    }

    public void b(long j, String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (StringUtils.isValidString(str2) && !CollectionUtils.isEmpty(this.c) && this.d > 0) {
            for (String str3 : this.c) {
                if (StringUtils.isValidString(str3) && str.endsWith(str3)) {
                    a(j, str3, str2);
                    break;
                }
            }
        }
        if (StringUtils.isValidString(this.b) && str.endsWith(this.b)) {
            this.e = Long.valueOf(j);
            this.a.r0().b(e5.T, Long.valueOf(j));
        }
    }
}
