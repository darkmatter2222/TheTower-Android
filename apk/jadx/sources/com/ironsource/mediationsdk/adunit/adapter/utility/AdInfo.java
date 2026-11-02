package com.ironsource.mediationsdk.adunit.adapter.utility;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.ironsource.C3533c9;
import com.ironsource.C3801r4;
import com.ironsource.Db;
import com.ironsource.mediationsdk.logger.IronLog;
import org.json.JSONObject;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class AdInfo {
    private final C3533c9 impressionData;
    private final Db loadArmData;

    public AdInfo(C3533c9 c3533c9, Db db) {
        this.impressionData = c3533c9;
        this.loadArmData = db;
    }

    public final String getAb() {
        C3533c9 c3533c9 = this.impressionData;
        return (c3533c9 == null || c3533c9.a() == null) ? "" : this.impressionData.a();
    }

    public final String getAdNetwork() {
        C3533c9 c3533c9 = this.impressionData;
        return (c3533c9 == null || c3533c9.c() == null) ? "" : this.impressionData.c();
    }

    public final String getAuctionId() {
        C3533c9 c3533c9 = this.impressionData;
        return (c3533c9 == null || c3533c9.e() == null) ? "" : this.impressionData.e();
    }

    public final String getCountry() {
        C3533c9 c3533c9 = this.impressionData;
        return (c3533c9 == null || c3533c9.f() == null) ? "" : this.impressionData.f();
    }

    public final String getEncryptedCPM() {
        C3533c9 c3533c9 = this.impressionData;
        return (c3533c9 == null || c3533c9.h() == null) ? "" : this.impressionData.h();
    }

    public final String getInstanceId() {
        C3533c9 c3533c9 = this.impressionData;
        return (c3533c9 == null || c3533c9.i() == null) ? "" : this.impressionData.i();
    }

    public final String getInstanceName() {
        C3533c9 c3533c9 = this.impressionData;
        return (c3533c9 == null || c3533c9.j() == null) ? "" : this.impressionData.j();
    }

    public final String getPrecision() {
        Db db = this.loadArmData;
        if (db != null) {
            return db.c();
        }
        C3533c9 c3533c9 = this.impressionData;
        return (c3533c9 == null || c3533c9.n() == null) ? "" : this.impressionData.n();
    }

    public final double getRevenue() {
        Db db = this.loadArmData;
        if (db != null) {
            return db.d();
        }
        C3533c9 c3533c9 = this.impressionData;
        if (c3533c9 == null) {
            return FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        }
        c3533c9.o();
        return this.impressionData.o();
    }

    public final String getSegmentName() {
        C3533c9 c3533c9 = this.impressionData;
        return (c3533c9 == null || c3533c9.p() == null) ? "" : this.impressionData.p();
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("auctionId", getAuctionId());
            jSONObject.put("country", getCountry());
            jSONObject.put("ab", getAb());
            jSONObject.put("segmentName", getSegmentName());
            jSONObject.put("adNetwork", getAdNetwork());
            jSONObject.put("instanceName", getInstanceName());
            jSONObject.put("instanceId", getInstanceId());
            jSONObject.put("revenue", getRevenue());
            jSONObject.put("precision", getPrecision());
            jSONObject.put("encryptedCPM", getEncryptedCPM());
        } catch (Exception e) {
            C3801r4.d().a(e);
            IronLog.INTERNAL.error("error while parsing ad info " + e.getMessage());
        }
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }
}
