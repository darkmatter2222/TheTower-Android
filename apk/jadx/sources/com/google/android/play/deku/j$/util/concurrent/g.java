package com.google.android.play.deku.j$.util.concurrent;

import java.util.Enumeration;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-bb91944b082bf4b7fbd41b6e2b3f121d681bdc5ad0cdf9802a2430155b14e3ec */
/* JADX INFO: loaded from: classes2.dex */
public final class g extends a implements Iterator, Enumeration {
    public final /* synthetic */ byte k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ g(j[] jVarArr, int i, int i2, ConcurrentHashMap concurrentHashMap, byte b) {
        super(jVarArr, i, i2, concurrentHashMap);
        this.k = b;
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.k) {
            case 0:
                j jVar = this.b;
                if (jVar == null) {
                    throw new NoSuchElementException();
                }
                Object obj = jVar.b;
                this.j = jVar;
                a();
                return obj;
            default:
                j jVar2 = this.b;
                if (jVar2 == null) {
                    throw new NoSuchElementException();
                }
                Object obj2 = jVar2.c;
                this.j = jVar2;
                a();
                return obj2;
        }
    }

    @Override // java.util.Enumeration
    public final Object nextElement() {
        switch (this.k) {
            case 0:
                break;
        }
        return next();
    }
}
