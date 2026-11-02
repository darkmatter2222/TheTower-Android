package com.ironsource;

import android.content.Context;
import android.text.TextUtils;
import com.ironsource.adapters.applovin.AppLovinConstants;
import com.ironsource.sdk.utils.Logger;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class B4 {
    private static final String c = "B4";
    private static final String d = "setSharedSignal";
    private static final String e = "getSharedSignal";
    private static final String f = "functionName";
    private static final String g = "functionParams";
    private static final String h = "success";
    private static final String i = "fail";
    private final Context a;
    A4 b;

    private static class a {
        String a;
        JSONObject b;
        String c;
        String d;

        private a() {
        }

        public static a a(JSONObject jSONObject) {
            a aVar = new a();
            aVar.a = jSONObject.optString("functionName");
            aVar.b = jSONObject.optJSONObject("functionParams");
            aVar.c = jSONObject.optString("success");
            aVar.d = jSONObject.optString("fail");
            return aVar;
        }
    }

    public B4(Context context, A4 a4) {
        this.a = context;
        this.b = a4;
    }

    private a a(String str) throws JSONException {
        return a.a(new JSONObject(str));
    }

    private void a(Context context, a aVar, InterfaceC3863ua interfaceC3863ua) {
        C3718me c3718me = new C3718me();
        JSONObject jSONObject = aVar.b;
        c3718me.b("data", this.b.a(context, EnumC3947z4.a(jSONObject.optString("source")), jSONObject.optString(C3510b4.i.W)));
        interfaceC3863ua.a(true, aVar.c, c3718me);
    }

    private void a(a aVar, InterfaceC3863ua interfaceC3863ua, Exception exc) {
        C3801r4.d().a(exc);
        String message = exc.getMessage();
        Logger.i(c, aVar.a + " exception " + message);
        C3718me c3718me = new C3718me();
        if (TextUtils.isEmpty(message)) {
            message = AppLovinConstants.Logs.ERROR_UNKNOWN;
        }
        c3718me.b("error", message);
        interfaceC3863ua.a(false, aVar.d, c3718me);
    }

    private void b(Context context, a aVar, InterfaceC3863ua interfaceC3863ua) {
        C3718me c3718me = new C3718me();
        JSONObject jSONObject = aVar.b;
        this.b.a(context, EnumC3947z4.a(jSONObject.optString("source")), jSONObject.optString(C3510b4.i.W), jSONObject.optString("data"));
        interfaceC3863ua.a(true, aVar.c, c3718me);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002c  */
    public void a(String str, InterfaceC3863ua interfaceC3863ua) throws Exception {
        byte b;
        a aVarA = a(str);
        try {
            String str2 = aVarA.a;
            int iHashCode = str2.hashCode();
            if (iHashCode != 576059875) {
                if (iHashCode == 1486812399 && str2.equals(d)) {
                    b = 0;
                } else {
                    b = -1;
                }
            } else if (str2.equals(e)) {
                b = 1;
            } else {
                b = -1;
            }
            if (b == 0) {
                b(this.a, aVarA, interfaceC3863ua);
            } else {
                if (b != 1) {
                    throw new UnsupportedOperationException("unsupported API: " + str);
                }
                a(this.a, aVarA, interfaceC3863ua);
            }
        } catch (Exception e2) {
            a(aVarA, interfaceC3863ua, e2);
        }
    }
}
