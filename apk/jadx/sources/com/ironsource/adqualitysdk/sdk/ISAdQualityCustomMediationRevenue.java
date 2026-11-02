package com.ironsource.adqualitysdk.sdk;

import com.ironsource.adqualitysdk.sdk.i.AbstractC1030;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class ISAdQualityCustomMediationRevenue {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final JSONObject f27;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final String f28;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final double f29;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final ISAdQualityAdType f30;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final ISAdQualityMediationNetwork f31;

    @Deprecated
    public static class Builder {

        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public JSONObject f32;

        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        public String f33;

        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        public double f34;

        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public ISAdQualityMediationNetwork f36 = ISAdQualityMediationNetwork.UNKNOWN;

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public ISAdQualityAdType f35 = ISAdQualityAdType.UNKNOWN;

        @Deprecated
        public Builder() {
        }

        @Deprecated
        public ISAdQualityCustomMediationRevenue build() {
            return new ISAdQualityCustomMediationRevenue(this.f36, this.f35, this.f34, this.f33, this.f32);
        }

        @Deprecated
        public Builder setAdType(ISAdQualityAdType iSAdQualityAdType) {
            this.f35 = iSAdQualityAdType;
            return this;
        }

        @Deprecated
        public Builder setCustomData(JSONObject jSONObject) {
            if (jSONObject != null) {
                this.f32 = AbstractC1030.m2416(jSONObject, false);
            }
            return this;
        }

        @Deprecated
        public Builder setMediationNetwork(ISAdQualityMediationNetwork iSAdQualityMediationNetwork) {
            this.f36 = iSAdQualityMediationNetwork;
            return this;
        }

        @Deprecated
        public Builder setPlacement(String str) {
            this.f33 = str;
            return this;
        }

        @Deprecated
        public Builder setRevenue(double d) {
            this.f34 = d;
            return this;
        }
    }

    public ISAdQualityCustomMediationRevenue(ISAdQualityMediationNetwork iSAdQualityMediationNetwork, ISAdQualityAdType iSAdQualityAdType, double d, String str, JSONObject jSONObject) {
        this.f31 = iSAdQualityMediationNetwork;
        this.f30 = iSAdQualityAdType;
        this.f29 = d;
        this.f28 = str;
        this.f27 = jSONObject;
    }

    @Deprecated
    public ISAdQualityAdType getAdType() {
        return this.f30;
    }

    @Deprecated
    public JSONObject getCustomData() {
        return this.f27;
    }

    @Deprecated
    public ISAdQualityMediationNetwork getMediationNetwork() {
        return this.f31;
    }

    @Deprecated
    public String getPlacement() {
        return this.f28;
    }

    @Deprecated
    public double getRevenue() {
        return this.f29;
    }
}
