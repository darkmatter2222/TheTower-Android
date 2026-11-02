package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.ISAdQualitySegment;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ב, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0348 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0272 f1621;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ ISAdQualitySegment f1622;

    public C0348(C0272 c0272, ISAdQualitySegment iSAdQualitySegment) {
        this.f1621 = c0272;
        this.f1622 = iSAdQualitySegment;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        boolean z;
        C0272 c0272 = this.f1621;
        synchronized (c0272) {
            z = c0272.f1365;
        }
        if (!z) {
            AbstractC0250.m1992(StringFog.decrypt("36vYz1KLR1znnM3x\n", "ns+JujPnLig=\n"), StringFog.decrypt("ZP1EUTOXgBFTvFkTINqWGlO8B1YO5LIQdulLGi7DilR02GFWLsTTGkjoCh8p3ocdRvBDDCLT3Q==\n", "J5wqdke383Q=\n"));
            return;
        }
        C0740 c0740 = this.f1621.f1349;
        if (c0740 != null) {
            ISAdQualitySegment iSAdQualitySegment = this.f1622;
            C0690 c0690 = c0740.f2737;
            String strDecrypt = StringFog.decrypt("twmzQwY0zAOhArM=\n", "xGzHHHVRq24=\n");
            JSONObject jSONObject = new JSONObject(iSAdQualitySegment.getCustomData());
            try {
                if (!TextUtils.isEmpty(iSAdQualitySegment.getName())) {
                    jSONObject.put(StringFog.decrypt("mWDREA==\n", "6ge/fald38k=\n"), iSAdQualitySegment.getName());
                }
                if (iSAdQualitySegment.getAge() != -1) {
                    jSONObject.put(StringFog.decrypt("WHWdAg==\n", "KxT6ZwACiO0=\n"), iSAdQualitySegment.getAge());
                }
                if (!TextUtils.isEmpty(iSAdQualitySegment.getGender())) {
                    jSONObject.put(StringFog.decrypt("bLGiqA==\n", "H9bHxiO51XA=\n"), iSAdQualitySegment.getGender());
                }
                if (iSAdQualitySegment.getLevel() != -1) {
                    jSONObject.put(StringFog.decrypt("n73lVw==\n", "7NGTO+nACrI=\n"), iSAdQualitySegment.getLevel());
                }
                if (iSAdQualitySegment.getIsPaying() != null) {
                    jSONObject.put(StringFog.decrypt("rCNKTw==\n", "31MrNpOU1QQ=\n"), iSAdQualitySegment.getIsPaying().get());
                }
                if (iSAdQualitySegment.getInAppPurchasesTotal() != -1.0d) {
                    jSONObject.put(StringFog.decrypt("38Doe3A=\n", "rKmJCwRWHt4=\n"), iSAdQualitySegment.getInAppPurchasesTotal());
                }
                if (iSAdQualitySegment.getUserCreationDate() != 0) {
                    jSONObject.put(StringFog.decrypt("CqcV4w==\n", "edJ2h8uJiic=\n"), iSAdQualitySegment.getUserCreationDate());
                }
            } catch (JSONException unused) {
            }
            c0690.m2246(strDecrypt, jSONObject);
        }
    }
}
