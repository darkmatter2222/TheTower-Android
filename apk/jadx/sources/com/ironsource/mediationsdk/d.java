package com.ironsource.mediationsdk;

import android.os.Build;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.ironsource.B7;
import com.ironsource.C3516ba;
import com.ironsource.C3643ia;
import com.ironsource.C3652j2;
import com.ironsource.C3724n2;
import com.ironsource.C3768pa;
import com.ironsource.C3799r2;
import com.ironsource.C3801r4;
import com.ironsource.C3927y2;
import com.ironsource.C5;
import com.ironsource.D5;
import com.ironsource.InterfaceC3581f2;
import com.ironsource.Pb;
import com.ironsource.R6;
import com.ironsource.U0;
import com.ironsource.environment.ContextProvider;
import com.ironsource.environment.thread.IronSourceThreadManager;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class d {
    public static final boolean A = false;
    public static final String B = "loadGrace";
    private static d C = new d();
    public static final String c = "auctionId";
    public static final String d = "armData";
    public static final String e = "larmData";
    public static final String f = "isAdUnitCapped";
    public static final String g = "settings";
    public static final String h = "waterfall";
    public static final String i = "genericParams";
    public static final String j = "configurations";
    public static final String k = "instances";
    public static final String l = "${AUCTION_LOSS}";
    public static final String m = "${AUCTION_MBR}";
    public static final String n = "${AUCTION_PRICE}";
    public static final String o = "${DYNAMIC_DEMAND_SOURCE}";
    public static final String p = "${INSTANCE}";
    public static final String q = "${INSTANCE_TYPE}";
    public static final String r = "${PLACEMENT_NAME}";
    private static final String s = "adMarkup";
    private static final String t = "dynamicDemandSource";
    private static final String u = "params";
    public static final String v = "dlpl";
    public static final String w = "adUnit";
    public static final String x = "parallelLoad";
    public static final String y = "bidderExclusive";
    public static final String z = "showPriorityEnabled";
    private final AtomicBoolean a = new AtomicBoolean(false);
    private final B7 b = Pb.k0().a();

    public static class a {
        private String a;
        private List<C3927y2> b;
        private C3927y2 c;
        private JSONObject d;
        private JSONObject e;
        private int f;
        private String g;
        private InterfaceC3581f2 h;

        public a(String str) {
            this.a = str;
        }

        public com.ironsource.mediationsdk.demandOnly.p a(String str) {
            InterfaceC3581f2 interfaceC3581f2 = this.h;
            return interfaceC3581f2 != null ? interfaceC3581f2.a(str) : new com.ironsource.mediationsdk.demandOnly.p.b();
        }

        public String a() {
            return this.a;
        }

        public JSONObject b() {
            return this.e;
        }

        public int c() {
            return this.f;
        }

        public String d() {
            return this.g;
        }

        public C3927y2 e() {
            return this.c;
        }

        public JSONObject f() {
            return this.d;
        }

        public InterfaceC3581f2 g() {
            return this.h;
        }

        public List<C3927y2> h() {
            return this.b;
        }
    }

    static class b implements Runnable {
        private static final int d = 15000;
        private String a;
        private String b;
        private String c;

        public b(String str, String str2, String str3) {
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = this.a + ";" + this.b + ";" + this.c;
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.c).openConnection();
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setReadTimeout(d);
                httpURLConnection.setConnectTimeout(d);
                httpURLConnection.connect();
                int responseCode = httpURLConnection.getResponseCode();
                String responseMessage = httpURLConnection.getResponseMessage();
                httpURLConnection.disconnect();
                Pb.k0().q().a(new C5(responseCode == 200 || responseCode == 204 ? D5.TROUBLESHOOTING_SEND_AUCTION_URL_SUCCESS : D5.TROUBLESHOOTING_FAILED_TO_SEND_AUCTION_URL, new JSONObject().put(IronSourceConstants.EVENTS_PROVIDER, "Mediation").put(IronSourceConstants.EVENTS_PROGRAMMATIC, 1).put(IronSourceConstants.EVENTS_EXT1, str).put("errorCode", responseCode).put("reason", responseMessage)));
            } catch (Exception e) {
                C3801r4.d().a(e);
                IronLog.INTERNAL.error("Send auction url failed with params - " + str + ";" + e.getMessage());
            }
        }
    }

    private enum c {
        NOT_SECURE,
        SECURE
    }

    private c a() {
        c cVar = c.SECURE;
        if (Build.VERSION.SDK_INT >= 28) {
            return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted() ? c.NOT_SECURE : cVar;
        }
        return (ContextProvider.getInstance().getApplicationContext().getApplicationInfo().flags & 134217728) != 0 ? c.NOT_SECURE : cVar;
    }

    private String a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return "";
        }
        double d2 = Double.parseDouble(str);
        double d3 = Double.parseDouble(str2);
        return d3 == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE ? "" : String.valueOf(Math.round((d2 / d3) * 1000.0d) / 1000.0d);
    }

    public static d b() {
        return C;
    }

    public a a(JSONObject jSONObject) throws JSONException {
        String strOptString = jSONObject.optString("auctionId");
        if (TextUtils.isEmpty(strOptString)) {
            throw new JSONException("Invalid auction response - auction id is missing");
        }
        a aVar = new a(strOptString);
        JSONObject jSONObjectOptJSONObject = null;
        if (jSONObject.has("settings")) {
            JSONObject jSONObject2 = jSONObject.getJSONObject("settings");
            aVar.c = new C3927y2(jSONObject2);
            jSONObjectOptJSONObject = jSONObject2.has(d) ? jSONObject2.optJSONObject(d) : null;
            if (jSONObject2.has("genericParams")) {
                aVar.d = jSONObject2.optJSONObject("genericParams");
            }
            if (jSONObject2.has("configurations")) {
                aVar.e = jSONObject2.optJSONObject("configurations");
            }
            if (jSONObject2.has(k)) {
                aVar.h = new InterfaceC3581f2.a(jSONObject2.optJSONObject(k));
            }
        }
        aVar.b = new ArrayList();
        if (jSONObject.has(h)) {
            JSONArray jSONArray = jSONObject.getJSONArray(h);
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                C3927y2 c3927y2 = new C3927y2(jSONArray.getJSONObject(i2), i2, jSONObjectOptJSONObject);
                if (!c3927y2.n()) {
                    aVar.f = 1002;
                    aVar.g = "waterfall " + i2;
                    IronLog.INTERNAL.verbose("AuctionResponseItem " + i2 + " not valid - parsing error");
                    throw new JSONException("invalid response");
                }
                aVar.b.add(c3927y2);
            }
        }
        return aVar;
    }

    public String a(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("adMarkup")) {
                    return jSONObject.getString("adMarkup");
                }
            }
        } catch (JSONException e2) {
            C3801r4.d().a(e2);
            IronLog.INTERNAL.error("exception " + e2.getMessage());
        }
        return str;
    }

    public String a(String str, int i2, C3927y2 c3927y2, String str2, String str3, String str4) {
        String strI = c3927y2.i();
        return a(str, c3927y2.c(), i2, b().c(c3927y2.k()), strI, b().a(strI, str2), str3, str4);
    }

    public String a(String str, String str2, int i2, String str3, String str4, String str5, String str6, String str7) {
        return str.replace(n, str4).replace(l, str6).replace(m, str5).replace(p, str2).replace(q, Integer.toString(i2)).replace(o, str3).replace(r, str7);
    }

    JSONObject a(h hVar) throws JSONException {
        int i2;
        IronSource.a aVarC = hVar.c();
        boolean zU = hVar.u();
        Map<String, Object> mapH = hVar.h();
        List<String> listL = hVar.l();
        C3652j2 c3652j2E = hVar.e();
        int iP = hVar.p();
        ISBannerSize iSBannerSizeF = hVar.f();
        C3643ia c3643iaO = hVar.o();
        boolean zQ = hVar.q();
        boolean zR = hVar.r();
        ArrayList<C3799r2> arrayListK = hVar.k();
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        String strN = hVar.n();
        if (strN != null) {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(R6.y0, 1);
            jSONObject3.put(R6.B0, c3652j2E != null ? c3652j2E.a(strN) : "");
            jSONObject3.put(R6.C0, true);
            jSONObject2.put(strN, jSONObject3);
        }
        Iterator<String> it = mapH.keySet().iterator();
        while (true) {
            Iterator<String> it2 = it;
            if (!it.hasNext()) {
                break;
            }
            String next = it2.next();
            C3643ia c3643ia = c3643iaO;
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put(R6.y0, 2);
            Map<String, Object> map = mapH;
            jSONObject4.put(R6.p0, new JSONObject((Map) mapH.get(next)));
            jSONObject4.put(R6.B0, c3652j2E != null ? c3652j2E.a(next) : "");
            jSONObject4.put("ts", zR ? 1 : 0);
            jSONObject2.put(next, jSONObject4);
            it = it2;
            c3643iaO = c3643ia;
            mapH = map;
        }
        C3643ia c3643ia2 = c3643iaO;
        for (String str : listL) {
            JSONObject jSONObject5 = new JSONObject();
            jSONObject5.put(R6.y0, 1);
            jSONObject5.put(R6.B0, c3652j2E != null ? c3652j2E.a(str) : "");
            jSONObject2.put(str, jSONObject5);
        }
        for (C3799r2 c3799r2 : arrayListK) {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put(R6.y0, c3799r2.e() ? 2 : 1);
            Map<String, Object> mapF = c3799r2.f();
            if (!mapF.isEmpty()) {
                jSONObject6.put(R6.p0, new JSONObject(mapF));
            }
            jSONObject6.put(R6.B0, c3652j2E != null ? c3652j2E.a(c3799r2.g()) : "");
            jSONObject6.put("ts", zR ? 1 : 0);
            if (!c3799r2.h().isEmpty()) {
                jSONObject6.put(v, c3799r2.h());
            }
            jSONObject2.put(c3799r2.g(), jSONObject6);
        }
        jSONObject.put(R6.x0, jSONObject2);
        if (hVar.w()) {
            i2 = 1;
            jSONObject.put(R6.x1, 1);
        } else {
            i2 = 1;
        }
        if (hVar.t()) {
            jSONObject.put(R6.w1, i2);
        }
        new C3516ba().b(ContextProvider.getInstance().getApplicationContext());
        JSONObject jSONObjectA = new C3724n2(U0.a(aVarC)).a();
        a(jSONObjectA, false);
        jSONObjectA.put(R6.z0, iP);
        jSONObjectA.put(R6.A0, a().ordinal());
        if (c3643ia2 != null) {
            jSONObjectA.put(R6.j1, c3643ia2.i());
        }
        jSONObject.put(R6.u0, jSONObjectA);
        if (iSBannerSizeF != 0) {
            JSONObject jSONObject7 = new JSONObject();
            jSONObject7.put(R6.r0, iSBannerSizeF.getDescription());
            jSONObject7.put(R6.t0, iSBannerSizeF.getWidth());
            jSONObject7.put(R6.s0, iSBannerSizeF.getHeight());
            jSONObject.put(R6.q0, jSONObject7);
        }
        jSONObject.put(R6.l0, aVarC.toString());
        if (hVar.b() != null) {
            jSONObject.put("adf", hVar.b());
        }
        if (hVar.d() != null) {
            jSONObject.put("mediationAdUnitId", hVar.d());
        }
        if (hVar.v() != null) {
            jSONObject.put(R6.o0, hVar.v());
        }
        jSONObject.put(R6.v0, !zU ? 1 : 0);
        if (hVar.g() != null) {
            jSONObject.put(R6.t1, new JSONObject().put(R6.u1, hVar.g()));
        } else {
            Object objRemove = jSONObjectA.remove(R6.t1);
            if (objRemove != null) {
                jSONObject.put(R6.t1, objRemove);
            }
        }
        if (zQ) {
            jSONObject.put(R6.r1, 1);
        }
        return jSONObject;
    }

    public void a(String str, String str2, String str3) {
        IronSourceThreadManager.INSTANCE.postMediationBackgroundTask(new b(str, str2, str3));
    }

    public void a(JSONObject jSONObject, boolean z2) {
        if (jSONObject == null || jSONObject.length() <= 0 || TextUtils.isEmpty(jSONObject.optString(R6.l1)) || !this.a.compareAndSet(false, true)) {
            return;
        }
        Pb.k0().q().a(new C5(D5.TROUBLESHOOTING_MEDIATION_TCS_CALCULATED, IronSourceUtils.a(z2, true, -1)));
    }

    public Map<String, String> b(String str) {
        HashMap map = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("params")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("params");
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    Object obj = jSONObject2.get(next);
                    if (obj instanceof String) {
                        map.put(next, (String) obj);
                    }
                }
            }
        } catch (JSONException e2) {
            C3801r4.d().a(e2);
            IronLog.INTERNAL.error("exception " + e2.getMessage());
        }
        return map;
    }

    public String c(String str) {
        String string = "";
        try {
            if (TextUtils.isEmpty(str) || !C3768pa.a(str)) {
                return "";
            }
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.has("params")) {
                return "";
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("params");
            IronLog ironLog = IronLog.INTERNAL;
            ironLog.verbose("parameters = " + jSONObject2);
            if (!jSONObject2.has("dynamicDemandSource")) {
                return "";
            }
            string = jSONObject2.getString("dynamicDemandSource");
            ironLog.verbose("demand source = " + string);
            return string;
        } catch (JSONException e2) {
            C3801r4.d().a(e2);
            IronLog.INTERNAL.error("exception " + e2.getMessage());
            return string;
        }
    }
}
