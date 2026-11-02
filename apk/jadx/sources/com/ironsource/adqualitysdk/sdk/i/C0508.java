package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.ISAdQualityInitError;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.კ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0508 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0470 f2191;

    public C0508(C0470 c0470) {
        this.f2191 = c0470;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C0303 c0303;
        boolean zMo1918;
        if (C0392.m2066(this.f2191.f2130).containsKey(this.f2191.f2137.f3545.f2382) || (c0303 = this.f2191.f2130.f1899) == null) {
            return;
        }
        AbstractC0340.m2053(new C0345(c0303, this.f2191.f2137.f3545.f2382, EnumC0375.f1832));
        C0470 c0470 = this.f2191;
        JSONObject jSONObjectM2070 = C0392.m2070(c0470.f2130, c0470.f2137);
        try {
            jSONObjectM2070.put(StringFog.decrypt("wfGD\n", "oIfwIzYyyxg=\n"), false);
        } catch (JSONException unused) {
        }
        C0392.m2069(this.f2191.f2130).put(this.f2191.f2137.f3545.f2382, jSONObjectM2070);
        C0354 c0354M2038 = c0303.m2038(this.f2191.f2137.f3545.f2382);
        String strM2060 = c0354M2038 != null ? c0354M2038.m2060(c0354M2038.f1638) : null;
        C0392.m2066(this.f2191.f2130).put(this.f2191.f2137.f3545.f2382, strM2060);
        C1005 c1005 = this.f2191.f2137;
        synchronized (c1005) {
            zMo1918 = c1005.f3542.mo1918();
        }
        if (zMo1918) {
            ((C0474) this.f2191.f2130.m2079()).adQualitySdkInitFailed(ISAdQualityInitError.AD_NETWORK_SDK_REQUIRES_NEWER_AD_QUALITY_SDK, AbstractC0897.m2299("AAPcJ3VUt2RS\n", "IGyuBxsxwAE=\n", new StringBuilder().append(this.f2191.f2137.f3545.f2381).append(StringFog.decrypt("DlK7l9UOzIRdSLCS1Q==\n", "LiHf/PV4qfY=\n")).append(this.f2191.f2137.f3542.m2028()).append(StringFog.decrypt("9ZsP3GrcI0OmyTnCcNg9R/WaDsY/wzRUpoAFwz8=\n", "1elqrR+1USY=\n")).append(this.f2191.f2137.m2395())));
        }
        AbstractC1071.m2436(StringFog.decrypt("TYPNTa/6l2x8ocJNq/6GcQ==\n", "DuyjI8qZ4wM=\n"), strM2060, null, true, true, false);
    }
}
