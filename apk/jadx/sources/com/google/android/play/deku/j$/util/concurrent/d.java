package com.google.android.play.deku.j$.util.concurrent;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-bb91944b082bf4b7fbd41b6e2b3f121d681bdc5ad0cdf9802a2430155b14e3ec */
/* JADX INFO: loaded from: classes2.dex */
public final class d extends a implements Iterator {
    @Override // java.util.Iterator
    public final Object next() {
        j jVar = this.b;
        if (jVar == null) {
            throw new NoSuchElementException();
        }
        Object obj = jVar.b;
        Object obj2 = jVar.c;
        this.j = jVar;
        a();
        return new i(obj, obj2, this.i);
    }
}
