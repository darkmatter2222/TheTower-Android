package com.ironsource.sdk.controller;

import com.ironsource.C3510b4;
import com.ironsource.C3513b7;
import com.ironsource.C3539cf;
import com.ironsource.C3801r4;
import com.ironsource.InterfaceC3805r8;
import com.ironsource.O3;
import com.ironsource.P3;
import com.ironsource.Pb;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.sdk.utils.SDKUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class FeaturesManager {
    private static volatile FeaturesManager d = null;
    private static final String e = "debugMode";
    private Map<String, ?> a;
    private final ArrayList<String> b = new a();
    private InterfaceC3805r8 c = Pb.k0().t();

    class a extends ArrayList<String> {
        a() {
            add(C3510b4.d.f);
            add(C3510b4.d.e);
            add(C3510b4.d.g);
            add(C3510b4.d.h);
            add(C3510b4.d.i);
            add(C3510b4.d.j);
            add(C3510b4.d.k);
            add(C3510b4.d.l);
            add(C3510b4.d.m);
        }
    }

    private FeaturesManager() {
        if (d != null) {
            throw new RuntimeException("Use getInstance() method to get the single instance of this class.");
        }
        this.a = new HashMap();
    }

    public static FeaturesManager getInstance() {
        if (d == null) {
            synchronized (FeaturesManager.class) {
                if (d == null) {
                    d = new FeaturesManager();
                }
            }
        }
        return d;
    }

    ArrayList<String> a() {
        return new ArrayList<>(this.b);
    }

    public JSONObject getDataManagerConfig() {
        JSONObject networkConfiguration = SDKUtils.getNetworkConfiguration();
        return networkConfiguration.has(C3510b4.a.d) ? networkConfiguration.optJSONObject(C3510b4.a.d) : new JSONObject();
    }

    public int getDebugMode() {
        Integer num = 0;
        try {
            if (this.a.containsKey("debugMode")) {
                num = (Integer) this.a.get("debugMode");
            }
        } catch (Exception e2) {
            C3801r4.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
        }
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public O3 getFeatureFlagCatchUrlError() {
        return new O3(SDKUtils.getNetworkConfiguration().optJSONObject(O3.a.c));
    }

    public P3 getFeatureFlagClickCheck() {
        return new P3(SDKUtils.getNetworkConfiguration());
    }

    public C3513b7 getFeatureFlagHealthCheck() {
        JSONObject jSONObjectA = this.c.a(C3510b4.a.r);
        return jSONObjectA instanceof JSONObject ? new C3513b7(jSONObjectA) : new C3513b7(null);
    }

    public boolean getFeatureFlagLoadControllerAndPlayerFromBundle() {
        return SDKUtils.getNetworkFeatureConfiguration().optBoolean(C3510b4.a.w, false);
    }

    public int getInitRecoverTrials() {
        JSONObject jSONObjectOptJSONObject = SDKUtils.getNetworkConfiguration().optJSONObject("init");
        if (jSONObjectOptJSONObject != null) {
            return jSONObjectOptJSONObject.optInt(C3510b4.a.e, 0);
        }
        return 0;
    }

    public C3539cf getSessionHistoryConfig() {
        JSONObject networkConfiguration = SDKUtils.getNetworkConfiguration();
        return new C3539cf(networkConfiguration.has(C3510b4.a.s) ? networkConfiguration.optJSONObject(C3510b4.a.s) : new JSONObject());
    }

    public boolean getStopUseOnResumeAndPause() {
        return Boolean.TRUE.equals(this.c.c(C3510b4.a.u));
    }

    public void updateDebugConfigurations(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        this.a = map;
    }
}
