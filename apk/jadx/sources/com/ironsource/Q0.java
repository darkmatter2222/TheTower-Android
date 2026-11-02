package com.ironsource;

import com.ironsource.mediationsdk.model.NetworkSettings;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import p005kotlin.Pair;
import p005kotlin.TuplesKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes4.dex */
public final class Q0 extends C3652j2 {
    private final Map<String, K> e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Q0(List<? extends NetworkSettings> providers, int i) {
        super(providers, i);
        Intrinsics.checkNotNullParameter(providers, "providers");
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(providers, 10)), 16));
        Iterator<T> it = providers.iterator();
        while (it.hasNext()) {
            Pair pair = TuplesKt.to(((NetworkSettings) it.next()).getProviderName(), new K(i));
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        this.e = linkedHashMap;
    }

    private final void a(Map<String, I> map) {
        for (Map.Entry<String, K> entry : this.e.entrySet()) {
            entry.getValue().a(map.get(entry.getKey()));
        }
    }

    @Override // com.ironsource.C3652j2
    public String a(String instanceName) {
        String strD;
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        K k = this.e.get(instanceName);
        return (k == null || (strD = k.d()) == null) ? "" : strD;
    }

    public final void a(Mg waterfallInstances) {
        Intrinsics.checkNotNullParameter(waterfallInstances, "waterfallInstances");
        List<A> listB = waterfallInstances.b();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(listB, 10)), 16));
        for (A a : listB) {
            Pair pair = TuplesKt.to(a.p(), a.t());
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        a(linkedHashMap);
    }
}
