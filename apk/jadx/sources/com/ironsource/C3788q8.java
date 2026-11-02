package com.ironsource;

import android.content.Context;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.sdk.utils.IronSourceStorageUtils;
import com.ironsource.sdk.utils.Logger;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.q8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C3788q8 implements InterfaceC3507b1 {
    private static final String b = "q8";
    private static C3788q8 c;
    private final Map<String, L8> a = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: com.ironsource.q8$a */
    class a implements Runnable {
        final /* synthetic */ C3766p8 a;
        final /* synthetic */ Context b;
        final /* synthetic */ String c;

        a(C3766p8 c3766p8, Context context, String str) {
            this.a = c3766p8;
            this.b = context;
            this.c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3788q8.this.a.put(this.c, new C3676k8(this.a, this.b));
        }
    }

    private C3641i8 a(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject(jSONObject.getString(C3510b4.i.O));
            String string = jSONObject2.get("height").toString();
            String string2 = jSONObject2.get("width").toString();
            return new C3641i8(Integer.parseInt(string2), Integer.parseInt(string), jSONObject2.get("label").toString());
        } catch (Exception e) {
            C3801r4.d().a(e);
            return new C3641i8();
        }
    }

    public static synchronized C3788q8 a() {
        if (c == null) {
            c = new C3788q8();
        }
        return c;
    }

    private C3641i8 b(JSONObject jSONObject) {
        C3641i8 c3641i8 = new C3641i8();
        try {
            return a(jSONObject);
        } catch (Exception e) {
            C3801r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return c3641i8;
        }
    }

    private boolean d(JSONObject jSONObject) {
        return jSONObject.optBoolean(C3510b4.i.s0);
    }

    @Override // com.ironsource.InterfaceC3507b1
    public L8 a(String str) {
        if (str.isEmpty() || !this.a.containsKey(str)) {
            return null;
        }
        return this.a.get(str);
    }

    public void a(InterfaceC3694l8 interfaceC3694l8, JSONObject jSONObject, Context context, String str, String str2) throws Exception {
        String string = jSONObject.getString("adViewId");
        if (string.isEmpty()) {
            Logger.i(b, "loadWithUrl fail - adViewId is empty");
            throw new Exception("adViewId is empty");
        }
        C3641i8 c3641i8B = b(jSONObject);
        if (this.a.containsKey(string)) {
            Logger.i(b, "sendMessageToAd fail - collection already contain adViewId");
            throw new Exception("collection already contain adViewId");
        }
        C3766p8 c3766p8 = new C3766p8(interfaceC3694l8, context, string, c3641i8B);
        c3766p8.e(IronSourceStorageUtils.getNetworkStorageDir(context));
        c3766p8.b(jSONObject, str, str2);
        if (d(jSONObject)) {
            V7.a.d(new a(c3766p8, context, string));
        } else {
            this.a.put(string, c3766p8);
        }
    }

    public void a(JSONObject jSONObject, String str, String str2) throws Exception {
        String string = jSONObject.getString("adViewId");
        if (string.isEmpty()) {
            Logger.i(b, "removeAdView fail - adViewId is empty");
            throw new Exception("adViewId is empty");
        }
        if (!this.a.containsKey(string)) {
            Logger.i(b, "removeAdView fail - collection does not contain adViewId");
            throw new Exception("collection does not contain adViewId");
        }
        L8 l8 = this.a.get(string);
        if (l8 != null) {
            l8.a(jSONObject, str, str2);
        }
    }

    public void b(JSONObject jSONObject, String str, String str2) throws Exception {
        String string = jSONObject.getString("adViewId");
        if (string.isEmpty()) {
            Logger.i(b, "performWebViewAction fail - adViewId is empty");
            throw new Exception("adViewId is empty");
        }
        if (!this.a.containsKey(string)) {
            Logger.i(b, "performWebViewAction fail - collection does not contain adViewId");
            throw new Exception("collection does not contain adViewId");
        }
        L8 l8 = this.a.get(string);
        String string2 = jSONObject.getString(C3510b4.i.v0);
        if (l8 != null) {
            l8.a(string2, str, str2);
        }
    }

    public String c(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null || !jSONObject.has("adViewId")) {
            return (jSONObject == null || !jSONObject.has("params")) ? "" : new JSONObject(jSONObject.getString("params")).getString("adViewId");
        }
        return jSONObject.getString("adViewId");
    }

    public void c(JSONObject jSONObject, String str, String str2) throws Exception {
        String string = jSONObject.getString("adViewId");
        if (string.isEmpty()) {
            Logger.i(b, "removeAdView fail - adViewId is empty");
            throw new Exception("adViewId is empty");
        }
        if (!this.a.containsKey(string)) {
            Logger.i(b, "removeAdView fail - collection does not contain adViewId");
            throw new Exception("collection does not contain adViewId");
        }
        L8 l8 = this.a.get(string);
        this.a.remove(string);
        if (l8 != null) {
            l8.a(str, str2);
        }
    }

    public void d(JSONObject jSONObject, String str, String str2) throws Exception {
        String string = new JSONObject(jSONObject.getString("params")).getString("adViewId");
        if (string.isEmpty()) {
            Logger.i(b, "sendMessageToAd fail - adViewId is empty");
            throw new Exception("adViewId is empty");
        }
        if (!this.a.containsKey(string)) {
            Logger.i(b, "sendMessageToAd fail - collection does not contain adViewId");
            throw new Exception("collection does not contain adViewId");
        }
        L8 l8 = this.a.get(string);
        if (l8 != null) {
            l8.c(jSONObject, str, str2);
        }
    }
}
