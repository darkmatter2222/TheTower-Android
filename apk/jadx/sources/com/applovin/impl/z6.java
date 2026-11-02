package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinErrorCodes;
import java.util.Collections;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class z6 extends b7 {
    private final com.applovin.impl.sdk.ad.b g;
    private final AppLovinAdRewardListener h;

    public z6(com.applovin.impl.sdk.ad.b bVar, AppLovinAdRewardListener appLovinAdRewardListener, com.applovin.impl.sdk.l lVar) {
        super("TaskValidateAppLovinReward", lVar);
        this.g = bVar;
        this.h = appLovinAdRewardListener;
    }

    @Override // com.applovin.impl.w6
    protected void a(int i) {
        String str;
        super.a(i);
        if (i < 400 || i >= 500) {
            this.h.validationRequestFailed(this.g, i);
            str = "network_timeout";
        } else {
            this.h.userRewardRejected(this.g, Collections.EMPTY_MAP);
            str = "rejected";
        }
        this.g.a(t4.a(str));
    }

    @Override // com.applovin.impl.b7
    protected void a(t4 t4Var) {
        this.g.a(t4Var);
        String strB = t4Var.b();
        Map<String, String> mapA = t4Var.a();
        if (strB.equals("accepted")) {
            this.h.userRewardVerified(this.g, mapA);
            return;
        }
        if (strB.equals("quota_exceeded")) {
            this.h.userOverQuota(this.g, mapA);
        } else if (strB.equals("rejected")) {
            this.h.userRewardRejected(this.g, mapA);
        } else {
            this.h.validationRequestFailed(this.g, AppLovinErrorCodes.INCENTIVIZED_UNKNOWN_SERVER_ERROR);
        }
    }

    @Override // com.applovin.impl.w6
    protected void a(JSONObject jSONObject) {
        JsonUtils.putString(jSONObject, "zone_id", this.g.getAdZone().e());
        String clCode = this.g.getClCode();
        if (!StringUtils.isValidString(clCode)) {
            clCode = "NO_CLCODE";
        }
        JsonUtils.putString(jSONObject, "clcode", clCode);
    }

    @Override // com.applovin.impl.w6
    public String f() {
        return "2.0/vr";
    }

    @Override // com.applovin.impl.b7
    protected boolean h() {
        return this.g.K0();
    }
}
