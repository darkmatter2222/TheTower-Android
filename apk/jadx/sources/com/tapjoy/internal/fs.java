package com.tapjoy.internal;

import android.text.TextUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TapjoyLog;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class fs {
    private static final String b = "fs";
    public final Map<String, Object> a;
    private final Map<String, gi.a> c;

    protected fs(String str, String str2, String str3) {
        HashMap map = new HashMap();
        this.a = map;
        this.c = new HashMap();
        map.put("placement", str);
        map.put("placement_type", str2);
        map.put(FirebaseAnalytics.Param.CONTENT_TYPE, str3);
    }

    private gi.a a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.c.remove(str);
    }

    public final gi.a a() {
        return a("Content.rendered", null, null);
    }

    protected final gi.a a(String str, Map<String, Object> map, Map<String, Long> map2) {
        gi.a aVarB = gi.e(str).a().a(this.a).a(map).b(map2);
        this.c.put(str, aVarB);
        return aVarB;
    }

    public final void a(String str, Object obj) {
        this.a.put(str, obj);
    }

    public final gi.a b() {
        return b("Content.rendered", null, null);
    }

    protected final gi.a b(String str, Map<String, Object> map, Map<String, Long> map2) {
        gi.a aVarA = a(str);
        if (aVarA == null) {
            TapjoyLog.e(b, "Error when calling endTrackingEvent -- " + str + " tracking has not been started.");
            return aVarA;
        }
        aVarA.a(this.a).a(map).b(map2).b().c();
        return aVarA;
    }

    public final void c() {
        this.c.clear();
    }
}
