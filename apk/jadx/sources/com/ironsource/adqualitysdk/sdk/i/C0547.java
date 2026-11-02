package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᑋ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0547 extends AbstractC0324 {
    public C0547(String str, String str2, C0983 c0983) {
        super(str, str2);
        if (c0983 != null) {
            C0116 c0116 = c0983.f3493;
            String str3 = c0116 != null ? c0116.f655.f2898.f2711 : null;
            String str4 = c0116 != null ? c0116.f648.f3545.f2382 : null;
            ArrayList<C0983> arrayList = new ArrayList();
            while (c0983 != null && c0983.f3494 != null) {
                arrayList.add(c0983);
                c0983 = c0983.f3495;
            }
            for (C0983 c0984 : arrayList) {
                C1014 c1014 = c0984.f3494;
                C0731 c0731 = c1014.f3585;
                this.f1576.add(new C0309(c0731.f2710 + StringFog.decrypt("iQ==\n", "p93gkhORYeM=\n") + c0731.f2711, c1014.f3586, AbstractC0897.m2299("5jPzEA==\n", "yECBfCO+vVY=\n", new StringBuilder().append(StringFog.decrypt("/noxPtvM8Z4=\n", "nxRVTLSllbM=\n")).append(c0731.f2710).append(StringFog.decrypt("Mw==\n", "HgsAX+fwR2I=\n")).append(c0731.f2711)), (c0984.m2381() + c0984.f3494.m2399()) - 1, (str3 == null || str4 == null || !str4.equals(c0731.f2710) || str3.equals(c0731.f2711)) ? null : str3));
            }
        } else {
            this.f1576.add(new C0309(str, str2, AbstractC0897.m2299("+880rZmoSQK53nWphKJE\n", "1qxbw/fNKnY=\n", new StringBuilder().append(str)), 0, null));
        }
        StackTraceElement[] stackTrace = new Exception().getStackTrace();
        ArrayList<StackTraceElement> arrayList2 = new ArrayList();
        String name = C1014.class.getName();
        for (int length = stackTrace.length - 1; length >= 0; length--) {
            StackTraceElement stackTraceElement = stackTrace[length];
            if (stackTraceElement.getClassName().equals(name)) {
                break;
            }
            arrayList2.add(0, stackTraceElement);
        }
        for (StackTraceElement stackTraceElement2 : arrayList2) {
            this.f1576.add(new C0309(stackTraceElement2.getClassName(), stackTraceElement2.getMethodName(), stackTraceElement2.getFileName(), stackTraceElement2.getLineNumber(), null));
        }
    }
}
