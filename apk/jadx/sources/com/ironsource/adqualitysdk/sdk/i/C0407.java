package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ڒ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0407 implements InterfaceC0142 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0400 f1932;

    public C0407(C0400 c0400) {
        this.f1932 = c0400;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0142
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1920() {
        HashMap map;
        C0533.f2218 = AbstractC0953.m2334().mo2342();
        AbstractC0795.f2978 = AbstractC0953.m2334().mo2343();
        this.f1932.f1920.f1900 = AbstractC0953.m2334().mo2349();
        AbstractC0250.m1997(StringFog.decrypt("8Qp++pqwrFDAKHH6nrS9TQ==\n", "smUQlP/T2D8=\n"), StringFog.decrypt("41iKaB0VjQfAEZBnFg2NCMtYg2wbWYcGyV+cagsWlho=\n", "pzH5CX955Gk=\n"));
        C0392 c0392 = this.f1932.f1920;
        c0392.getClass();
        ArrayList<C1005> arrayList = new ArrayList();
        for (C1005 c1005 : c0392.f1906 != null ? new ArrayList(c0392.f1906) : new ArrayList()) {
            if (c0392.m2084(c1005.f3545.f2382)) {
                arrayList.add(c1005);
            }
        }
        for (C1005 c1006 : arrayList) {
            String str = C0392.f1894;
            AbstractC0250.m2000(str, str, AbstractC0897.m2299("jhgDAdBe0zHBCQ==\n", "rntsb747sEU=\n", new StringBuilder().append(StringFog.decrypt("V4CKEsI2wHZ0yQ==\n", "E+n5c6BaqRg=\n")).append(c1006.f3545.f2381)), true);
            String str2 = c1006.f3545.f2382;
            synchronized (c0392) {
                map = c0392.f1904;
            }
            c0392.m2083(str2, (JSONObject) map.get(str2));
            AbstractC0340.m2057(new C0464(c1006));
            ((ArrayList) c0392.m2076()).remove(c1006);
        }
    }
}
