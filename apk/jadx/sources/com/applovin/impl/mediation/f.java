package com.applovin.impl.mediation;

import android.app.Activity;
import com.applovin.impl.e5;
import com.applovin.impl.h2;
import com.applovin.impl.i6;
import com.applovin.impl.j2;
import com.applovin.impl.m1;
import com.applovin.impl.o3;
import com.applovin.impl.o6;
import com.applovin.impl.p5;
import com.applovin.impl.sdk.l;
import com.applovin.impl.sdk.p;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v3;
import com.applovin.impl.x4;
import com.applovin.mediation.adapter.MaxAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class f {
    private final l a;
    private final p b;
    private final AtomicBoolean c = new AtomicBoolean();
    private final Set d = new HashSet();
    private final Object e = new Object();
    private final JSONArray f = new JSONArray();
    private final LinkedHashMap g = new LinkedHashMap();
    private final Object h = new Object();
    private final Map i = new HashMap();
    private final Map j = new HashMap();
    private final Object k = new Object();
    private List l;

    public f(l lVar) {
        this.a = lVar;
        this.b = lVar.Q();
    }

    private o3 a(o3 o3Var) {
        List<o3> list;
        if (((Boolean) this.a.a(v3.L8)).booleanValue()) {
            o3 o3Var2 = (o3) this.i.get(o3Var.b());
            return o3Var2 != null ? o3Var2 : o3Var;
        }
        if (!this.a.u0().c() || (list = this.l) == null) {
            return o3Var;
        }
        for (o3 o3Var3 : list) {
            if (o3Var3.b().equals(o3Var.b())) {
                return o3Var3;
            }
        }
        return null;
    }

    private List a(JSONArray jSONArray, JSONObject jSONObject) {
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(new o3(Collections.EMPTY_MAP, JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null), jSONObject, this.a));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(x4 x4Var, MaxAdapter.InitializationStatus initializationStatus, String str) {
        if (initializationStatus == null || initializationStatus == MaxAdapter.InitializationStatus.INITIALIZING) {
            m1.a("Adapters should never report a null or INITIALIZING status.", new Object[0]);
            x4Var.a("Adapter reported INITIALIZING");
        } else if (initializationStatus == MaxAdapter.InitializationStatus.INITIALIZED_FAILURE) {
            x4Var.a(str);
        } else {
            x4Var.b(initializationStatus);
        }
    }

    private void c(o3 o3Var) {
        String strB = o3Var.b();
        synchronized (this.e) {
            if (this.d.contains(strB)) {
                return;
            }
            this.d.add(strB);
            this.a.R().d(h2.g0, j2.a(o3Var));
        }
    }

    public x4 a(o3 o3Var, Activity activity) {
        o3 o3VarA = a(o3Var);
        if (o3VarA == null) {
            return x4.a("AdapterInitialization:" + o3Var.c(), MaxAdapter.InitializationStatus.DOES_NOT_APPLY);
        }
        String strB = o3Var.b();
        synchronized (this.k) {
            x4 x4Var = (x4) this.j.get(strB);
            if (x4Var != null) {
                boolean z = o3VarA.q() && x4Var.e();
                boolean zA = x4Var.a();
                if (!z && !zA) {
                    return x4Var;
                }
            }
            final x4 x4Var2 = new x4("AdapterInitialization:" + o3Var.c());
            this.j.put(strB, x4Var2);
            h hVarA = this.a.V().a(o3VarA);
            if (hVarA == null) {
                x4Var2.a("Adapter implementation not found");
                return x4Var2;
            }
            if (p.a()) {
                this.b.d("MediationAdapterInitializationManager", "Initializing adapter " + o3VarA);
            }
            c(o3VarA);
            hVarA.a(MaxAdapterParametersImpl.a(o3VarA), activity, new MaxAdapter.OnCompletionListener() { // from class: com.applovin.impl.mediation.f$$ExternalSyntheticLambda0
                @Override // com.applovin.mediation.adapter.MaxAdapter.OnCompletionListener
                public final void onCompletion(MaxAdapter.InitializationStatus initializationStatus, String str) {
                    f.a(x4Var2, initializationStatus, str);
                }
            });
            o6.a(o3VarA.m(), x4Var2, "The adapter (" + o3Var.c() + ") timed out initializing", "MediationAdapterInitializationManager", this.a);
            return x4Var2;
        }
    }

    public Integer a(String str) {
        Integer num;
        synchronized (this.h) {
            num = (Integer) this.g.get(str);
        }
        return num;
    }

    public Set a() {
        HashSet hashSet;
        synchronized (this.h) {
            hashSet = new HashSet(this.g.keySet());
        }
        return hashSet;
    }

    public void a(Activity activity) {
        if (this.c.compareAndSet(false, true)) {
            String str = (String) this.a.a(e5.G);
            if (StringUtils.isValidString(str)) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    List<o3> listA = a(JsonUtils.getJSONArray(jSONObject, this.a.u0().c() ? "test_mode_auto_init_adapters" : "auto_init_adapters", new JSONArray()), jSONObject);
                    this.l = listA;
                    for (o3 o3Var : listA) {
                        this.i.put(o3Var.b(), o3Var);
                    }
                    long j = StringUtils.parseLong(this.a.p0().getExtraParameters().get("adapter_initialization_delay_ms"), -1L);
                    p5 p5Var = new p5(listA, activity, this.a);
                    if (j > 0) {
                        this.a.s0().a(p5Var, i6.b.MEDIATION, j);
                    } else {
                        this.a.s0().a(p5Var);
                    }
                } catch (JSONException e) {
                    if (p.a()) {
                        this.b.a("MediationAdapterInitializationManager", "Failed to parse auto-init adapters JSON", e);
                    }
                    m1.a((Throwable) e);
                }
            }
        }
    }

    void a(o3 o3Var, long j, MaxAdapter.InitializationStatus initializationStatus, String str) {
        boolean zB;
        if (initializationStatus == null || initializationStatus == MaxAdapter.InitializationStatus.INITIALIZING) {
            return;
        }
        synchronized (this.h) {
            zB = b(o3Var);
            if (!zB) {
                this.g.put(o3Var.b(), Integer.valueOf(initializationStatus.getCode()));
                JSONObject jSONObject = new JSONObject();
                JsonUtils.putString(jSONObject, "class", o3Var.b());
                JsonUtils.putString(jSONObject, "init_status", String.valueOf(initializationStatus.getCode()));
                JsonUtils.putLong(jSONObject, "init_time_ms", j);
                JsonUtils.putString(jSONObject, "error_message", JSONObject.quote(str));
                this.f.put(jSONObject);
            }
        }
        if (zB) {
            return;
        }
        this.a.a(o3Var);
        this.a.Z().processAdapterInitializationPostback(o3Var, j, initializationStatus, str);
        this.a.u().a(initializationStatus, o3Var.b());
    }

    public void a(MaxAdapter.InitializationStatus initializationStatus) {
        synchronized (this.h) {
            this.g.put("com.applovin.mediation.adapters.AppLovinMediationAdapter", Integer.valueOf(initializationStatus.getCode()));
        }
        this.a.u().a(initializationStatus, "com.applovin.mediation.adapters.AppLovinMediationAdapter");
    }

    public JSONArray b() {
        JSONArray jSONArrayShallowCopy;
        synchronized (this.h) {
            jSONArrayShallowCopy = JsonUtils.shallowCopy(this.f);
        }
        return jSONArrayShallowCopy;
    }

    boolean b(o3 o3Var) {
        boolean zContainsKey;
        synchronized (this.h) {
            zContainsKey = this.g.containsKey(o3Var.b());
        }
        return zContainsKey;
    }

    public boolean c() {
        return this.c.get();
    }
}
