package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.ironsource.G5;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class AFj1dSDK {
    public static Map<String, String> getMediationNetwork(Map<String, String> map) {
        HashMap map2 = new HashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            try {
                map2.put(URLEncoder.encode(entry.getKey(), G5.O), URLEncoder.encode(entry.getValue(), G5.O));
            } catch (UnsupportedEncodingException e) {
                AFLogger.afErrorLogForExcManagerOnly("failed to encode map", e);
            }
        }
        return map2;
    }
}
