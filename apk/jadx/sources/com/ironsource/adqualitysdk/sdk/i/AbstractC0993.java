package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﹽ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC0993 {
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static boolean m2387(List list, int i, Class cls) {
        Object obj = list.get(i);
        return obj == null || cls.isAssignableFrom(obj.getClass());
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Object m2388(List list, int i, Class cls) {
        Object obj = list.get(i);
        if (obj == null || cls.isAssignableFrom(obj.getClass())) {
            return obj;
        }
        throw new ClassCastException(StringFog.decrypt("PbSWwdpvaFAfpoyP\n", "ftX4r7UbSDM=\n") + obj.getClass().getName() + StringFog.decrypt("2Gj1wQ==\n", "+Bya4ToKz64=\n") + cls.getName());
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static List m2389(List list, int i) {
        return (list.size() <= i || !m2387(list, i, List.class)) ? new ArrayList() : (List) m2388(list, i, List.class);
    }
}
