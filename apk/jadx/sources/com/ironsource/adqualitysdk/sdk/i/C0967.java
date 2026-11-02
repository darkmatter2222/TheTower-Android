package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﮐ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0967 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0933 f3459;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Activity f3460;

    public C0967(C0933 c0933, Activity activity) {
        this.f3459 = c0933;
        this.f3460 = activity;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        if (C0933.m2303(this.f3459, this.f3460)) {
            AbstractC0340.m2057(new C0977(this));
            C0933 c0933 = this.f3459;
            c0933.f3333 = false;
            c0933.f3334 = true;
            if ((!c0933.f3335 || c0933.f3332) && !this.f3460.isFinishing()) {
                C0933 c0934 = this.f3459;
                Activity activity = this.f3460;
                c0934.getClass();
                String hexString = Integer.toHexString(activity.hashCode());
                if (c0934.f3335) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put(AbstractC0115.f582, true);
                    } catch (JSONException e) {
                        AbstractC0250.m1990(C0933.f3330, StringFog.decrypt("Y3MKi/PMHJRCaBaDoYgSvkl1K4HviF2ESSESl+6CR9A=\n", "JgF45IHsffA=\n") + e.getLocalizedMessage());
                    }
                    c0934.m2047(jSONObject, activity, hexString);
                } else {
                    c0934.f3335 = true;
                    c0934.m2047(new JSONObject(), activity, hexString);
                }
            }
            this.f3459.f3332 = false;
        }
    }
}
