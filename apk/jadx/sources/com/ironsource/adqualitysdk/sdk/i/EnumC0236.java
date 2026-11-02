package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ˑ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public enum EnumC0236 {
    f1177,
    f1176,
    f1175;

    /* JADX WARN: Code duplicated, block: B:20:0x004b  */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static EnumC0236 m1985(String str) {
        byte b;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int iHashCode = str.hashCode();
        if (iHashCode != 3642) {
            if (iHashCode != 96921) {
                if (iHashCode == 109261 && str.equals(StringFog.decrypt("T3zM\n", "IROiK8Vx2Ds=\n"))) {
                    b = 0;
                } else {
                    b = -1;
                }
            } else if (str.equals(StringFog.decrypt("4hY4\n", "g2JUIk200xU=\n"))) {
                b = 1;
            } else {
                b = -1;
            }
        } else if (str.equals(StringFog.decrypt("SAY=\n", "OmqKMezh88Y=\n"))) {
            b = 2;
        } else {
            b = -1;
        }
        if (b == 0) {
            return f1177;
        }
        if (b == 1) {
            return f1176;
        }
        if (b != 2) {
            return null;
        }
        return f1175;
    }
}
