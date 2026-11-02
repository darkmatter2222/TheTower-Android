package com.google.android.play.deku.j$.util;

import com.google.android.play.deku.java.util.function.Consumer;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-bb91944b082bf4b7fbd41b6e2b3f121d681bdc5ad0cdf9802a2430155b14e3ec */
/* JADX INFO: loaded from: classes2.dex */
public final class c implements Iterator {
    public final /* synthetic */ byte a = 0;
    public final Iterator b;

    public c(d dVar) {
        this.b = dVar.a.iterator();
    }

    public c(g gVar) {
        this.b = gVar.a.iterator();
    }

    public final void forEachRemaining(Consumer consumer) {
        switch (this.a) {
            case 0:
                a.b(this.b, consumer);
                break;
            default:
                a.b(this.b, new e(consumer));
                break;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.a) {
            case 0:
                break;
        }
        return this.b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.a) {
            case 0:
                return this.b.next();
            default:
                return new f((Map.Entry) this.b.next());
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }
}
