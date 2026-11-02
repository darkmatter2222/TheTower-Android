package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes4.dex */
public class R3 {
    private boolean a = true;
    private IronSourceError b = null;

    public IronSourceError a() {
        return this.b;
    }

    public void a(IronSourceError ironSourceError) {
        this.a = false;
        this.b = ironSourceError;
    }

    public boolean b() {
        return this.a;
    }

    public void c() {
        this.a = true;
        this.b = null;
    }

    public String toString() {
        return b() ? "valid:" + this.a : "valid:" + this.a + ", IronSourceError:" + this.b;
    }
}
