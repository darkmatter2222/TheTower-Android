package com.ironsource;

import com.ironsource.mediationsdk.IronSource;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class E5 implements D0 {
    private final IronSource.a a;
    private final E0 b;
    private final List<D0> c;
    private final C3570e9 d;
    private final Cb e;
    private final C3702lg f;
    private final C3508b2 g;
    private final N h;
    private final C3778pg i;
    private final C3458ad j;

    public E5(IronSource.a adFormat, E0.b level, List<? extends D0> eventsInterfaces, AbstractC3800r3 abstractC3800r3) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(level, "level");
        Intrinsics.checkNotNullParameter(eventsInterfaces, "eventsInterfaces");
        this.a = adFormat;
        E0 e0 = new E0(adFormat, level, this, abstractC3800r3);
        this.b = e0;
        this.c = CollectionsKt.toMutableList((Collection) eventsInterfaces);
        C3570e9 init = e0.e;
        Intrinsics.checkNotNullExpressionValue(init, "init");
        this.d = init;
        Cb load = e0.f;
        Intrinsics.checkNotNullExpressionValue(load, "load");
        this.e = load;
        C3702lg token = e0.g;
        Intrinsics.checkNotNullExpressionValue(token, "token");
        this.f = token;
        C3508b2 auction = e0.h;
        Intrinsics.checkNotNullExpressionValue(auction, "auction");
        this.g = auction;
        N adInteraction = e0.i;
        Intrinsics.checkNotNullExpressionValue(adInteraction, "adInteraction");
        this.h = adInteraction;
        C3778pg troubleshoot = e0.j;
        Intrinsics.checkNotNullExpressionValue(troubleshoot, "troubleshoot");
        this.i = troubleshoot;
        C3458ad operational = e0.k;
        Intrinsics.checkNotNullExpressionValue(operational, "operational");
        this.j = operational;
    }

    public /* synthetic */ E5(IronSource.a aVar, E0.b bVar, List list, AbstractC3800r3 abstractC3800r3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar, bVar, (i & 4) != 0 ? CollectionsKt.emptyList() : list, (i & 8) != 0 ? null : abstractC3800r3);
    }

    public final N a() {
        return this.h;
    }

    @Override // com.ironsource.D0
    public Map<String, Object> a(B0 event) {
        Intrinsics.checkNotNullParameter(event, "event");
        HashMap map = new HashMap();
        Iterator<D0> it = this.c.iterator();
        while (it.hasNext()) {
            Map<String, Object> mapA = it.next().a(event);
            Intrinsics.checkNotNullExpressionValue(mapA, "getEventsAdditionalDataMap(...)");
            map.putAll(mapA);
        }
        return map;
    }

    public final void a(D0 eventInterface) {
        Intrinsics.checkNotNullParameter(eventInterface, "eventInterface");
        this.c.add(eventInterface);
    }

    public final void a(boolean z) {
        if (z) {
            this.e.a(true);
        } else {
            if (z) {
                throw new NoWhenBranchMatchedException();
            }
            if (this.a == IronSource.a.BANNER) {
                this.e.d();
            } else {
                this.e.a(false);
            }
        }
    }

    public final C3508b2 b() {
        return this.g;
    }

    public final List<D0> c() {
        return this.c;
    }

    public final C3570e9 d() {
        return this.d;
    }

    public final Cb e() {
        return this.e;
    }

    public final C3458ad f() {
        return this.j;
    }

    public final C3702lg g() {
        return this.f;
    }

    public final C3778pg h() {
        return this.i;
    }
}
