package com.ironsource;

import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.wa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C3899wa {
    private InterfaceC3863ua a;

    public C3899wa(InterfaceC3863ua interfaceC3863ua) {
        this.a = interfaceC3863ua;
    }

    public void a(C3881va c3881va, JSONObject jSONObject) {
        this.a.a(false, c3881va.a(), jSONObject);
    }

    public void b(C3881va c3881va, JSONObject jSONObject) {
        this.a.a(true, c3881va.d(), jSONObject);
    }
}
