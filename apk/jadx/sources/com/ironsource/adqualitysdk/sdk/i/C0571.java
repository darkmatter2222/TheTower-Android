package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import java.util.LinkedHashMap;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒮ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0571 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final /* synthetic */ C0392 f2322;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final /* synthetic */ C0410 f2323;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ LinkedHashMap f2324;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ List f2325;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ String f2326;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ Context f2327;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f2328;

    public C0571(C0392 c0392, String str, Context context, String str2, List list, LinkedHashMap linkedHashMap, C0410 c0410) {
        this.f2322 = c0392;
        this.f2328 = str;
        this.f2327 = context;
        this.f2326 = str2;
        this.f2325 = list;
        this.f2324 = linkedHashMap;
        this.f2323 = c0410;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        AbstractC0953 abstractC0953M2334 = AbstractC0953.m2334();
        String str = this.f2328;
        String str2 = this.f2322.f1898;
        C0580 c0580 = (C0580) ((C0961) abstractC0953M2334).mo2349().get(str);
        if (c0580 != null && c0580.m2137(str2)) {
            JSONObject jSONObject = new JSONObject();
            this.f2322.m2083(this.f2328, jSONObject);
            C0392.m2069(this.f2322).put(this.f2328, jSONObject);
            AbstractC0340.m2056(new C0572(this), AbstractC0953.m2334().mo2350());
            return;
        }
        C0392 c0392 = this.f2322;
        Context context = this.f2327;
        String str3 = this.f2326;
        String str4 = this.f2328;
        List list = this.f2325;
        C0575 c0575 = new C0575(this);
        c0392.getClass();
        AbstractC0340.m2057(new C0558(c0392, str4, context, str3, list, c0575));
    }
}
