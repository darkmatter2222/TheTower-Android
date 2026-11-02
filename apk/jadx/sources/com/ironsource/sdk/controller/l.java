package com.ironsource.sdk.controller;

import android.app.Activity;
import android.content.Context;
import com.ironsource.C3843t8;
import com.ironsource.InterfaceC3893w4;
import com.ironsource.InterfaceC3911x4;
import com.ironsource.InterfaceC3929y4;
import com.ironsource.Sb;
import com.ironsource.X4;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public interface l {

    public interface a {
        void a(f.a aVar);
    }

    public interface b {
        void a(Sb sb);
    }

    void a();

    void a(Activity activity);

    void a(Context context);

    void a(X4 x4);

    void a(X4 x4, Map<String, String> map, InterfaceC3893w4 interfaceC3893w4);

    void a(X4 x4, Map<String, String> map, InterfaceC3911x4 interfaceC3911x4);

    void a(f.c cVar, a aVar);

    void a(String str, InterfaceC3911x4 interfaceC3911x4);

    void a(String str, String str2, X4 x4, InterfaceC3893w4 interfaceC3893w4);

    void a(String str, String str2, X4 x4, InterfaceC3911x4 interfaceC3911x4);

    void a(String str, String str2, X4 x4, InterfaceC3929y4 interfaceC3929y4);

    void a(JSONObject jSONObject);

    void a(JSONObject jSONObject, InterfaceC3893w4 interfaceC3893w4);

    void a(JSONObject jSONObject, InterfaceC3911x4 interfaceC3911x4);

    void a(JSONObject jSONObject, InterfaceC3929y4 interfaceC3929y4);

    boolean a(String str);

    void b();

    void b(Context context);

    void b(X4 x4);

    void b(X4 x4, Map<String, String> map, InterfaceC3911x4 interfaceC3911x4);

    void b(JSONObject jSONObject);

    void e();

    @Deprecated
    void f();

    void g();

    C3843t8.c h();
}
