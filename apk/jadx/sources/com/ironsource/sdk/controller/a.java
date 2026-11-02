package com.ironsource.sdk.controller;

import android.content.Context;
import android.text.TextUtils;
import com.ironsource.C3718me;
import com.ironsource.C3788q8;
import com.ironsource.C3801r4;
import com.ironsource.Gg;
import com.ironsource.InterfaceC3694l8;
import com.ironsource.InterfaceC3863ua;
import com.ironsource.dh;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class a implements InterfaceC3694l8 {
    private static final String d = "loadWithUrl";
    private static final String e = "sendMessage";
    public static final String f = "removeAdView";
    public static final String g = "webviewAction";
    public static final String h = "handleGetViewVisibility";
    private static final String i = "functionName";
    private static final String j = "functionParams";
    private static final String k = "success";
    private static final String l = "fail";
    public static final String m = "errMsg";
    private static final String n = "%s | unsupported AdViews API";
    private dh a;
    private C3788q8 b = C3788q8.a();
    private Context c;

    /* JADX INFO: renamed from: com.ironsource.sdk.controller.a$a, reason: collision with other inner class name */
    private static class C1120a {
        String a;
        JSONObject b;
        String c;
        String d;

        private C1120a() {
        }
    }

    public a(Context context) {
        this.c = context;
    }

    private C1120a a(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        C1120a c1120a = new C1120a();
        c1120a.a = jSONObject.optString("functionName");
        c1120a.b = jSONObject.optJSONObject("functionParams");
        c1120a.c = jSONObject.optString("success");
        c1120a.d = jSONObject.optString("fail");
        return c1120a;
    }

    public void a(dh dhVar) {
        this.a = dhVar;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x004a  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    void a(String str, InterfaceC3863ua interfaceC3863ua) throws Exception {
        a aVar;
        byte b;
        C1120a c1120aA = a(str);
        C3718me c3718me = new C3718me();
        try {
            String str2 = c1120aA.a;
            switch (str2.hashCode()) {
                case -1384357108:
                    if (!str2.equals(f)) {
                        b = -1;
                    } else {
                        b = 2;
                    }
                    break;
                case 691453791:
                    if (!str2.equals("sendMessage")) {
                        b = -1;
                    } else {
                        b = 1;
                    }
                    break;
                case 842351363:
                    if (!str2.equals("loadWithUrl")) {
                        b = -1;
                    } else {
                        b = 0;
                    }
                    break;
                case 1182065477:
                    if (!str2.equals("handleGetViewVisibility")) {
                        b = -1;
                    } else {
                        b = 3;
                    }
                    break;
                case 1491535759:
                    if (!str2.equals(g)) {
                        b = -1;
                    } else {
                        b = 4;
                    }
                    break;
                default:
                    b = -1;
                    break;
            }
            if (b == 0) {
                aVar = this;
                try {
                    this.b.a(aVar, c1120aA.b, this.c, c1120aA.c, c1120aA.d);
                    return;
                } catch (Exception e2) {
                    e = e2;
                    C3801r4.d().a(e);
                    c3718me.b("errMsg", e.getMessage());
                    String strC = aVar.b.c(c1120aA.b);
                    if (!TextUtils.isEmpty(strC)) {
                        c3718me.b("adViewId", strC);
                    }
                    interfaceC3863ua.a(false, c1120aA.d, c3718me);
                    return;
                }
            }
            if (b == 1) {
                this.b.d(c1120aA.b, c1120aA.c, c1120aA.d);
                return;
            }
            if (b == 2) {
                this.b.c(c1120aA.b, c1120aA.c, c1120aA.d);
            } else if (b == 3) {
                this.b.a(c1120aA.b, c1120aA.c, c1120aA.d);
            } else {
                if (b != 4) {
                    throw new IllegalArgumentException(String.format(n, c1120aA.a));
                }
                this.b.b(c1120aA.b, c1120aA.c, c1120aA.d);
            }
        } catch (Exception e3) {
            e = e3;
            aVar = this;
        }
    }

    @Override // com.ironsource.InterfaceC3694l8
    public void a(String str, String str2, String str3) {
        a(str, Gg.a(str2, str3));
    }

    @Override // com.ironsource.InterfaceC3694l8
    public void a(String str, JSONObject jSONObject) {
        if (this.a == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.a.a(str, jSONObject);
    }
}
