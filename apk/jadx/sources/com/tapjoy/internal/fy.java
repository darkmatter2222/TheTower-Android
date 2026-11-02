package com.tapjoy.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class fy {
    public fs a;
    public volatile gi.a b;
    public int c;
    public volatile gi.a d;
    public volatile gi.a e;

    public final void a() {
        fs fsVar = this.a;
        if (fsVar != null) {
            fsVar.c();
        }
    }

    public final synchronized void a(int i) {
        int i2;
        gi.a aVar = this.b;
        if (aVar != null && (i2 = this.c) < i) {
            int i3 = i | i2;
            this.c = i3;
            aVar.a("state", Integer.valueOf(i3)).b().c();
        }
    }

    public final void b() {
        a(16);
        gi.a aVar = this.d;
        if (aVar != null) {
            this.d = null;
            aVar.b().c();
        }
    }
}
