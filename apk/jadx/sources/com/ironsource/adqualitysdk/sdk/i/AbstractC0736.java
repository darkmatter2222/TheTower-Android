package com.ironsource.adqualitysdk.sdk.i;

import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵀ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC0736 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final HashMap f2733 = new HashMap();

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m2259(String str) {
        HashMap map = f2733;
        String str2 = (String) map.get(str);
        if (str2 != null) {
            return str2;
        }
        map.put(str, str);
        return str;
    }
}
