package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ˍ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0232 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static C0232 f1167;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public HashMap f1169;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final HashMap f1170 = new HashMap();

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final Handler f1168 = new Handler(Looper.getMainLooper());

    static {
        StringFog.decrypt("lqBvSf+OszKHrG5D+KSCP5Kq\n", "4s8aKpfK1kY=\n");
        StringFog.decrypt("uLIj\n", "2cZPci7+/WM=\n");
        StringFog.decrypt("ctY=\n", "ALrWr54DEcQ=\n");
        StringFog.decrypt("wR/M\n", "r3CiNJ6ZH14=\n");
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static synchronized C0232 m1979() {
        if (f1167 == null) {
            f1167 = new C0232();
        }
        return f1167;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final synchronized boolean m1980(Activity activity) {
        return EnumC0236.f1175 == m1983(activity);
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized HashMap m1981() {
        return new HashMap(this.f1170);
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized boolean m1982(Activity activity) {
        return EnumC0236.f1176 == m1983(activity);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized EnumC0236 m1983(Activity activity) {
        if (activity != null) {
            String name = activity.getClass().getName();
            if (m1981().containsKey(name)) {
                return (EnumC0236) m1981().get(name);
            }
            if (m1984().containsKey(name)) {
                return (EnumC0236) m1984().get(name);
            }
        }
        return EnumC0236.m1985(AbstractC0953.m2334().mo2347());
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized Map m1984() {
        JSONObject jSONObjectOptJSONObject;
        if (this.f1169 == null) {
            this.f1169 = new HashMap();
            C1043 c1043 = ((C0961) AbstractC0953.m2334()).f2612;
            if (c1043 != null) {
                jSONObjectOptJSONObject = c1043.f3677.optJSONObject(C1043.f3674);
                if (jSONObjectOptJSONObject == null) {
                    jSONObjectOptJSONObject = c1043.f3676;
                }
            } else {
                jSONObjectOptJSONObject = null;
            }
            if (jSONObjectOptJSONObject != null) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    linkedHashMap.put(next, EnumC0236.m1985(jSONObjectOptJSONObject.optString(next)));
                }
                this.f1169 = linkedHashMap;
            }
        }
        return this.f1169;
    }
}
