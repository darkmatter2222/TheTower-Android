package com.tapjoy.internal;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class ef implements ea.b {
    final eb a;
    private JSONObject b;

    public ef(eb ebVar) {
        this.a = ebVar;
    }

    @Override // com.tapjoy.internal.ea.b
    public final JSONObject a() {
        return this.b;
    }

    @Override // com.tapjoy.internal.ea.b
    public final void a(JSONObject jSONObject) {
        this.b = jSONObject;
    }

    public final void b() {
        this.a.a(new ec(this));
    }
}
