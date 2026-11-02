package com.ironsource;

import android.app.ActivityManager;
import android.content.Context;
import android.text.TextUtils;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.ba, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C3516ba {
    V6 a = new V6();

    /* JADX INFO: renamed from: com.ironsource.ba$a */
    class a extends com.ironsource.environment.thread.a {
        final /* synthetic */ EnumC3939ye b;

        a(EnumC3939ye enumC3939ye) {
            this.b = enumC3939ye;
        }

        @Override // com.ironsource.environment.thread.a
        public void a() {
            C3516ba.this.a.a(R6.g0, new JSONArray().put(this.b.c()));
        }
    }

    public void a() {
        this.a.a(R6.S0);
    }

    public void a(int i) {
        this.a.a(R6.j0, Integer.valueOf(i));
    }

    public void a(Context context) {
        this.a.a(context);
    }

    public void a(U7 u7) {
        try {
            HashMap map = new HashMap();
            map.put(R6.E, u7.a());
            map.put(R6.D, u7.b());
            map.put(R6.V, u7.c());
            this.a.a(map);
        } catch (Exception e) {
            C3801r4.d().a(e);
        }
    }

    public void a(EnumC3939ye enumC3939ye) {
        new Thread(new a(enumC3939ye)).start();
    }

    public void a(Boolean bool) {
        this.a.a(R6.W0, bool);
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.a.a("abt", str);
    }

    public void a(List<String> list) {
        if (list != null) {
            this.a.a(R6.T0, (Object) new JSONArray((Collection) list));
        }
    }

    public void a(JSONObject jSONObject) {
        this.a.a(R6.u, (Object) jSONObject);
    }

    public void a(boolean z) {
        this.a.a(R6.S0, Boolean.valueOf(z));
    }

    public void b() {
        this.a.a(R6.T0);
    }

    public void b(int i) {
        if (i >= 0) {
            this.a.a(R6.V0, Integer.valueOf(i));
        }
    }

    public void b(Context context) {
        B7 b7A = Pb.k0().a();
        ActivityManager.MemoryInfo memoryInfoO = b7A.o(context);
        this.a.a(R6.w, b7A.c(memoryInfoO));
        this.a.a(R6.x, b7A.b(memoryInfoO));
    }

    public void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.a.a(R6.D1, str);
    }

    public void b(JSONObject jSONObject) {
        this.a.a(R6.f1, (Object) jSONObject);
    }

    public void c(int i) {
        this.a.a(R6.f0, Integer.valueOf(i));
    }

    public void c(String str) {
        this.a.a(R6.L0, str);
    }

    public void d(String str) {
        this.a.a(R6.N0, str);
    }

    public void e(String str) {
        this.a.a(com.ironsource.mediationsdk.metadata.a.j, str);
    }

    public void f(String str) {
        this.a.a(R6.b1, str);
    }

    public void g(String str) {
        this.a.a(R6.A, str);
    }

    public void h(String str) {
        this.a.a(R6.e1, str);
    }

    public void i(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.a.a(R6.e0, str);
    }
}
