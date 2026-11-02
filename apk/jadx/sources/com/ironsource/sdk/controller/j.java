package com.ironsource.sdk.controller;

import com.ironsource.C3512b6;
import com.ironsource.C3801r4;
import com.ironsource.C3861u8;
import com.ironsource.C3881va;
import com.ironsource.C3899wa;
import com.ironsource.D8;
import com.ironsource.InterfaceC3863ua;
import com.ironsource.Vc;
import com.ironsource.Z5;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.sdk.utils.IronSourceStorageUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
class j {
    private final String a;
    private final C3512b6 b;

    class a implements Vc {
        final /* synthetic */ C3899wa a;
        final /* synthetic */ C3881va b;

        a(C3899wa c3899wa, C3881va c3881va) {
            this.a = c3899wa;
            this.b = c3881va;
        }

        @Override // com.ironsource.Vc
        public void a(D8 d8) {
            try {
                C3899wa c3899wa = this.a;
                C3881va c3881va = this.b;
                c3899wa.b(c3881va, j.this.a(c3881va, d8.a()));
            } catch (Exception e) {
                C3801r4.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
        }

        @Override // com.ironsource.Vc
        public void a(D8 d8, C3861u8 c3861u8) {
            try {
                C3899wa c3899wa = this.a;
                C3881va c3881va = this.b;
                c3899wa.a(c3881va, j.this.a(c3881va, c3861u8.b()));
            } catch (Exception e) {
                C3801r4.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
        }
    }

    j(String str, C3512b6 c3512b6) {
        this.a = str;
        this.b = c3512b6;
    }

    private D8 a(JSONObject jSONObject, String str) throws Exception {
        if (jSONObject.has(Z5.c.d)) {
            return new D8(IronSourceStorageUtils.buildAbsolutePathToDirInCache(str, jSONObject.getString(Z5.c.d)));
        }
        throw new Exception(Z5.a.b);
    }

    private Vc a(C3881va c3881va, C3899wa c3899wa) {
        return new a(c3899wa, c3881va);
    }

    private JSONObject a(C3881va c3881va, long j) {
        try {
            return c3881va.e().put("result", j);
        } catch (Exception e) {
            C3801r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return new JSONObject();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject a(C3881va c3881va, String str) {
        try {
            return c3881va.e().put("errMsg", str);
        } catch (Exception e) {
            C3801r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return new JSONObject();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject a(C3881va c3881va, JSONObject jSONObject) {
        try {
            return c3881va.e().put("result", jSONObject);
        } catch (Exception e) {
            C3801r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return new JSONObject();
        }
    }

    private D8 b(JSONObject jSONObject, String str) throws Exception {
        if (!jSONObject.has(Z5.c.c) || !jSONObject.has(Z5.c.b)) {
            throw new Exception(Z5.a.a);
        }
        String string = jSONObject.getString(Z5.c.c);
        return new D8(IronSourceStorageUtils.buildAbsolutePathToDirInCache(str, string), jSONObject.getString(Z5.c.b));
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0066  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    void a(JSONObject jSONObject, InterfaceC3863ua interfaceC3863ua) {
        byte b;
        C3881va c3881va = new C3881va(jSONObject);
        C3899wa c3899wa = new C3899wa(interfaceC3863ua);
        try {
            String strB = c3881va.b();
            JSONObject jSONObjectC = c3881va.c();
            D8 d8B = b(jSONObjectC, this.a);
            IronSourceStorageUtils.ensurePathSafety(d8B, this.a);
            switch (strB.hashCode()) {
                case -2073025383:
                    if (!strB.equals(Z5.b.a)) {
                        b = -1;
                    } else {
                        b = 0;
                    }
                    break;
                case -1137024519:
                    if (!strB.equals("deleteFolder")) {
                        b = -1;
                    } else {
                        b = 2;
                    }
                    break;
                case -318115535:
                    if (!strB.equals(Z5.b.e)) {
                        b = -1;
                    } else {
                        b = 4;
                    }
                    break;
                case 537556755:
                    if (!strB.equals(Z5.b.f)) {
                        b = -1;
                    } else {
                        b = 5;
                    }
                    break;
                case 1764172231:
                    if (!strB.equals("deleteFile")) {
                        b = -1;
                    } else {
                        b = 1;
                    }
                    break;
                case 1953259713:
                    if (!strB.equals(Z5.b.d)) {
                        b = -1;
                    } else {
                        b = 3;
                    }
                    break;
                default:
                    b = -1;
                    break;
            }
            if (b == 0) {
                this.b.a(d8B, jSONObjectC.optString(Z5.c.a), jSONObjectC.optInt("connectionTimeout"), jSONObjectC.optInt("readTimeout"), a(c3881va, c3899wa));
                return;
            }
            if (b == 1) {
                this.b.a(d8B);
                c3899wa.b(c3881va, a(c3881va, d8B.a()));
                return;
            }
            if (b == 2) {
                this.b.b(d8B);
                c3899wa.b(c3881va, a(c3881va, d8B.a()));
                return;
            }
            if (b == 3) {
                c3899wa.b(c3881va, a(c3881va, this.b.c(d8B)));
                return;
            }
            if (b == 4) {
                c3899wa.b(c3881va, a(c3881va, this.b.d(d8B)));
            } else {
                if (b != 5) {
                    return;
                }
                this.b.a(d8B, jSONObjectC.optJSONObject(Z5.c.g));
                c3899wa.b(c3881va, a(c3881va, d8B.a()));
            }
        } catch (Exception e) {
            C3801r4.d().a(e);
            c3899wa.a(c3881va, a(c3881va, e.getMessage()));
        }
    }
}
