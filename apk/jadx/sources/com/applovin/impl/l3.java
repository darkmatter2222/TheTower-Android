package com.applovin.impl;

import com.applovin.mediation.MaxAdFormat;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class l3 extends c3 {
    protected l3(e3 e3Var, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.mediation.h hVar, com.applovin.impl.sdk.l lVar) {
        super(e3Var, jSONObject, jSONObject2, hVar, lVar);
    }

    public float m0() {
        return b("viewability_min_alpha", ((Float) this.a.a(c5.D1)).floatValue() / 100.0f);
    }

    public int n0() {
        return a("viewability_min_pixels", -1);
    }

    public int o0() {
        c5 c5Var;
        MaxAdFormat format = getFormat();
        if (format == MaxAdFormat.BANNER) {
            c5Var = c5.w1;
        } else if (format == MaxAdFormat.MREC) {
            c5Var = c5.y1;
        } else if (format == MaxAdFormat.LEADER) {
            c5Var = c5.A1;
        } else {
            c5Var = format == MaxAdFormat.NATIVE ? c5.C1 : null;
        }
        if (c5Var != null) {
            return a("viewability_min_height", ((Integer) this.a.a(c5Var)).intValue());
        }
        return 0;
    }

    public float p0() {
        return b("viewability_min_percentage_dp", -1.0f);
    }

    public float q0() {
        return b("viewability_min_percentage_pixels", -1.0f);
    }

    public long r0() {
        return a("viewability_timer_min_visible_ms", ((Long) this.a.a(c5.E1)).longValue());
    }

    public int s0() {
        c5 c5Var;
        MaxAdFormat format = getFormat();
        if (format == MaxAdFormat.BANNER) {
            c5Var = c5.v1;
        } else if (format == MaxAdFormat.MREC) {
            c5Var = c5.x1;
        } else if (format == MaxAdFormat.LEADER) {
            c5Var = c5.z1;
        } else {
            c5Var = format == MaxAdFormat.NATIVE ? c5.B1 : null;
        }
        if (c5Var != null) {
            return a("viewability_min_width", ((Integer) this.a.a(c5Var)).intValue());
        }
        return 0;
    }

    public boolean t0() {
        return n0() >= 0 || p0() >= 0.0f || q0() >= 0.0f;
    }
}
