package com.ironsource;

import com.ironsource.adapters.facebook.FacebookConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import p005kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class K {
    private final int a;
    private final List<I> b = new CopyOnWriteArrayList();

    public K(int i) {
        this.a = i;
    }

    private final boolean a() {
        return c() && this.b.size() >= this.a;
    }

    private final boolean b() {
        return this.a == 0;
    }

    private final boolean c() {
        return this.a != -1;
    }

    public final void a(I i) {
        if (b()) {
            return;
        }
        if (a()) {
            CollectionsKt.removeFirstOrNull(this.b);
        }
        if (i == null) {
            i = new I(C3797r0.a.NotPartOfWaterfall);
        }
        this.b.add(i);
    }

    public final String d() {
        List<I> list = this.b;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((I) it.next()).b().ordinal()));
        }
        return CollectionsKt.joinToString$default(arrayList, FacebookConstants.PLACEMENT_IDS_SEPARATOR, null, null, 0, null, null, 62, null);
    }
}
