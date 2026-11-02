package com.ironsource.adqualitysdk.sdk;

import com.ironsource.adqualitysdk.sdk.i.AbstractC0441;
import com.ironsource.adqualitysdk.sdk.i.AbstractC0726;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class StringFog {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final ConcurrentHashMap f61 = new ConcurrentHashMap();

    public static String decrypt(String str, String str2) {
        ConcurrentHashMap concurrentHashMap = f61;
        ConcurrentHashMap concurrentHashMap2 = (ConcurrentHashMap) concurrentHashMap.get(str);
        if (concurrentHashMap2 == null) {
            concurrentHashMap2 = new ConcurrentHashMap();
            ConcurrentHashMap concurrentHashMap3 = (ConcurrentHashMap) concurrentHashMap.putIfAbsent(str, concurrentHashMap2);
            if (concurrentHashMap3 != null) {
                concurrentHashMap2 = concurrentHashMap3;
            }
        }
        String str3 = (String) concurrentHashMap2.get(str2);
        if (str3 != null) {
            return str3;
        }
        String strM2255 = AbstractC0726.m2255(AbstractC0441.m2103(str), AbstractC0441.m2103(str2));
        concurrentHashMap2.put(str2, strM2255);
        return strM2255;
    }
}
