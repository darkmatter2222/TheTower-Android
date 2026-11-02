package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.י, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0356 extends AbstractC0993 {
    static {
        StringFog.decrypt("uUtzjTW5Gvq0V3eOLbk=\n", "2jkW7EHcSI8=\n");
        StringFog.decrypt("66RxC7rGnVj3hXc2seqY\n", "mdEfRNSL/DE=\n");
        StringFog.decrypt("naYpp3D84ZmEpw67TffNnA==\n", "7cla0z+SrPg=\n");
        StringFog.decrypt("jveg2xegJEaH/bfgPYgpTpDMu902pCw=\n", "/pjTr1PFSCc=\n");
        StringFog.decrypt("jdCPo0Q5WeCRwIKYRQhi5o3AgIg=\n", "/6Xh7Cp6No4=\n");
        StringFog.decrypt("9I8uL4g5I3jqjjg4szgSQ+ySODqj\n", "hOBdW8dXYBc=\n");
        StringFog.decrypt("B/ooayFcyfEO8D9QC3rK/hnwOGsKS/H4BfA6ew==\n", "d5VbH2U5pZA=\n");
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static long m2062(ArrayList arrayList) {
        int iIntValue;
        if (arrayList.size() > 1 && AbstractC0993.m2387(arrayList, 1, Integer.class)) {
            iIntValue = ((Integer) AbstractC0993.m2388(arrayList, 1, Integer.class)).intValue();
        } else {
            if (arrayList.size() <= 2) {
                return 0L;
            }
            iIntValue = ((Integer) AbstractC0993.m2388(arrayList, 2, Integer.class)).intValue();
        }
        return iIntValue;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static AbstractRunnableC0757 m2063(C0116 c0116, C0983 c0983, ArrayList arrayList) {
        if (AbstractC0993.m2387(arrayList, 0, AbstractRunnableC0757.class)) {
            return (AbstractRunnableC0757) AbstractC0993.m2388(arrayList, 0, AbstractRunnableC0757.class);
        }
        return new C0391(arrayList.size() > 2 ? AbstractC0993.m2389(arrayList, 2) : AbstractC0993.m2389(arrayList, 1), (C1014) AbstractC0993.m2388(arrayList, 0, C1014.class), c0983, c0116);
    }
}
