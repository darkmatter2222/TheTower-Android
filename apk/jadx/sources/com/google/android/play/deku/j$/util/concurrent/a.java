package com.google.android.play.deku.j$.util.concurrent;

/* JADX INFO: compiled from: r8-map-id-bb91944b082bf4b7fbd41b6e2b3f121d681bdc5ad0cdf9802a2430155b14e3ec */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a extends n {
    public final ConcurrentHashMap i;
    public j j;

    public a(j[] jVarArr, int i, int i2, ConcurrentHashMap concurrentHashMap) {
        super(jVarArr, i, i2);
        this.i = concurrentHashMap;
        a();
    }

    public final boolean hasMoreElements() {
        return this.b != null;
    }

    public final boolean hasNext() {
        return this.b != null;
    }

    public final void remove() {
        j jVar = this.j;
        if (jVar == null) {
            throw new IllegalStateException();
        }
        this.j = null;
        this.i.f(jVar.b, null, null);
    }
}
