package com.ironsource.sdk.controller;

import android.content.Context;
import com.ironsource.B7;
import com.ironsource.C3510b4;
import com.ironsource.C3718me;
import com.ironsource.InterfaceC3863ua;
import com.ironsource.Pb;
import com.ironsource.sdk.utils.Logger;
import com.ironsource.sdk.utils.SDKUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class i {
    private static final String c = "i";
    private static final String d = "getDeviceData";
    private static final String e = "deviceDataFunction";
    private static final String f = "deviceDataParams";
    private static final String g = "success";
    private static final String h = "fail";
    private Context a;
    private final B7 b = Pb.k0().a();

    private static class a {
        String a;
        JSONObject b;
        String c;
        String d;

        private a() {
        }
    }

    public i(Context context) {
        this.a = context;
    }

    private C3718me a() {
        C3718me c3718me = new C3718me();
        c3718me.b(SDKUtils.encodeString(C3510b4.j.i0), SDKUtils.encodeString(String.valueOf(this.b.j())));
        c3718me.b(SDKUtils.encodeString(C3510b4.j.j0), SDKUtils.encodeString(String.valueOf(this.b.r(this.a))));
        c3718me.b(SDKUtils.encodeString(C3510b4.j.k0), SDKUtils.encodeString(String.valueOf(this.b.D(this.a))));
        c3718me.b(SDKUtils.encodeString(C3510b4.j.l0), SDKUtils.encodeString(String.valueOf(this.b.E(this.a))));
        c3718me.b(SDKUtils.encodeString(C3510b4.j.m0), SDKUtils.encodeString(String.valueOf(this.b.f(this.a))));
        c3718me.b(SDKUtils.encodeString(C3510b4.j.n0), SDKUtils.encodeString(String.valueOf(this.b.i(this.a))));
        return c3718me;
    }

    private a a(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        a aVar = new a();
        aVar.a = jSONObject.optString(e);
        aVar.b = jSONObject.optJSONObject(f);
        aVar.c = jSONObject.optString("success");
        aVar.d = jSONObject.optString("fail");
        return aVar;
    }

    void a(String str, InterfaceC3863ua interfaceC3863ua) throws Exception {
        a aVarA = a(str);
        if (d.equals(aVarA.a)) {
            interfaceC3863ua.a(true, aVarA.c, a());
        } else {
            Logger.i(c, "unhandled API request " + str);
        }
    }
}
