package com.ironsource;

import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.g4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C3601g4 {
    public static final String a = "SSA_CORE.SDKController.runFunction";

    public static String a(C3619h4 c3619h4) {
        return String.format("%1$s('%2$s%3$s'%4$s)", a, c3619h4.b(), a(c3619h4.c()), b(c3619h4));
    }

    private static String a(JSONObject jSONObject) {
        return (jSONObject == null || jSONObject.length() == 0) ? "" : jSONObject.toString();
    }

    private static String b(C3619h4 c3619h4) {
        return (c3619h4.d() == null || c3619h4.a() == null) ? "" : String.format(", '%1$s', '%2$s'", c3619h4.d(), c3619h4.a());
    }
}
