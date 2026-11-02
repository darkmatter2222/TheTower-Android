package com.ironsource.adqualitysdk.sdk.i;

import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᘂ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0681 implements InterfaceC0579 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0116 f2594;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0983 f2595;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C1014 f2596;

    public C0681(C1014 c1014, C0983 c0983, C0116 c0116) {
        this.f2596 = c1014;
        this.f2595 = c0983;
        this.f2594 = c0116;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0579
    /* JADX INFO: renamed from: ﾒ */
    public final JSONObject mo2110(String str, JSONObject jSONObject) {
        List listAsList = Arrays.asList(str, jSONObject);
        C1014 c1014 = this.f2596;
        C0983 c0983 = this.f2595;
        C0116 c0116 = this.f2594;
        c1014.getClass();
        return (JSONObject) c1014.m2401(c0983, c0983.f3496, c0116, listAsList).f1193;
    }
}
