package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ｊ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1041 extends AbstractC0993 {
    static {
        StringFog.decrypt("2AC8\n", "tWHMGx7SaDE=\n");
        StringFog.decrypt("nM/yU8YpDA==\n", "+qCAFqdKZKM=\n");
        StringFog.decrypt("6HhDc7a3\n", "jhEvB9PF6tM=\n");
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static ArrayList m2425(C0116 c0116, ArrayList arrayList) {
        List list = (List) AbstractC0993.m2388(arrayList, 0, List.class);
        C1014 c1014 = (C1014) AbstractC0993.m2388(arrayList, 1, C1014.class);
        List arrayList2 = new ArrayList();
        if (arrayList.size() > 2) {
            if (AbstractC0993.m2387(arrayList, 2, C0116.class)) {
                c0116 = (C0116) AbstractC0993.m2388(arrayList, 2, C0116.class);
                if (arrayList.size() > 3) {
                    arrayList2 = AbstractC0993.m2389(arrayList, 3);
                }
            } else {
                arrayList2 = AbstractC0993.m2389(arrayList, 2);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList2.add(0, list.get(i));
            C0983 c0983 = c0116.f654;
            c1014.getClass();
            arrayList3.add(c1014.m2401(c0983, c0983.f3496, c0116, arrayList2).f1193);
            arrayList2.remove(0);
        }
        return arrayList3;
    }
}
