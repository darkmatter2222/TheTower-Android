package com.applovin.impl.sdk;

import com.applovin.impl.c3;
import com.applovin.impl.m1;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TapjoyConstants;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class h {
    private final Map a = new HashMap();
    private final Object b = new Object();
    private final Map c = new HashMap();
    private final Object d = new Object();

    public static class b {
        private long a;
        private final JSONObject b;
        private final ArrayDeque c;

        private b(c3 c3Var, c cVar) {
            JSONObject jSONObject = new JSONObject();
            this.b = jSONObject;
            ArrayDeque arrayDeque = new ArrayDeque();
            this.c = arrayDeque;
            a(cVar);
            JsonUtils.putString(jSONObject, "ad_unit_id", c3Var.getAdUnitId());
            JsonUtils.putString(jSONObject, FirebaseAnalytics.Param.AD_FORMAT, c3Var.getFormat().getLabel());
            JsonUtils.putString(jSONObject, "network_name", c3Var.c());
            JsonUtils.putString(jSONObject, "adapter_class", c3Var.b());
            JsonUtils.putString(jSONObject, TapjoyConstants.TJC_ADAPTER_VERSION, c3Var.A());
            JsonUtils.putString(jSONObject, "bcode", c3Var.C());
            JsonUtils.putString(jSONObject, "creative_id", c3Var.getCreativeId());
            JsonUtils.putString(jSONObject, "operation", arrayDeque.toString());
        }

        private String a(String str) {
            return JsonUtils.getString(this.b, str, "");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(c cVar) {
            this.a = System.currentTimeMillis();
            this.c.add(cVar);
            JsonUtils.putString(this.b, "operation", cVar.toString());
        }

        public JSONObject a() {
            return this.b;
        }

        public String b() {
            return JsonUtils.getString(this.b, "bcode", "");
        }

        public c c() {
            return (c) this.c.getLast();
        }

        public String toString() {
            return "AdInfo{states='" + this.c.toString() + "', adUnitId='" + a("ad_unit_id") + "', format='" + a(FirebaseAnalytics.Param.AD_FORMAT) + "', adapterName='" + a("network_name") + "', adapterClass='" + a("adapter_class") + "', adapterVersion='" + a(TapjoyConstants.TJC_ADAPTER_VERSION) + "', bCode='" + b() + "', creativeId='" + a("creative_id") + "', updated=" + this.a + AbstractJsonLexerKt.END_OBJ;
        }
    }

    public enum c {
        LOADING("loading"),
        LOAD("load"),
        SHOW("show"),
        HIDE("hide"),
        CLICK("click"),
        DESTROY("destroy"),
        SHOW_ERROR("show_error");

        private final String a;

        c(String str) {
            this.a = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.a;
        }
    }

    public interface d {
        void a(b bVar);
    }

    public h() {
        a();
    }

    private Set a(c cVar) {
        synchronized (this.b) {
            Set set = (Set) this.a.get(cVar);
            if (m1.a(set)) {
                return set;
            }
            return new HashSet();
        }
    }

    private void a(b bVar, c cVar) {
        Iterator it = b(cVar).iterator();
        while (it.hasNext()) {
            ((d) it.next()).a(bVar);
        }
    }

    private Set b(c cVar) {
        HashSet hashSet;
        synchronized (this.b) {
            hashSet = new HashSet(a(cVar));
        }
        return hashSet;
    }

    public void a() {
        synchronized (this.b) {
            for (c cVar : c.values()) {
                this.a.put(cVar, new HashSet());
            }
        }
    }

    public void a(c3 c3Var, c cVar) {
        synchronized (this.d) {
            String strC = c3Var.C();
            b bVar = (b) this.c.get(strC);
            if (bVar == null) {
                if (cVar == c.DESTROY) {
                    return;
                }
                bVar = new b(c3Var, cVar);
                this.c.put(strC, bVar);
            } else if (bVar.c() == cVar) {
                return;
            } else {
                bVar.a(cVar);
            }
            if (cVar == c.DESTROY) {
                this.c.remove(strC);
            }
            a(bVar, cVar);
        }
    }

    public void a(d dVar) {
        synchronized (this.b) {
            Iterator it = this.a.keySet().iterator();
            while (it.hasNext()) {
                a((c) it.next()).remove(dVar);
            }
        }
    }

    public void a(d dVar, Set set) {
        synchronized (this.b) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                a((c) it.next()).add(dVar);
            }
        }
    }
}
