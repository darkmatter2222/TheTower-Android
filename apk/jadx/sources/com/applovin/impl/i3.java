package com.applovin.impl;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import androidx.core.internal.view.SupportMenu;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.MaxAdViewAdapter;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxAppOpenAdapter;
import com.applovin.mediation.adapter.MaxInterstitialAdapter;
import com.applovin.mediation.adapter.MaxNativeAdAdapter;
import com.applovin.mediation.adapter.MaxRewardedAdapter;
import com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener;
import com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters;
import com.tapjoy.TJAdUnitConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class i3 implements Comparable, AppLovinCommunicatorSubscriber {
    private final List A;
    private final List B;
    private final List C;
    private final List D;
    private final Map E;
    private final boolean F;
    private final g7 G;
    private final boolean H;
    private final String I;
    private final Map J;
    private final com.applovin.impl.sdk.l a;
    private final a b;
    private int c;
    private final boolean d;
    private final boolean e;
    private final boolean f;
    private final boolean g;
    private boolean h;
    private final boolean i;
    private final boolean j;
    private final boolean k;
    private final boolean l;
    private final boolean m;
    private final boolean n;
    private final boolean o;
    private final String p;
    private final String q;
    private String r;
    private String s;
    private final String t;
    private final String u;
    private final String v;
    private final String w;
    private final int x;
    private final List y;
    private final List z;

    public enum a {
        MISSING("MISSING"),
        INCOMPLETE_INTEGRATION("INCOMPLETE INTEGRATION"),
        INVALID_INTEGRATION("INVALID INTEGRATION"),
        COMPLETE("COMPLETE");

        private final String a;

        a(String str) {
            this.a = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String b() {
            return this.a;
        }
    }

    public enum b {
        NOT_SUPPORTED("Not Supported", SupportMenu.CATEGORY_MASK, "This network does not support test mode."),
        INVALID_INTEGRATION("Invalid Integration", SupportMenu.CATEGORY_MASK, "Please address all the integration issue(s) marked in red above."),
        NOT_INITIALIZED("Not Initialized", SupportMenu.CATEGORY_MASK, "Please configure this network in your MAX dashboard."),
        DISABLED("Enable", -16776961, "Please re-launch the app to enable test ads."),
        READY("", -16776961, "");

        private final String a;
        private final int b;
        private final String c;

        b(String str, int i2, String str2) {
            this.a = str;
            this.b = i2;
            this.c = str2;
        }

        public String b() {
            return this.c;
        }

        public String c() {
            return this.a;
        }

        public int d() {
            return this.b;
        }
    }

    /* JADX WARN: Code duplicated, block: B:66:0x025b A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:68:0x025f  */
    /* JADX WARN: Code duplicated, block: B:71:0x0271  */
    /* JADX WARN: Code duplicated, block: B:72:0x027d  */
    /* JADX WARN: Code duplicated, block: B:75:0x02bf  */
    /* JADX WARN: Code duplicated, block: B:78:0x02ce  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v42 */
    /* JADX WARN: Type inference failed for: r0v54 */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r10v19 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v14 */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r4v1, types: [boolean] */
    public i3(JSONObject jSONObject, com.applovin.impl.sdk.l lVar) {
        ?? r17;
        String adapterVersion;
        String strA;
        ?? Equals;
        String string;
        ?? r10;
        ?? r14;
        boolean z;
        int iLastIndexOf;
        String lowerCase;
        Integer numA;
        JSONObject jSONObject2;
        String string2;
        ?? r11;
        ?? r15;
        ?? r12;
        this.a = lVar;
        String string3 = JsonUtils.getString(jSONObject, "name", "");
        this.p = string3;
        this.q = JsonUtils.getString(jSONObject, "display_name", "");
        this.r = JsonUtils.getString(jSONObject, "adapter_class", "");
        this.u = JsonUtils.getString(jSONObject, "latest_adapter_version", "");
        this.B = a(jSONObject);
        Boolean bool = Boolean.FALSE;
        this.k = JsonUtils.getBoolean(jSONObject, "hide_if_missing", bool).booleanValue();
        JSONObject jSONObject3 = JsonUtils.getJSONObject(jSONObject, "configuration", new JSONObject());
        this.z = a(jSONObject3, lVar);
        this.o = JsonUtils.getBoolean(jSONObject3, "java_8_required", bool).booleanValue();
        this.F = JsonUtils.getBoolean(jSONObject3, "hide_initialization_status", bool).booleanValue();
        this.n = JsonUtils.getBoolean(jSONObject3, "check_sdk_adapter_version_mismatch", Boolean.TRUE).booleanValue();
        this.C = JsonUtils.getList(jSONObject3, "live_network_filtering_names", null);
        JSONObject jSONObject4 = JsonUtils.getJSONObject(jSONObject3, "test_mode", new JSONObject());
        JSONObject jSONObject5 = JsonUtils.getJSONObject(jSONObject4, "network_names", (JSONObject) null);
        boolean z2 = false;
        if (jSONObject5 == null || jSONObject5.length() <= 0) {
            r17 = 0;
            this.D = Arrays.asList(string3);
            this.E = null;
        } else {
            ArrayList arrayList = new ArrayList(Arrays.asList(string3));
            HashMap map = new HashMap(jSONObject5.length());
            Iterator<String> itKeys = jSONObject5.keys();
            while (itKeys.hasNext()) {
                boolean z3 = z2;
                String next = itKeys.next();
                MaxAdFormat fromString = MaxAdFormat.formatFromString(next);
                String string4 = JsonUtils.getString(jSONObject5, next, null);
                if (fromString != null && !TextUtils.isEmpty(string4)) {
                    arrayList.add(string4);
                    map.put(fromString, string4);
                }
                z2 = z3;
            }
            r17 = z2;
            this.D = arrayList;
            this.E = map;
        }
        JSONObject jSONObject6 = JsonUtils.getJSONObject(jSONObject, "test_mode", new JSONObject());
        Boolean bool2 = Boolean.TRUE;
        this.i = JsonUtils.getBoolean(jSONObject6, "supported", bool2).booleanValue();
        this.j = JsonUtils.getBoolean(jSONObject, "test_mode_requires_init", Boolean.FALSE).booleanValue();
        this.v = JsonUtils.getString(jSONObject6, TJAdUnitConstants.String.MESSAGE, null);
        this.G = new g7(JsonUtils.getJSONObject(jSONObject3, "tcf_config"), this.q);
        List list = JsonUtils.getList(jSONObject, "existence_classes", null);
        if (list != null) {
            this.d = u7.a(list);
        } else {
            this.d = u7.a(JsonUtils.getString(jSONObject, "existence_class", ""));
        }
        List listA = Collections.EMPTY_LIST;
        String str = this.r;
        String string5 = JsonUtils.getString(jSONObject3, "init_adapter_class", null);
        if (string5 != null) {
            this.r = string5;
        }
        MaxAdapter maxAdapterA = a4.a(str, lVar);
        if (maxAdapterA != null) {
            this.e = true;
            try {
                adapterVersion = maxAdapterA.getAdapterVersion();
                try {
                    strA = a4.a(maxAdapterA);
                    try {
                        this.h = a4.a(maxAdapterA, this.r);
                        listA = a(maxAdapterA, JsonUtils.getBoolean(jSONObject4, "is_mrec_supported", bool2).booleanValue());
                        JSONObject jSONObject7 = JsonUtils.getJSONObject(jSONObject3, "native_ad_view_config", (JSONObject) null);
                        if (jSONObject7 != null) {
                            String string6 = JsonUtils.getString(jSONObject7, "min_adapter_version", null);
                            r11 = (string6 == null || u7.a(adapterVersion, string6) >= 0) ? 1 : r17;
                            try {
                                string = JsonUtils.getString(jSONObject7, "network_name", null);
                                r11 = r11;
                            } catch (Throwable th) {
                                th = th;
                                string = null;
                                com.applovin.impl.sdk.p.h("MediatedNetwork", "Failed to load adapter for network " + this.p + ". Please check that you have a compatible network SDK integrated. Error: " + th);
                                r15 = r11;
                                r12 = r17;
                                Class<?> cls = Class.forName(this.r);
                                Class<?>[] clsArr = new Class[3];
                                clsArr[r17] = MaxAdapterResponseParameters.class;
                                clsArr[1] = Activity.class;
                                clsArr[2] = MaxNativeAdAdapterListener.class;
                                Equals = cls.getMethod("loadNativeAd", clsArr).getDeclaringClass().equals(cls);
                                r10 = r12;
                                r14 = r15;
                                this.t = adapterVersion;
                                this.s = strA;
                                this.y = listA;
                                this.l = Equals;
                                this.m = r14;
                                this.w = string;
                                this.A = a(jSONObject3, adapterVersion, lVar);
                                this.g = u7.a(JsonUtils.getString(JsonUtils.getJSONObject(jSONObject, "alternative_network", (JSONObject) null), "adapter_class", ""));
                                this.b = a();
                                if (adapterVersion.equals(this.u)) {
                                    z = false;
                                } else {
                                    z = false;
                                }
                                this.f = z;
                                Context contextP = com.applovin.impl.sdk.l.p();
                                iLastIndexOf = this.p.lastIndexOf("_");
                                if (iLastIndexOf != -1) {
                                    lowerCase = this.p.toLowerCase().substring(0, iLastIndexOf);
                                } else {
                                    lowerCase = this.p.toLowerCase();
                                }
                                this.x = contextP.getResources().getIdentifier("applovin_ic_mediation_" + lowerCase, "drawable", contextP.getPackageName());
                                this.c = MaxAdapter.InitializationStatus.NOT_INITIALIZED.getCode();
                                AppLovinCommunicator.getInstance(contextP).subscribe(this, "adapter_initialization_status");
                                numA = lVar.U().a(this.r);
                                if (numA != null) {
                                    this.c = numA.intValue();
                                }
                                jSONObject2 = JsonUtils.getJSONObject(jSONObject3, "amazon_marketplace", (JSONObject) null);
                                if (jSONObject2 != null) {
                                }
                                this.H = false;
                                this.I = null;
                                this.J = null;
                                return;
                            }
                        } else {
                            string = null;
                            r11 = r17;
                        }
                        try {
                            boolean zIsBeta = maxAdapterA.isBeta();
                            r15 = r11 == true ? 1 : 0;
                            r12 = zIsBeta;
                        } catch (Throwable th2) {
                            th = th2;
                            com.applovin.impl.sdk.p.h("MediatedNetwork", "Failed to load adapter for network " + this.p + ". Please check that you have a compatible network SDK integrated. Error: " + th);
                            r15 = r11;
                            r12 = r17;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        string = null;
                        r11 = r17;
                        com.applovin.impl.sdk.p.h("MediatedNetwork", "Failed to load adapter for network " + this.p + ". Please check that you have a compatible network SDK integrated. Error: " + th);
                        r15 = r11;
                        r12 = r17;
                        Class<?> cls2 = Class.forName(this.r);
                        Class<?>[] clsArr2 = new Class[3];
                        clsArr2[r17] = MaxAdapterResponseParameters.class;
                        clsArr2[1] = Activity.class;
                        clsArr2[2] = MaxNativeAdAdapterListener.class;
                        Equals = cls2.getMethod("loadNativeAd", clsArr2).getDeclaringClass().equals(cls2);
                        r10 = r12;
                        r14 = r15;
                        this.t = adapterVersion;
                        this.s = strA;
                        this.y = listA;
                        this.l = Equals;
                        this.m = r14;
                        this.w = string;
                        this.A = a(jSONObject3, adapterVersion, lVar);
                        this.g = u7.a(JsonUtils.getString(JsonUtils.getJSONObject(jSONObject, "alternative_network", (JSONObject) null), "adapter_class", ""));
                        this.b = a();
                        if (adapterVersion.equals(this.u)) {
                            z = false;
                        } else {
                            z = false;
                        }
                        this.f = z;
                        Context contextP2 = com.applovin.impl.sdk.l.p();
                        iLastIndexOf = this.p.lastIndexOf("_");
                        if (iLastIndexOf != -1) {
                            lowerCase = this.p.toLowerCase().substring(0, iLastIndexOf);
                        } else {
                            lowerCase = this.p.toLowerCase();
                        }
                        this.x = contextP2.getResources().getIdentifier("applovin_ic_mediation_" + lowerCase, "drawable", contextP2.getPackageName());
                        this.c = MaxAdapter.InitializationStatus.NOT_INITIALIZED.getCode();
                        AppLovinCommunicator.getInstance(contextP2).subscribe(this, "adapter_initialization_status");
                        numA = lVar.U().a(this.r);
                        if (numA != null) {
                            this.c = numA.intValue();
                        }
                        jSONObject2 = JsonUtils.getJSONObject(jSONObject3, "amazon_marketplace", (JSONObject) null);
                        if (jSONObject2 != null) {
                        }
                        this.H = false;
                        this.I = null;
                        this.J = null;
                        return;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    strA = "";
                }
            } catch (Throwable th5) {
                th = th5;
                adapterVersion = "";
                strA = adapterVersion;
            }
            try {
                Class<?> cls3 = Class.forName(this.r);
                Class<?>[] clsArr3 = new Class[3];
                clsArr3[r17] = MaxAdapterResponseParameters.class;
                clsArr3[1] = Activity.class;
                clsArr3[2] = MaxNativeAdAdapterListener.class;
                Equals = cls3.getMethod("loadNativeAd", clsArr3).getDeclaringClass().equals(cls3);
                r10 = r12;
                r14 = r15;
            } catch (Throwable th6) {
                lVar.Q();
                if (com.applovin.impl.sdk.p.a()) {
                    lVar.Q().a("MediatedNetwork", "Failed to check if adapter overrides MaxNativeAdAdapter", th6);
                }
                Equals = r17;
                r10 = r12;
                r14 = r15;
            }
        } else {
            this.e = r17;
            adapterVersion = "";
            strA = adapterVersion;
            Equals = 0;
            string = null;
            r10 = 0;
            r14 = 0;
        }
        this.t = adapterVersion;
        this.s = strA;
        this.y = listA;
        this.l = Equals;
        this.m = r14;
        this.w = string;
        this.A = a(jSONObject3, adapterVersion, lVar);
        this.g = u7.a(JsonUtils.getString(JsonUtils.getJSONObject(jSONObject, "alternative_network", (JSONObject) null), "adapter_class", ""));
        this.b = a();
        if (adapterVersion.equals(this.u) || r10 != 0) {
            z = false;
        } else {
            z = true;
        }
        this.f = z;
        Context contextP3 = com.applovin.impl.sdk.l.p();
        iLastIndexOf = this.p.lastIndexOf("_");
        if (iLastIndexOf != -1) {
            lowerCase = this.p.toLowerCase().substring(0, iLastIndexOf);
        } else {
            lowerCase = this.p.toLowerCase();
        }
        this.x = contextP3.getResources().getIdentifier("applovin_ic_mediation_" + lowerCase, "drawable", contextP3.getPackageName());
        this.c = MaxAdapter.InitializationStatus.NOT_INITIALIZED.getCode();
        AppLovinCommunicator.getInstance(contextP3).subscribe(this, "adapter_initialization_status");
        numA = lVar.U().a(this.r);
        if (numA != null) {
            this.c = numA.intValue();
        }
        jSONObject2 = JsonUtils.getJSONObject(jSONObject3, "amazon_marketplace", (JSONObject) null);
        if (jSONObject2 != null || !this.d) {
            this.H = false;
            this.I = null;
            this.J = null;
            return;
        }
        this.H = true;
        this.I = JsonUtils.getString(jSONObject2, "test_mode_app_id", null);
        JSONObject jSONObject8 = JsonUtils.getJSONObject(jSONObject2, "test_mode_slot_ids", new JSONObject());
        HashMap map2 = new HashMap(jSONObject8.length());
        Iterator<String> itKeys2 = jSONObject8.keys();
        while (itKeys2.hasNext()) {
            String next2 = itKeys2.next();
            MaxAdFormat fromString2 = MaxAdFormat.formatFromString(next2);
            JSONObject jSONObject9 = JsonUtils.getJSONObject(jSONObject8, next2, (JSONObject) null);
            if (fromString2 != null && jSONObject9 != null && (string2 = JsonUtils.getString(jSONObject9, "uuid", null)) != null) {
                map2.put(fromString2, new x(string2, jSONObject9, fromString2));
            }
        }
        this.J = map2;
    }

    private a a() {
        a aVar;
        if (!this.d) {
            aVar = this.e ? a.INCOMPLETE_INTEGRATION : a.MISSING;
        } else if (this.e) {
            aVar = a.COMPLETE;
        } else {
            aVar = this.g ? a.MISSING : a.INCOMPLETE_INTEGRATION;
        }
        if (aVar == a.MISSING) {
            return aVar;
        }
        Iterator it = this.z.iterator();
        while (it.hasNext()) {
            if (!((u4) it.next()).c()) {
                return a.INVALID_INTEGRATION;
            }
        }
        Iterator it2 = this.A.iterator();
        while (it2.hasNext()) {
            if (!((l1) it2.next()).c()) {
                return a.INVALID_INTEGRATION;
            }
        }
        if (!this.o || com.applovin.impl.sdk.l.I0()) {
            return E() ? a.INCOMPLETE_INTEGRATION : aVar;
        }
        return a.INVALID_INTEGRATION;
    }

    private List a(MaxAdapter maxAdapter, boolean z) {
        ArrayList arrayList = new ArrayList(5);
        if (maxAdapter instanceof MaxInterstitialAdapter) {
            arrayList.add(MaxAdFormat.INTERSTITIAL);
        }
        if (maxAdapter instanceof MaxAppOpenAdapter) {
            arrayList.add(MaxAdFormat.APP_OPEN);
        }
        if (maxAdapter instanceof MaxRewardedAdapter) {
            arrayList.add(MaxAdFormat.REWARDED);
        }
        if (maxAdapter instanceof MaxAdViewAdapter) {
            arrayList.add(MaxAdFormat.BANNER);
            arrayList.add(MaxAdFormat.LEADER);
            if (z) {
                arrayList.add(MaxAdFormat.MREC);
            }
        }
        if (maxAdapter instanceof MaxNativeAdAdapter) {
            arrayList.add(MaxAdFormat.NATIVE);
        }
        return arrayList;
    }

    private List a(JSONObject jSONObject) {
        return JsonUtils.optList(JsonUtils.getJSONArray(jSONObject, "supported_regions", null), null);
    }

    private List a(JSONObject jSONObject, com.applovin.impl.sdk.l lVar) {
        ArrayList arrayList = new ArrayList();
        if (this.r.equals("com.applovin.mediation.adapters.AppLovinMediationAdapter")) {
            u4 u4Var = new u4("com.google.android.gms.permission.AD_ID", "Please add\n<uses-permission android:name=\"com.google.android.gms.permission.AD_ID\" />\nto your AndroidManifest.xml", com.applovin.impl.sdk.l.p());
            if (u4Var.c()) {
                arrayList.add(u4Var);
            }
        }
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "permissions", new JSONObject());
        Iterator<String> itKeys = jSONObject2.keys();
        while (itKeys.hasNext()) {
            try {
                String next = itKeys.next();
                arrayList.add(new u4(next, jSONObject2.getString(next), com.applovin.impl.sdk.l.p()));
            } catch (JSONException unused) {
            }
        }
        return arrayList;
    }

    private List a(JSONObject jSONObject, String str, com.applovin.impl.sdk.l lVar) {
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "dependencies", new JSONArray());
        JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject, "dependencies_v2", new JSONArray());
        ArrayList arrayList = new ArrayList(jSONArray.length() + jSONArray2.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject2 != null) {
                arrayList.add(new l1(jSONObject2, lVar));
            }
        }
        for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
            JSONObject jSONObject3 = JsonUtils.getJSONObject(jSONArray2, i2, (JSONObject) null);
            if (jSONObject3 != null && l1.a(str, JsonUtils.getString(jSONObject3, "min_adapter_version", null), JsonUtils.getString(jSONObject3, "max_adapter_version", null))) {
                arrayList.add(new l1(jSONObject3, lVar));
            }
        }
        return arrayList;
    }

    public boolean A() {
        return this.f;
    }

    public boolean B() {
        return this.h;
    }

    public boolean C() {
        return this.H;
    }

    public boolean D() {
        return this.o;
    }

    public boolean E() {
        if (!this.n || !StringUtils.isValidString(this.s)) {
            return false;
        }
        return !u7.d(this.s).equals(u7.a(this.t, this.s.split("\\.").length));
    }

    public boolean F() {
        return this.d;
    }

    public boolean G() {
        return this.b == a.MISSING && this.k;
    }

    public boolean H() {
        return this.F;
    }

    public boolean I() {
        return this.l;
    }

    public boolean J() {
        return this.m;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(i3 i3Var) {
        return this.q.compareToIgnoreCase(i3Var.q);
    }

    public String b() {
        return this.r;
    }

    public String c() {
        return this.t;
    }

    public Map d() {
        return this.J;
    }

    public String e() {
        return this.I;
    }

    public List f() {
        return this.A;
    }

    public String g() {
        return this.q;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "MediatedNetwork";
    }

    public int h() {
        return this.x;
    }

    public int i() {
        return this.c;
    }

    public final String j() {
        StringBuilder sb = new StringBuilder("\n---------- ");
        String str = "UNAVAILABLE";
        StringBuilder sbAppend = sb.append(this.p).append(" ----------\nStatus  - ").append(this.b.b()).append("\nSDK     - ").append((!this.d || TextUtils.isEmpty(this.s)) ? "UNAVAILABLE" : this.s).append("\nAdapter - ");
        if (this.e && !TextUtils.isEmpty(this.t)) {
            str = this.t;
        }
        sbAppend.append(str);
        for (u4 u4Var : n()) {
            if (!u4Var.c()) {
                sb.append("\n* MISSING ").append(u4Var.b()).append(": ").append(u4Var.a());
            }
        }
        for (l1 l1Var : f()) {
            if (!l1Var.c()) {
                sb.append("\n* MISSING ").append(l1Var.b()).append(": ").append(l1Var.a());
            }
        }
        return sb.toString();
    }

    public String k() {
        return this.u;
    }

    public List l() {
        return this.C;
    }

    public String m() {
        return this.p;
    }

    public List n() {
        return this.z;
    }

    public final com.applovin.impl.sdk.l o() {
        return this.a;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        String string = appLovinCommunicatorMessage.getMessageData().getString("adapter_class", "");
        if (this.r.equals(string)) {
            this.c = appLovinCommunicatorMessage.getMessageData().getInt("init_status", 0);
            MaxAdapter maxAdapterA = a4.a(string, this.a);
            if (maxAdapterA != null) {
                String strA = a4.a(maxAdapterA);
                if (this.s.equals(strA)) {
                    return;
                }
                this.s = strA;
                this.a.u().a(this.s, string);
            }
        }
    }

    public String p() {
        return this.s;
    }

    public a q() {
        return this.b;
    }

    public List r() {
        return this.y;
    }

    public List s() {
        return this.B;
    }

    public g7 t() {
        return this.G;
    }

    public String toString() {
        return "MediatedNetwork{name=" + this.p + ", displayName=" + this.q + ", sdkAvailable=" + this.d + ", sdkVersion=" + this.s + ", adapterAvailable=" + this.e + ", adapterVersion=" + this.t + "}";
    }

    public List u() {
        return this.D;
    }

    public String v() {
        return this.v;
    }

    public String w() {
        return this.w;
    }

    public Map x() {
        return this.E;
    }

    public b y() {
        if (!this.i) {
            return b.NOT_SUPPORTED;
        }
        a aVar = this.b;
        if (aVar != a.COMPLETE && (aVar != a.INCOMPLETE_INTEGRATION || !F() || !z())) {
            return b.INVALID_INTEGRATION;
        }
        if (this.a.u0().c()) {
            return (this.j && (this.c == MaxAdapter.InitializationStatus.INITIALIZED_FAILURE.getCode() || this.c == MaxAdapter.InitializationStatus.INITIALIZING.getCode())) ? b.NOT_INITIALIZED : b.READY;
        }
        return b.DISABLED;
    }

    public boolean z() {
        return this.e;
    }
}
