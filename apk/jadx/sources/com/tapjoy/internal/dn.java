package com.tapjoy.internal;

import android.os.Build;
import com.ironsource.C3510b4;
import com.ironsource.R6;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class dn {
    public static JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        Cdo.a(jSONObject, "deviceType", Build.MANUFACTURER + "; " + Build.MODEL);
        Cdo.a(jSONObject, "osVersion", Integer.toString(Build.VERSION.SDK_INT));
        Cdo.a(jSONObject, R6.F, C3510b4.d);
        return jSONObject;
    }
}
