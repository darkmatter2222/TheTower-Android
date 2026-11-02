package com.tapjoy.internal;

import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class iu extends is<Void> {
    private final ey.a c = new ey.a();
    private fa d = null;

    public final boolean a(ex exVar) {
        if (this.d == null) {
            this.d = exVar.n;
        } else if (exVar.n != this.d) {
            return false;
        }
        this.c.c.add(exVar);
        return true;
    }

    @Override // com.tapjoy.internal.bu
    public final String c() {
        return this.d == fa.USAGES ? "api/v1/usages" : "api/v1/cevs";
    }

    @Override // com.tapjoy.internal.is, com.tapjoy.internal.bu
    public final Map<String, Object> e() {
        Map<String, Object> mapE = super.e();
        mapE.put("events", new bg(hz.a(this.c.b())));
        return mapE;
    }

    public final int g() {
        return this.c.c.size();
    }
}
