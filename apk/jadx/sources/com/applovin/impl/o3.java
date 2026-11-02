package com.applovin.impl;

import android.os.Bundle;
import androidx.arch.core.util.Function;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class o3 {
    protected final com.applovin.impl.sdk.l a;
    private final JSONObject b;
    protected final JSONObject d;
    private final Map f;
    private final m5 g;
    protected final m5 h;
    private String i;
    private String j;
    private final Object c = new Object();
    protected final Object e = new Object();

    public o3(Map map, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.l lVar) {
        if (lVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (jSONObject2 == null) {
            throw new IllegalArgumentException("No full response specified");
        }
        if (jSONObject == null) {
            throw new IllegalArgumentException("No ad object specified");
        }
        this.a = lVar;
        if (((Boolean) lVar.a(c5.N6)).booleanValue()) {
            this.g = new m5(jSONObject2);
            this.h = new m5(jSONObject);
            this.b = null;
            this.d = null;
        } else {
            this.b = jSONObject2;
            this.d = jSONObject;
            this.g = null;
            this.h = null;
        }
        this.f = map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Bundle a(m5 m5Var) {
        return JsonUtils.toBundle(m5Var.a("server_parameters", (JSONObject) null));
    }

    private int j() {
        return a("mute_state", b("mute_state", ((Integer) this.a.a(v3.r8)).intValue()));
    }

    protected double a(String str, double d) {
        double d2;
        m5 m5Var = this.g;
        if (m5Var != null) {
            return m5Var.a(str, d);
        }
        synchronized (this.c) {
            d2 = JsonUtils.getDouble(this.b, str, d);
        }
        return d2;
    }

    protected double a(String str, float f) {
        double d;
        m5 m5Var = this.h;
        if (m5Var != null) {
            return m5Var.a(str, f);
        }
        synchronized (this.e) {
            d = JsonUtils.getDouble(this.d, str, f);
        }
        return d;
    }

    protected int a(String str, int i) {
        int i2;
        m5 m5Var = this.h;
        if (m5Var != null) {
            return m5Var.a(str, i);
        }
        synchronized (this.e) {
            i2 = JsonUtils.getInt(this.d, str, i);
        }
        return i2;
    }

    protected long a(String str, long j) {
        long j2;
        m5 m5Var = this.h;
        if (m5Var != null) {
            return m5Var.a(str, j);
        }
        synchronized (this.e) {
            j2 = JsonUtils.getLong(this.d, str, j);
        }
        return j2;
    }

    protected Boolean a(String str, Boolean bool) {
        Boolean bool2;
        m5 m5Var = this.h;
        if (m5Var != null) {
            return m5Var.a(str, bool);
        }
        synchronized (this.e) {
            bool2 = JsonUtils.getBoolean(this.d, str, bool);
        }
        return bool2;
    }

    public String a(String str) {
        String strA = a(str, "");
        return StringUtils.isValidString(strA) ? strA : b(str, "");
    }

    protected String a(String str, String str2) {
        String string;
        m5 m5Var = this.h;
        if (m5Var != null) {
            return m5Var.a(str, str2);
        }
        synchronized (this.e) {
            string = JsonUtils.getString(this.d, str, str2);
        }
        return string;
    }

    protected JSONArray a(String str, JSONArray jSONArray) {
        JSONArray jSONArray2;
        m5 m5Var = this.h;
        if (m5Var != null) {
            return m5Var.a(str, jSONArray);
        }
        synchronized (this.e) {
            jSONArray2 = JsonUtils.getJSONArray(this.d, str, jSONArray);
        }
        return jSONArray2;
    }

    protected JSONObject a() {
        JSONObject jSONObject;
        m5 m5Var = this.h;
        if (m5Var != null) {
            return m5Var.a();
        }
        synchronized (this.e) {
            jSONObject = this.d;
        }
        return jSONObject;
    }

    protected JSONObject a(String str, JSONObject jSONObject) {
        JSONObject jSONObject2;
        m5 m5Var = this.h;
        if (m5Var != null) {
            return m5Var.a(str, jSONObject);
        }
        synchronized (this.e) {
            jSONObject2 = JsonUtils.getJSONObject(this.d, str, jSONObject);
        }
        return jSONObject2;
    }

    protected void a(String str, Object obj) {
        m5 m5Var = this.h;
        if (m5Var != null) {
            m5Var.a(str, obj);
            return;
        }
        synchronized (this.e) {
            JsonUtils.putObject(this.d, str, obj);
        }
    }

    protected float b(String str, float f) {
        float f2;
        m5 m5Var = this.h;
        if (m5Var != null) {
            return m5Var.a(str, f);
        }
        synchronized (this.e) {
            f2 = JsonUtils.getFloat(this.d, str, f);
        }
        return f2;
    }

    protected int b(String str, int i) {
        int i2;
        m5 m5Var = this.g;
        if (m5Var != null) {
            return m5Var.a(str, i);
        }
        synchronized (this.c) {
            i2 = JsonUtils.getInt(this.b, str, i);
        }
        return i2;
    }

    protected long b(String str, long j) {
        long j2;
        m5 m5Var = this.g;
        if (m5Var != null) {
            return m5Var.a(str, j);
        }
        synchronized (this.c) {
            j2 = JsonUtils.getLong(this.b, str, j);
        }
        return j2;
    }

    protected Boolean b(String str, Boolean bool) {
        Boolean bool2;
        m5 m5Var = this.g;
        if (m5Var != null) {
            return m5Var.a(str, bool);
        }
        synchronized (this.c) {
            bool2 = JsonUtils.getBoolean(this.b, str, bool);
        }
        return bool2;
    }

    public String b() {
        return a("class", (String) null);
    }

    protected String b(String str, String str2) {
        String string;
        m5 m5Var = this.g;
        if (m5Var != null) {
            return m5Var.a(str, str2);
        }
        synchronized (this.c) {
            string = JsonUtils.getString(this.b, str, str2);
        }
        return string;
    }

    public List b(String str) {
        if (str == null) {
            throw new IllegalArgumentException("No key specified");
        }
        m5 m5Var = this.g;
        List listB = m5Var != null ? m5Var.b(str, Collections.EMPTY_LIST) : JsonUtils.optList(b(str, new JSONArray()), Collections.EMPTY_LIST);
        m5 m5Var2 = this.h;
        List listB2 = m5Var2 != null ? m5Var2.b(str, Collections.EMPTY_LIST) : JsonUtils.optList(a(str, new JSONArray()), Collections.EMPTY_LIST);
        ArrayList arrayList = new ArrayList(listB.size() + listB2.size());
        arrayList.addAll(listB);
        arrayList.addAll(listB2);
        return arrayList;
    }

    protected JSONArray b(String str, JSONArray jSONArray) {
        JSONArray jSONArray2;
        m5 m5Var = this.g;
        if (m5Var != null) {
            return m5Var.a(str, jSONArray);
        }
        synchronized (this.c) {
            jSONArray2 = JsonUtils.getJSONArray(this.b, str, jSONArray);
        }
        return jSONArray2;
    }

    public String c() {
        return a("name", (String) null);
    }

    protected void c(String str, int i) {
        m5 m5Var = this.h;
        if (m5Var != null) {
            m5Var.b(str, i);
            return;
        }
        synchronized (this.e) {
            JsonUtils.putInt(this.d, str, i);
        }
    }

    protected void c(String str, long j) {
        m5 m5Var = this.h;
        if (m5Var != null) {
            m5Var.b(str, j);
            return;
        }
        synchronized (this.e) {
            JsonUtils.putLong(this.d, str, j);
        }
    }

    protected void c(String str, String str2) {
        m5 m5Var = this.h;
        if (m5Var != null) {
            m5Var.b(str, str2);
            return;
        }
        synchronized (this.e) {
            JsonUtils.putString(this.d, str, str2);
        }
    }

    protected boolean c(String str) {
        boolean zHas;
        m5 m5Var = this.h;
        if (m5Var != null) {
            return m5Var.a(str);
        }
        synchronized (this.e) {
            zHas = this.d.has(str);
        }
        return zHas;
    }

    public String d() {
        if (c("consent_string")) {
            return a("consent_string", (String) null);
        }
        return d("consent_string") ? b("consent_string", (String) null) : this.a.t0().j();
    }

    protected boolean d(String str) {
        boolean zHas;
        m5 m5Var = this.g;
        if (m5Var != null) {
            return m5Var.a(str);
        }
        synchronized (this.c) {
            zHas = this.b.has(str);
        }
        return zHas;
    }

    protected Object e(String str) {
        Object objOpt;
        m5 m5Var = this.h;
        if (m5Var != null) {
            return m5Var.b(str);
        }
        synchronized (this.e) {
            objOpt = this.d.opt(str);
        }
        return objOpt;
    }

    public String e() {
        return this.j;
    }

    public Bundle f() {
        return BundleUtils.getBundle("custom_parameters", new Bundle(), l());
    }

    public void f(String str) {
        this.j = str;
    }

    public JSONObject g() {
        JSONObject jSONObject;
        m5 m5Var = this.g;
        if (m5Var != null) {
            return m5Var.a();
        }
        synchronized (this.c) {
            jSONObject = this.b;
        }
        return jSONObject;
    }

    public void g(String str) {
        this.i = str;
    }

    public String getAdUnitId() {
        return b("ad_unit_id", "");
    }

    public String getPlacement() {
        return this.i;
    }

    public long h() {
        return a("init_completion_delay_ms", -1L);
    }

    public Map i() {
        return this.f;
    }

    public String k() {
        return c().split("_")[0];
    }

    public Bundle l() {
        Bundle bundle;
        if (e("server_parameters") instanceof JSONObject) {
            m5 m5Var = this.h;
            bundle = m5Var != null ? (Bundle) m5Var.a(new Function() { // from class: com.applovin.impl.o3$$ExternalSyntheticLambda0
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return o3.a((m5) obj);
                }
            }) : JsonUtils.toBundle(a("server_parameters", (JSONObject) null));
        } else {
            bundle = new Bundle();
        }
        int iJ = j();
        if (iJ != -1) {
            if (iJ == 2) {
                bundle.putBoolean("is_muted", this.a.p0().isMuted());
            } else {
                bundle.putBoolean("is_muted", iJ == 0);
            }
        }
        if (!bundle.containsKey("amount")) {
            bundle.putLong("amount", b("amount", 0L));
        }
        if (!bundle.containsKey("currency")) {
            bundle.putString("currency", b("currency", ""));
        }
        return bundle;
    }

    public long m() {
        return a("adapter_timeout_ms", ((Long) this.a.a(v3.N7)).longValue());
    }

    public Boolean n() {
        String str = this.a.p0().getExtraParameters().get("huc");
        if (StringUtils.isValidString(str)) {
            return Boolean.valueOf(str);
        }
        return c("huc") ? a("huc", Boolean.FALSE) : b("huc", (Boolean) null);
    }

    public Boolean o() {
        String str = this.a.p0().getExtraParameters().get("dns");
        if (StringUtils.isValidString(str)) {
            return Boolean.valueOf(str);
        }
        return c("dns") ? a("dns", Boolean.FALSE) : b("dns", (Boolean) null);
    }

    public boolean p() {
        return a("is_testing", Boolean.FALSE).booleanValue();
    }

    public boolean q() {
        return a("reinitialize_if_init_fails", Boolean.FALSE).booleanValue();
    }

    public boolean r() {
        return a("run_on_ui_thread", Boolean.TRUE).booleanValue();
    }

    public boolean s() {
        return a("eagerly_initialize", Boolean.TRUE).booleanValue();
    }

    public String toString() {
        return "MediationAdapterSpec{adapterClass='" + b() + "', adapterName='" + c() + "', isTesting=" + p() + AbstractJsonLexerKt.END_OBJ;
    }
}
