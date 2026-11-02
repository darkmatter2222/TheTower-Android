package com.ironsource;

import java.net.URL;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.t2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C3837t2 extends com.ironsource.mediationsdk.e.a {
    public C3837t2(InterfaceC3526c2 interfaceC3526c2, URL url, JSONObject jSONObject, boolean z, A2 a2) {
        super(interfaceC3526c2, url, jSONObject, z, a2);
    }

    @Override // com.ironsource.mediationsdk.e.a
    protected void a(boolean z, InterfaceC3526c2 interfaceC3526c2, long j) {
        try {
            if (z) {
                ((InterfaceC3706m2) interfaceC3526c2).a(this.b, this.f + 1, j, this.j, this.i);
            } else {
                interfaceC3526c2.a(this.c, this.d, this.f + 1, this.g, j);
            }
        } catch (Exception e) {
            C3801r4.d().a(e);
            interfaceC3526c2.a(1009, e.getMessage(), this.f + 1, this.g, j);
        }
    }
}
