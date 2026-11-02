package com.tapjoy.internal;

import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class hr implements bz<it.a> {
    public final hj a;
    private final Map<String, hq> b = Collections.synchronizedMap(new HashMap());
    private final Map<String, it> c = new HashMap();
    private Set<String> d = null;

    public hr(hj hjVar) {
        this.a = hjVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.tapjoy.internal.bz
    public void a(bu<it.a> buVar, it.a aVar) {
        if (!(buVar instanceof it)) {
            throw new IllegalStateException(buVar.getClass().getName());
        }
        if (aVar.b != null) {
            List<String> list = aVar.b;
            synchronized (this) {
                this.d = new HashSet(list);
            }
        }
        it itVar = (it) buVar;
        String str = itVar.c;
        boolean z = itVar.d;
        this.c.remove(str);
        if (!z) {
            this.b.put(str, aVar.a);
        }
        hq hqVar = aVar.a;
        hk hkVar = this.a.o;
        if (hqVar instanceof hp) {
            hg.a("No content for \"{}\"", str);
            hkVar.a(str);
            return;
        }
        hg.a("New content for \"{}\" is ready", str);
        if (z) {
            hqVar.a(hkVar, new fy());
        } else {
            hkVar.b(str);
        }
    }

    final void a() {
        synchronized (this) {
            this.d = null;
        }
    }

    @Override // com.tapjoy.internal.bz
    public final void a(bu<it.a> buVar) {
        a(buVar, new it.a(new hp(), null));
    }
}
