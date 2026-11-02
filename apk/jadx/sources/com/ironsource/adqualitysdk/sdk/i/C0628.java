package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᔈ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0628 extends AbstractC0993 {
    static {
        StringFog.decrypt("PKQcmQTOur4lrB6LH8Q=\n", "SsFu6m2h1P0=\n");
        StringFog.decrypt("Ok0/tW8wJ1MvQSWTcA==\n", "XShL9ANcdCc=\n");
        StringFog.decrypt("5i8MV2a6YkDmLwBba6JTTeQ5\n", "gUp4FgrWMCU=\n");
        StringFog.decrypt("lGFAvpdQrPyhYVOdhm++/JBs\n", "8wQ0+P4i34g=\n");
        StringFog.decrypt("IuVTIrh01Jgm5mYdonfykxjiZhG/Yw==\n", "S5YUeNEEl/c=\n");
        StringFog.decrypt("ETBrE4sv69UGJk8mjy/KxAc8Zhs=\n", "dVUIfOZfmbA=\n");
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static int m2153(ArrayList arrayList) {
        return AbstractC0679.m2217((String) AbstractC0993.m2388(arrayList, 0, String.class), (String) AbstractC0993.m2388(arrayList, 1, String.class));
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static boolean m2154(ArrayList arrayList) {
        return AbstractC0679.m2216((String) AbstractC0993.m2388(arrayList, 0, String.class));
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static String m2155(ArrayList arrayList) {
        String str = (String) AbstractC0993.m2388(arrayList, 0, String.class);
        boolean zBooleanValue = arrayList.size() > 2 ? ((Boolean) AbstractC0993.m2388(arrayList, 2, Boolean.class)).booleanValue() : true;
        if (arrayList.get(1) instanceof String) {
            return AbstractC0679.m2219(str, (String) AbstractC0993.m2388(arrayList, 1, String.class), zBooleanValue);
        }
        JSONArray jSONArray = new JSONArray((Collection) AbstractC0993.m2388(arrayList, 1, List.class));
        for (int i = 0; i < jSONArray.length(); i++) {
            String strM2219 = AbstractC0679.m2219(str, jSONArray.optString(i), zBooleanValue);
            if (strM2219 != null) {
                return strM2219;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static ArrayList m2156(ArrayList arrayList) {
        Object objM2388 = AbstractC0993.m2388(arrayList, 0, Object.class);
        List list = (List) AbstractC0993.m2388(arrayList, 1, List.class);
        int iIntValue = ((Integer) AbstractC0993.m2388(arrayList, 2, Integer.class)).intValue();
        C0632 c0632 = C0793.m2275().f2974;
        c0632.getClass();
        C0663 c0663 = new C0663();
        C0724 c0724 = new C0724();
        C0735 c0735 = c0724.f2696;
        c0735.f2723 = -1;
        c0735.f2722 = -1;
        c0735.f2721 = -1;
        c0735.f2725 = -1;
        c0724.f2695 = c0663;
        c0724.f2694 = null;
        C0735 c0736 = c0724.f2696;
        c0736.f2729 = list;
        c0736.f2728 = iIntValue;
        c0736.f2731 = c0663.getClass();
        c0724.f2696.f2730 = null;
        C0706 c0706 = new C0706(c0724);
        c0706.f2656 = true;
        c0632.m2163(objM2388, c0706, 0, (C0758) null);
        return new ArrayList(c0706.f2655);
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static ArrayList m2157(ArrayList arrayList) {
        String str = (String) AbstractC0993.m2388(arrayList, 0, String.class);
        if (arrayList.get(1) instanceof String) {
            return AbstractC0679.m2215(str, (String) AbstractC0993.m2388(arrayList, 1, String.class), false);
        }
        JSONArray jSONArray = new JSONArray((Collection) AbstractC0993.m2388(arrayList, 1, List.class));
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList2.addAll(AbstractC0679.m2215(str, jSONArray.optString(i), false));
        }
        return arrayList2;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m2158(ArrayList arrayList) {
        return AbstractC0679.m2218((String) AbstractC0993.m2388(arrayList, 0, String.class));
    }
}
