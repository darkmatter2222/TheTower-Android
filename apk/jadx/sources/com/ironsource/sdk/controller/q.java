package com.ironsource.sdk.controller;

import android.content.Context;
import com.ironsource.C3718me;
import com.ironsource.C3801r4;
import com.ironsource.InterfaceC3863ua;
import com.ironsource.M1;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.sdk.utils.Logger;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class q {
    private static final String b = "q";
    private static final String c = "getPermissions";
    private static final String d = "isPermissionGranted";
    private static final String e = "permissions";
    private static final String f = "permission";
    private static final String g = "status";
    private static final String h = "functionName";
    private static final String i = "functionParams";
    private static final String j = "success";
    private static final String k = "fail";
    private static final String l = "unhandledPermission";
    private Context a;

    private static class a {
        String a;
        JSONObject b;
        String c;
        String d;

        private a() {
        }
    }

    public q(Context context) {
        this.a = context;
    }

    private a a(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        a aVar = new a();
        aVar.a = jSONObject.optString("functionName");
        aVar.b = jSONObject.optJSONObject("functionParams");
        aVar.c = jSONObject.optString("success");
        aVar.d = jSONObject.optString("fail");
        return aVar;
    }

    void a(String str, InterfaceC3863ua interfaceC3863ua) throws Exception {
        a aVarA = a(str);
        if (c.equals(aVarA.a)) {
            a(aVarA.b, aVarA, interfaceC3863ua);
        } else if (d.equals(aVarA.a)) {
            b(aVarA.b, aVarA, interfaceC3863ua);
        } else {
            Logger.i(b, "PermissionsJSAdapter unhandled API request " + str);
        }
    }

    public void a(JSONObject jSONObject, a aVar, InterfaceC3863ua interfaceC3863ua) {
        C3718me c3718me = new C3718me();
        try {
            c3718me.a(e, M1.a(this.a, jSONObject.getJSONArray(e)));
            interfaceC3863ua.a(true, aVar.c, c3718me);
        } catch (Exception e2) {
            C3801r4.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
            Logger.i(b, "PermissionsJSAdapter getPermissions JSON Exception when getting permissions parameter " + e2.getMessage());
            c3718me.b("errMsg", e2.getMessage());
            interfaceC3863ua.a(false, aVar.d, c3718me);
        }
    }

    public void b(JSONObject jSONObject, a aVar, InterfaceC3863ua interfaceC3863ua) {
        C3718me c3718me = new C3718me();
        try {
            String string = jSONObject.getString(f);
            c3718me.b(f, string);
            if (M1.d(this.a, string)) {
                c3718me.b("status", String.valueOf(M1.c(this.a, string)));
                interfaceC3863ua.a(true, aVar.c, c3718me);
            } else {
                c3718me.b("status", l);
                interfaceC3863ua.a(false, aVar.d, c3718me);
            }
        } catch (Exception e2) {
            C3801r4.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
            c3718me.b("errMsg", e2.getMessage());
            interfaceC3863ua.a(false, aVar.d, c3718me);
        }
    }
}
