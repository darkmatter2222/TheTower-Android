package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Calendar;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ト, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC0890 implements InterfaceC0522 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f3172 = StringFog.decrypt("EAaRRIspMgIjMqtKnTQ=\n", "UWLZJeVNXmc=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0892 f3173 = new C0892();

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public InterfaceC0522 f3174;

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0522
    /* JADX INFO: renamed from: ﻐ */
    public final void mo1826(JSONObject jSONObject, View view, Object obj) {
        JSONObject jSONObjectM2296 = m2296(jSONObject, obj);
        m2297(StringFog.decrypt("/yY9SWVIkCTKNiBJMA==\n", "vFNOPQolsEE=\n"), jSONObjectM2296);
        InterfaceC0522 interfaceC0522 = this.f3174;
        if (interfaceC0522 == null) {
            interfaceC0522 = this.f3173;
        }
        interfaceC0522.mo1826(jSONObjectM2296, view, obj);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0522
    /* JADX INFO: renamed from: ﻛ */
    public void mo1828(JSONObject jSONObject, View view, Object obj) {
        JSONObject jSONObjectM2296 = m2296(jSONObject, obj);
        m2297(StringFog.decrypt("N2Q/4zjhpNoXeXrjcfeswgRhJQ==\n", "dgAfh1GS1LY=\n"), jSONObjectM2296);
        InterfaceC0522 interfaceC0522 = this.f3174;
        if (interfaceC0522 == null) {
            interfaceC0522 = this.f3173;
        }
        interfaceC0522.mo1828(jSONObjectM2296, view, obj);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0522
    /* JADX INFO: renamed from: ｋ */
    public void mo1830(JSONObject jSONObject, View view, Object obj) {
        JSONObject jSONObjectM2296 = m2296(jSONObject, obj);
        m2297(StringFog.decrypt("mkmGMRR3GuC6VMMxRw==\n", "2y2mVX0Eaow=\n"), jSONObjectM2296);
        InterfaceC0522 interfaceC0522 = this.f3174;
        if (interfaceC0522 == null) {
            interfaceC0522 = this.f3173;
        }
        interfaceC0522.mo1830(jSONObjectM2296, view, obj);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0522
    /* JADX INFO: renamed from: ﾇ */
    public final void mo1832(JSONObject jSONObject, View view, InterfaceC3470f0 interfaceC3470f0, Object obj) {
        JSONObject jSONObjectM2296 = m2296(jSONObject, obj);
        m2297(StringFog.decrypt("aS0w4+NwTh9NLSo=\n", "KEkQgI8ZLXQ=\n"), jSONObjectM2296);
        InterfaceC0522 interfaceC0522 = this.f3174;
        if (interfaceC0522 == null) {
            interfaceC0522 = this.f3173;
        }
        interfaceC0522.mo1832(jSONObjectM2296, view, interfaceC3470f0, obj);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0522
    /* JADX INFO: renamed from: ﾇ */
    public final void mo1833(JSONObject jSONObject, View view, Object obj) {
        JSONObject jSONObjectM2296 = m2296(jSONObject, obj);
        m2297(StringFog.decrypt("GHVKLtcfLuc9\n", "WRFqTbtwXYI=\n"), jSONObjectM2296);
        InterfaceC0522 interfaceC0522 = this.f3174;
        if (interfaceC0522 == null) {
            interfaceC0522 = this.f3173;
        }
        interfaceC0522.mo1833(jSONObjectM2296, view, obj);
    }

    /* JADX INFO: renamed from: ﾒ */
    public abstract String mo1809(Object obj);

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final JSONObject m2296(JSONObject jSONObject, Object obj) {
        try {
            String str = AbstractC0115.f627;
            if (!jSONObject.has(str)) {
                jSONObject.put(str, mo1809(obj));
            }
            String str2 = AbstractC0115.f626;
            if (!jSONObject.has(str2)) {
                String str3 = AbstractC0129.f814;
                jSONObject.put(str2, Calendar.getInstance().getTimeInMillis());
                return jSONObject;
            }
        } catch (JSONException e) {
            String str4 = f3172;
            AbstractC0250.m1999(str4, str4, StringFog.decrypt("npSneewMnnq+h6F/8Evdba2Du2K+Ro5ntQ==\n", "2+bVFp4s/Qg=\n"), e, null, false);
        }
        return jSONObject;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2297(String str, JSONObject jSONObject) {
        String str2 = f3172;
        AbstractC0250.m1998(str2, str2, AbstractC0270.m2002("+Ju1\n", "2LaViWHV54E=\n", new StringBuilder().append(getClass().getName()), str), jSONObject, false);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0522
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1836(JSONObject jSONObject, View view, C3460a0 c3460a0, Object obj) {
        JSONObject jSONObjectM2296 = m2296(jSONObject, obj);
        m2297(StringFog.decrypt("6OzjUVQmBDHLtQ==\n", "v4+AcTFQYV8=\n"), jSONObjectM2296);
        InterfaceC0522 interfaceC0522 = this.f3174;
        if (interfaceC0522 == null) {
            interfaceC0522 = this.f3173;
        }
        interfaceC0522.mo1836(jSONObjectM2296, view, c3460a0, obj);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0522
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1837(JSONObject jSONObject, View view, InterfaceC3470f0 interfaceC3470f0, Object obj) {
        JSONObject jSONObjectM2296 = m2296(jSONObject, obj);
        m2297(StringFog.decrypt("MKGLwi+jemAUoYvHMaV0Kxu2kQ==\n", "ccWroUPKGQs=\n"), jSONObjectM2296);
        InterfaceC0522 interfaceC0522 = this.f3174;
        if (interfaceC0522 == null) {
            interfaceC0522 = this.f3173;
        }
        interfaceC0522.mo1837(jSONObjectM2296, view, interfaceC3470f0, obj);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0522
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1838(JSONObject jSONObject, View view, Object obj) {
        JSONObject jSONObjectM2296 = m2296(jSONObject, obj);
        m2297(StringFog.decrypt("BeH6zoRSQdES6/fcwAk=\n", "c4ifuaQzNaU=\n"), jSONObjectM2296);
        InterfaceC0522 interfaceC0522 = this.f3174;
        if (interfaceC0522 == null) {
            interfaceC0522 = this.f3173;
        }
        interfaceC0522.mo1838(jSONObjectM2296, view, obj);
    }
}
