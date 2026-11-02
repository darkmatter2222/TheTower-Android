package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒎ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0555 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0553 f2290;

    public C0555(C0553 c0553) {
        this.f2290 = c0553;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C1005 c1005 = this.f2290.f2286;
        C0593 c0593 = c1005.f3545;
        if (c0593.f2376 == null) {
            c0593.f2376 = new C3474h0(c0593.f2384.optJSONObject(C0593.f2372));
        }
        C3474h0 c3474h0 = c0593.f2376;
        if (c3474h0 != null) {
            synchronized (c1005) {
                c1005.f3539 = c3474h0;
            }
            if (c1005.f3542.mo1921()) {
                C3480k0.f284 = c3474h0;
            }
        }
        c1005.f3545.m2141().m2384(StringFog.decrypt("HCNQMpUJdZ0bJkM+\n", "ckIkW+NsN+8=\n"), c1005.f3542);
        Iterator it = c1005.f3545.m2140().keySet().iterator();
        while (it.hasNext()) {
            C0731 c0731 = (C0731) c1005.f3545.m2140().get((String) it.next());
            if (!c0731.f2708) {
                c1005.f3540.add(new C0116(c1005, c1005.f3543, c1005.f3542, c1005.m2397(c0731), c1005.f3545.m2141()));
            }
        }
        c1005.m2398();
        Iterator it2 = c1005.m2396().iterator();
        while (it2.hasNext()) {
            ((C0116) it2.next()).m1902();
        }
        C0303 c0303 = this.f2290.f2283.f1899;
        if (c0303 != null) {
            AbstractC0340.m2053(new C0333(c0303, this.f2290.f2285, EnumC0367.f1678));
        }
        AbstractC0250.m1997(StringFog.decrypt("HTFI7iIM9UgsE0fuJgjkVQ==\n", "Xl4mgEdvgSc=\n"), this.f2290.f2286.f3545.f2381 + StringFog.decrypt("wy6rhXNTv5OMP+SYaFW/gpA+op5xWqXHiiOtn3RXsI6ZKKA=\n", "403E6x023Oc=\n"));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo2130(Throwable th) {
        try {
            ((JSONObject) C0392.m2069(this.f2290.f2283).get(this.f2290.f2286.f3545.f2382)).put(StringFog.decrypt("16MJyA==\n", "vs1gvAXFxkk=\n"), false);
        } catch (JSONException e) {
            String strDecrypt = StringFog.decrypt("Ib9Fn4KMDegQnUqfhogc9Q==\n", "YtAr8efveYc=\n");
            AbstractC0250.m1999(strDecrypt, strDecrypt, StringFog.decrypt("HfQeo7QOrxAs8gWioQ61GzHyTLipDr8aNugJr7JBrlUu4x6/r0GyVTL1A6I=\n", "WIZszMYu3HU=\n"), e, null, false);
        }
        C0303 c0303 = this.f2290.f2283.f1899;
        if (c0303 != null) {
            AbstractC0340.m2053(new C0345(c0303, this.f2290.f2285, EnumC0375.f1830));
        }
        AbstractC1071.m2436(StringFog.decrypt("v5XOZqng/5uOt8FmreTuhg==\n", "/PqgCMyDi/Q=\n"), AbstractC0897.m2299("Pt7C+cHvmL1xzw==\n", "Hr2tl6+K+8k=\n", new StringBuilder().append(StringFog.decrypt("A8EdBCgPUMEvxwYKNkZDxijUTw==\n", "RrNva1ovOa8=\n")).append(this.f2290.f2286.f3545.f2381)), th, true, true, true);
        AbstractC0250.m1992(StringFog.decrypt("C6/ZDIv3M9QzmMwy\n", "SsuIeeqbWqA=\n"), StringFog.decrypt("lRD1t9MYwcj0Ebax1Bjc37BeorrIBsuavRC8psgLwtOuF7u1gSP9+7AvoLPNA9rD9C2RmYE=\n", "1H7V0qFqrro=\n") + this.f2290.f2286.f3545.f2381 + StringFog.decrypt("iP9tByG+e0bH7iw=\n", "qJwCaU/bGDI=\n"));
    }
}
