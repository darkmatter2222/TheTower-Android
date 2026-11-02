package com.ironsource.sdk.controller;

import android.app.Activity;
import android.content.Context;
import com.ironsource.C3801r4;
import com.ironsource.C3843t8;
import com.ironsource.InterfaceC3893w4;
import com.ironsource.InterfaceC3911x4;
import com.ironsource.InterfaceC3929y4;
import com.ironsource.V7;
import com.ironsource.X4;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class n implements l {
    private final V7 a;
    private final String b;

    class a implements Runnable {
        final /* synthetic */ l.a a;
        final /* synthetic */ com.ironsource.sdk.controller.f.c b;

        a(l.a aVar, com.ironsource.sdk.controller.f.c cVar) {
            this.a = aVar;
            this.b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (this.a == null) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("success", false);
                jSONObject.put("reason", n.this.b);
                this.a.a(new com.ironsource.sdk.controller.f.a(this.b.f(), jSONObject));
            } catch (JSONException e) {
                C3801r4.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
        }
    }

    class b implements Runnable {
        final /* synthetic */ InterfaceC3929y4 a;
        final /* synthetic */ X4 b;

        b(InterfaceC3929y4 interfaceC3929y4, X4 x4) {
            this.a = interfaceC3929y4;
            this.b = x4;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a(C3843t8.e.RewardedVideo, this.b.h(), n.this.b);
        }
    }

    class c implements Runnable {
        final /* synthetic */ InterfaceC3929y4 a;
        final /* synthetic */ JSONObject b;

        c(InterfaceC3929y4 interfaceC3929y4, JSONObject jSONObject) {
            this.a = interfaceC3929y4;
            this.b = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.b(this.b.optString("demandSourceName"), n.this.b);
        }
    }

    class d implements Runnable {
        final /* synthetic */ InterfaceC3911x4 a;
        final /* synthetic */ X4 b;

        d(InterfaceC3911x4 interfaceC3911x4, X4 x4) {
            this.a = interfaceC3911x4;
            this.b = x4;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a(C3843t8.e.Interstitial, this.b.h(), n.this.b);
        }
    }

    class e implements Runnable {
        final /* synthetic */ InterfaceC3911x4 a;
        final /* synthetic */ String b;

        e(InterfaceC3911x4 interfaceC3911x4, String str) {
            this.a = interfaceC3911x4;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a(this.b, n.this.b);
        }
    }

    class f implements Runnable {
        final /* synthetic */ InterfaceC3911x4 a;
        final /* synthetic */ X4 b;

        f(InterfaceC3911x4 interfaceC3911x4, X4 x4) {
            this.a = interfaceC3911x4;
            this.b = x4;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a(this.b.h(), n.this.b);
        }
    }

    class g implements Runnable {
        final /* synthetic */ InterfaceC3911x4 a;
        final /* synthetic */ JSONObject b;

        g(InterfaceC3911x4 interfaceC3911x4, JSONObject jSONObject) {
            this.a = interfaceC3911x4;
            this.b = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.d(this.b.optString("demandSourceName"), n.this.b);
        }
    }

    class h implements Runnable {
        final /* synthetic */ InterfaceC3911x4 a;
        final /* synthetic */ X4 b;

        h(InterfaceC3911x4 interfaceC3911x4, X4 x4) {
            this.a = interfaceC3911x4;
            this.b = x4;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.d(this.b.h(), n.this.b);
        }
    }

    class i implements Runnable {
        final /* synthetic */ InterfaceC3893w4 a;
        final /* synthetic */ Map b;

        i(InterfaceC3893w4 interfaceC3893w4, Map map) {
            this.a = interfaceC3893w4;
            this.b = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.c((String) this.b.get("demandSourceName"), n.this.b);
        }
    }

    class j implements Runnable {
        final /* synthetic */ InterfaceC3893w4 a;
        final /* synthetic */ JSONObject b;

        j(InterfaceC3893w4 interfaceC3893w4, JSONObject jSONObject) {
            this.a = interfaceC3893w4;
            this.b = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.c(this.b.optString("demandSourceName"), n.this.b);
        }
    }

    n(String str, V7 v7) {
        this.a = v7;
        this.b = str;
    }

    @Override // com.ironsource.sdk.controller.l
    public void a() {
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(Activity activity) {
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(Context context) {
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(X4 x4) {
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(X4 x4, Map<String, String> map, InterfaceC3893w4 interfaceC3893w4) {
        if (interfaceC3893w4 != null) {
            a(new i(interfaceC3893w4, map));
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(X4 x4, Map<String, String> map, InterfaceC3911x4 interfaceC3911x4) {
        if (interfaceC3911x4 != null) {
            a(new h(interfaceC3911x4, x4));
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(com.ironsource.sdk.controller.f.c cVar, l.a aVar) {
        a(new a(aVar, cVar));
    }

    void a(Runnable runnable) {
        V7 v7 = this.a;
        if (v7 != null) {
            v7.c(runnable);
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(String str, InterfaceC3911x4 interfaceC3911x4) {
        if (interfaceC3911x4 != null) {
            a(new e(interfaceC3911x4, str));
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(String str, String str2, X4 x4, InterfaceC3893w4 interfaceC3893w4) {
        if (interfaceC3893w4 != null) {
            interfaceC3893w4.a(C3843t8.e.Banner, x4.h(), this.b);
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(String str, String str2, X4 x4, InterfaceC3911x4 interfaceC3911x4) {
        if (interfaceC3911x4 != null) {
            a(new d(interfaceC3911x4, x4));
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(String str, String str2, X4 x4, InterfaceC3929y4 interfaceC3929y4) {
        if (interfaceC3929y4 != null) {
            a(new b(interfaceC3929y4, x4));
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(JSONObject jSONObject) {
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(JSONObject jSONObject, InterfaceC3893w4 interfaceC3893w4) {
        if (interfaceC3893w4 != null) {
            a(new j(interfaceC3893w4, jSONObject));
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(JSONObject jSONObject, InterfaceC3911x4 interfaceC3911x4) {
        if (interfaceC3911x4 != null) {
            a(new g(interfaceC3911x4, jSONObject));
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(JSONObject jSONObject, InterfaceC3929y4 interfaceC3929y4) {
        if (interfaceC3929y4 != null) {
            a(new c(interfaceC3929y4, jSONObject));
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public boolean a(String str) {
        return false;
    }

    @Override // com.ironsource.sdk.controller.l
    public void b() {
    }

    @Override // com.ironsource.sdk.controller.l
    public void b(Context context) {
    }

    @Override // com.ironsource.sdk.controller.l
    public void b(X4 x4) {
    }

    @Override // com.ironsource.sdk.controller.l
    public void b(X4 x4, Map<String, String> map, InterfaceC3911x4 interfaceC3911x4) {
        if (interfaceC3911x4 != null) {
            a(new f(interfaceC3911x4, x4));
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void b(JSONObject jSONObject) {
    }

    @Override // com.ironsource.sdk.controller.l
    public void e() {
    }

    @Override // com.ironsource.sdk.controller.l
    public void f() {
    }

    @Override // com.ironsource.sdk.controller.l
    public void g() {
    }

    @Override // com.ironsource.sdk.controller.l
    public C3843t8.c h() {
        return C3843t8.c.Native;
    }
}
