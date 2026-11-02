package com.tapjoy.internal;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes5.dex */
public final class PluginSupport {
    private PluginSupport() {
    }

    public static void trackUsage(String str, String str2, String str3) {
        TreeMap treeMap;
        try {
            HashMap map = null;
            if (TextUtils.isEmpty(str2)) {
                treeMap = null;
            } else {
                treeMap = new TreeMap();
                bh bhVarB = bh.b(str2);
                try {
                    bhVarB.a(treeMap);
                    bhVarB.close();
                } catch (Throwable th) {
                    bhVarB.close();
                    throw th;
                }
            }
            if (!TextUtils.isEmpty(str3)) {
                map = new HashMap();
                bh bhVarB2 = bh.b(str3);
                try {
                    bhVarB2.h();
                    while (bhVarB2.j()) {
                        map.put(bhVarB2.l(), Long.valueOf(bhVarB2.q()));
                    }
                    bhVarB2.i();
                    bhVarB2.close();
                } catch (Throwable th2) {
                    bhVarB2.close();
                    throw th2;
                }
            }
            gi.a(str, (TreeMap<String, Object>) treeMap, map);
        } catch (Exception unused) {
        }
    }
}
