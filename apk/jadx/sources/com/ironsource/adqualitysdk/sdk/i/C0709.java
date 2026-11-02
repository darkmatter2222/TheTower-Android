package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴝ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0709 implements InterfaceC0517 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0690 f2662;

    public C0709(C0690 c0690) {
        this.f2662 = c0690;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static JSONObject m2253(C0709 c0709, Activity activity) {
        c0709.getClass();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(StringFog.decrypt("RwOwm8s01A==\n", "JmDE1apZsdo=\n"), activity.getClass().getName());
            return jSONObject;
        } catch (JSONException unused) {
            AbstractC0250.m1990(StringFog.decrypt("aAsVWXIrrYha\n", "KWV0NQtfxOs=\n"), StringFog.decrypt("mRhSZ+naXtK4A05vu5tcwrUcSXzi2lHXsQ8=\n", "3GogCJv6P7Y=\n"));
            return jSONObject;
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0517
    /* JADX INFO: renamed from: ﾇ */
    public final void mo2113(Activity activity) {
        AbstractC0340.m2054(new C0713(this, activity));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0517
    /* JADX INFO: renamed from: ﾒ */
    public final void mo2114(Activity activity) {
        AbstractC0340.m2054(new C0715(this, activity));
    }
}
