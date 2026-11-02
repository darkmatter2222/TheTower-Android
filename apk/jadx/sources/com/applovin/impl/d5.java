package com.applovin.impl;

import android.content.Context;
import android.content.SharedPreferences;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class d5 {
    protected final com.applovin.impl.sdk.l a;
    protected final Context b;
    protected final SharedPreferences c;
    private final Map d = new HashMap();
    private final Object e = new Object();

    public d5(com.applovin.impl.sdk.l lVar) {
        this.a = lVar;
        Context contextP = com.applovin.impl.sdk.l.p();
        this.b = contextP;
        this.c = contextP.getSharedPreferences("com.applovin.sdk.1", 0);
        try {
            Class.forName(c5.class.getName());
            Class.forName(v3.class.getName());
        } catch (Throwable unused) {
        }
        d();
    }

    private static Object a(String str, JSONObject jSONObject, Object obj) {
        if (obj instanceof Boolean) {
            return Boolean.valueOf(jSONObject.getBoolean(str));
        }
        if (obj instanceof Float) {
            return Float.valueOf((float) jSONObject.getDouble(str));
        }
        if (obj instanceof Double) {
            return Double.valueOf(jSONObject.getDouble(str));
        }
        if (obj instanceof Integer) {
            return Integer.valueOf(jSONObject.getInt(str));
        }
        if (obj instanceof Long) {
            return Long.valueOf(jSONObject.getLong(str));
        }
        if (obj instanceof String) {
            return jSONObject.getString(str);
        }
        throw new RuntimeException("SDK Error: unknown value type: " + obj.getClass());
    }

    private String b() {
        return "com.applovin.sdk." + u7.f(this.a.k0()) + ".";
    }

    private void d() {
        String strB = ((Boolean) f5.a(e5.j, Boolean.FALSE, com.applovin.impl.sdk.l.p())).booleanValue() ? "" : b();
        synchronized (this.e) {
            for (c5 c5Var : c5.c()) {
                try {
                    Object objA = this.a.a(strB + c5Var.b(), null, c5Var.a().getClass(), this.c);
                    if (objA != null) {
                        this.d.put(c5Var.b(), objA);
                    }
                } catch (Throwable th) {
                    com.applovin.impl.sdk.p.c("SettingsManager", "Unable to load \"" + c5Var.b() + "\"", th);
                    this.a.E().a("SettingsManager", "initSettings", th);
                }
            }
        }
    }

    public Object a(c5 c5Var) {
        if (c5Var == null) {
            throw new IllegalArgumentException("No setting type specified");
        }
        synchronized (this.e) {
            Object obj = this.d.get(c5Var.b());
            if (obj == null) {
                return c5Var.a();
            }
            return c5Var.a(obj);
        }
    }

    public void a() {
        synchronized (this.e) {
            this.d.clear();
        }
        this.a.a(this.c);
    }

    public void a(c5 c5Var, Object obj) {
        if (c5Var == null) {
            throw new IllegalArgumentException("No setting type specified");
        }
        if (obj == null) {
            throw new IllegalArgumentException("No new value specified");
        }
        synchronized (this.e) {
            this.d.put(c5Var.b(), obj);
        }
    }

    public void a(JSONObject jSONObject) {
        synchronized (this.e) {
            boolean zBooleanValue = JsonUtils.getBoolean(jSONObject, c5.u.b(), Boolean.FALSE).booleanValue();
            HashMap map = zBooleanValue ? new HashMap() : null;
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (next != null && next.length() > 0) {
                    try {
                        c5 c5VarA = c5.a(next);
                        if (c5VarA != null) {
                            Object objA = zBooleanValue ? a(c5VarA) : null;
                            Object objA2 = a(next, jSONObject, c5VarA.a());
                            this.d.put(c5VarA.b(), objA2);
                            if (c5VarA == c5.U5) {
                                this.d.put(c5.V5.b(), Long.valueOf(System.currentTimeMillis()));
                            }
                            if (zBooleanValue && !objA2.equals(objA)) {
                                map.put(c5VarA, objA);
                            }
                        }
                    } catch (JSONException e) {
                        com.applovin.impl.sdk.p.c("SettingsManager", "Unable to parse JSON settingsValues array", e);
                        this.a.E().a("SettingsManager", "loadSettingsException", e);
                    } catch (Throwable th) {
                        com.applovin.impl.sdk.p.c("SettingsManager", "Unable to convert setting object ", th);
                        this.a.E().a("SettingsManager", "loadSettingsThrowable", th);
                    }
                }
            }
            if (zBooleanValue && map.size() > 0) {
                z2 z2Var = new z2();
                z2Var.a("========== UPDATED SETTINGS ==========");
                for (c5 c5Var : map.keySet()) {
                    z2Var.a(c5Var.b(), a(c5Var) + " (" + map.get(c5Var) + ")");
                }
                z2Var.a("========== END ==========");
                this.a.Q();
                if (com.applovin.impl.sdk.p.a()) {
                    this.a.Q().a("SettingsManager", z2Var.toString());
                }
            }
            f5.b(e5.j, (Boolean) a(c5.d7), com.applovin.impl.sdk.l.p());
        }
    }

    public List b(c5 c5Var) {
        ArrayList arrayList = new ArrayList(6);
        Iterator it = c(c5Var).iterator();
        while (it.hasNext()) {
            arrayList.add(MaxAdFormat.formatFromString((String) it.next()));
        }
        return arrayList;
    }

    public List c(c5 c5Var) {
        return CollectionUtils.explode((String) a(c5Var));
    }

    public boolean c() {
        return this.a.p0().isVerboseLoggingEnabled() || ((Boolean) a(c5.k)).booleanValue();
    }

    public void e() {
        Boolean bool = (Boolean) f5.a(e5.j, Boolean.FALSE, com.applovin.impl.sdk.l.p());
        String strB = b();
        synchronized (this.e) {
            SharedPreferences.Editor editorEdit = this.c.edit();
            for (c5 c5Var : c5.c()) {
                Object obj = this.d.get(c5Var.b());
                if (obj != null) {
                    String strB2 = c5Var.b();
                    this.a.a(strB + c5Var.b(), obj, editorEdit);
                    if (bool.booleanValue()) {
                        this.a.a(strB2, obj, editorEdit);
                    }
                }
            }
            if (((Boolean) this.a.a(c5.Q6)).booleanValue()) {
                f5.a(editorEdit);
            } else {
                editorEdit.apply();
            }
        }
    }
}
