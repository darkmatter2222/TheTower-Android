package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﻤ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC1031 {
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m2419(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        int length = objArr.length;
        boolean z = true;
        int i = 0;
        while (i < length) {
            Object obj = objArr[i];
            if (!z) {
                sb.append(StringFog.decrypt("PIE=\n", "EKGcnbaG5RQ=\n"));
            }
            if (obj instanceof String) {
                sb.append(StringFog.decrypt("LQ==\n", "D4n7jtZC8Ys=\n"));
                sb.append(obj);
                sb.append(StringFog.decrypt("eg==\n", "WP5g/MeXxuU=\n"));
            } else {
                sb.append(obj);
            }
            i++;
            z = false;
        }
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass();
    }

    public int hashCode() {
        return getClass().hashCode();
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0248 m2420(C0983 c0983, C0116 c0116) {
        C0248 c0248Mo1873 = mo1873(c0983, c0116);
        if (c0248Mo1873 != null) {
            Object obj = c0248Mo1873.f1193;
            if (obj instanceof AbstractC1031) {
                return ((AbstractC1031) obj).m2420(c0983, c0116);
            }
        }
        return c0248Mo1873;
    }

    /* JADX INFO: renamed from: ﾒ */
    public abstract C0248 mo1873(C0983 c0983, C0116 c0116);
}
