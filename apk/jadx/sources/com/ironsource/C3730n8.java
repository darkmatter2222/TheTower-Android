package com.ironsource;

import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import com.ironsource.mediationsdk.logger.IronLog;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.n8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C3730n8 {
    private InterfaceC3694l8 a;
    private WebView c;
    private String d;
    private String e = "n8";
    private String[] f = {"handleGetViewVisibility"};
    private final String[] g = {C3658j8.h, C3658j8.i, C3658j8.g, "handleGetViewVisibility", C3658j8.j};
    private Cg b = new Cg();

    /* JADX INFO: renamed from: com.ironsource.n8$a */
    class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;
        final /* synthetic */ JSONObject d;

        a(String str, String str2, String str3, JSONObject jSONObject) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (!C3730n8.this.b(this.a)) {
                    String str = "ISNAdViewLogic | handleMessageFromController | cannot handle command: " + this.a;
                    Log.e(C3730n8.this.e, str);
                    C3730n8.this.a(this.b, str);
                } else if (this.a.equalsIgnoreCase("handleGetViewVisibility")) {
                    C3730n8.this.e(this.c);
                } else if (this.a.equalsIgnoreCase(C3658j8.j) || this.a.equalsIgnoreCase(C3658j8.i)) {
                    C3730n8.this.a(this.d.getString("params"), this.c, this.b);
                }
            } catch (Exception e) {
                C3801r4.d().a(e);
                IronLog.INTERNAL.error(e.toString());
                String str2 = "ISNAdViewLogic | handleMessageFromController | Error while trying handle message: " + this.a;
                Log.e(C3730n8.this.e, str2);
                C3730n8.this.a(this.b, str2);
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.n8$b */
    class b implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;

        b(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                C3730n8.this.c.evaluateJavascript(this.a, null);
            } catch (Throwable th) {
                C3801r4.d().a(th);
                Log.e(C3730n8.this.e, "injectJavaScriptIntoWebView | Error while trying inject JS into external adUnit: " + this.b + "Android API level: " + Build.VERSION.SDK_INT);
            }
        }
    }

    private String a(String str) {
        return String.format(C3658j8.u, str);
    }

    private JSONObject a(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("id", jSONObject.getString("id"));
            jSONObject2.put("data", this.b.a());
            return jSONObject2;
        } catch (Exception e) {
            C3801r4.d().a(e);
            Log.e(this.e, "Error while trying execute method buildVisibilityMessageForAdUnit | params: " + jSONObject);
            IronLog.INTERNAL.error(e.toString());
            return jSONObject2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(String str) {
        for (String str2 : this.g) {
            if (str2.equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    private void d() {
        if (this.a == null || this.b == null) {
            return;
        }
        a(C3658j8.a, a());
    }

    private void d(String str) {
        V7.a.d(new b("javascript:try{" + str + "}catch(e){console.log(\"JS exception: \" + JSON.stringify(e));}", str));
    }

    private boolean h(String str) {
        for (String str2 : this.f) {
            if (str2.equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    private boolean i(String str) {
        return str.equalsIgnoreCase(C3658j8.k);
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(C3658j8.s, this.b.a());
            jSONObject.put(C3658j8.p, jSONObject2);
            jSONObject.put("adViewId", c());
            return jSONObject;
        } catch (JSONException e) {
            C3801r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return new JSONObject();
        }
    }

    public void a(WebView webView) {
        this.c = webView;
    }

    public void a(InterfaceC3694l8 interfaceC3694l8) {
        this.a = interfaceC3694l8;
    }

    public void a(String str, int i, boolean z) {
        this.b.a(str, i, z);
        if (i(str)) {
            d();
        }
    }

    public void a(String str, String str2) {
        InterfaceC3694l8 interfaceC3694l8 = this.a;
        if (interfaceC3694l8 != null) {
            interfaceC3694l8.a(str, str2, this.d);
        }
    }

    public void a(String str, String str2, String str3) throws JSONException {
        if (this.c == null) {
            String str4 = "No external adUnit attached to ISNAdView while trying to send message: " + str;
            Log.e(this.e, str4);
            this.a.a(str3, str4, this.d);
            return;
        }
        try {
            new JSONObject(str);
        } catch (JSONException e) {
            C3801r4.d().a(e);
            str = "\"" + str + "\"";
        }
        d(a(str));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("adViewId", this.d);
        a(str2, jSONObject);
    }

    public void a(String str, JSONObject jSONObject) {
        InterfaceC3694l8 interfaceC3694l8 = this.a;
        if (interfaceC3694l8 != null) {
            interfaceC3694l8.a(str, jSONObject);
        }
    }

    void a(String str, JSONObject jSONObject, String str2, String str3) {
        if (this.a == null) {
            A8.a(C3700le.t, new C3879v8().a(G5.y, "mDelegate is null").a());
        } else {
            V7.a.d(new a(str, str3, str2, jSONObject));
        }
    }

    public void a(JSONObject jSONObject, String str, String str2) throws JSONException {
        a(a(jSONObject).toString(), str, str2);
    }

    public void b() {
        this.a = null;
        this.b = null;
    }

    public String c() {
        return this.d;
    }

    public void c(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("method");
            if (TextUtils.isEmpty(strOptString) || !h(strOptString)) {
                a(jSONObject.optString(C3658j8.v, C3658j8.c), jSONObject);
            } else if (strOptString.equalsIgnoreCase("handleGetViewVisibility")) {
                a(jSONObject, (String) null, (String) null);
            }
        } catch (JSONException e) {
            C3801r4.d().a(e);
            Log.e(this.e, "ISNAdViewLogic | receiveMessageFromExternal | Error while trying handle message: " + str);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    public void e() {
        if (this.a == null || this.b == null) {
            return;
        }
        a(C3658j8.b, a());
    }

    public void e(String str) throws JSONException {
        JSONObject jSONObjectA = this.b.a();
        jSONObjectA.put("adViewId", this.d);
        a(str, jSONObjectA);
    }

    public void f(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("adViewId", this.d);
            a(str, jSONObject);
        } catch (JSONException e) {
            C3801r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    public void g(String str) {
        this.d = str;
    }
}
