package com.ironsource;

import android.os.Bundle;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import p005kotlin.Pair;
import p005kotlin.TuplesKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes4.dex */
public final class V5 {
    public static final V5 a = new V5();
    public static final String b = "ext_";

    private V5() {
    }

    public final Map<String, String> a(Bundle bundle) {
        Set<String> setKeySet;
        if (bundle == null || (setKeySet = bundle.keySet()) == null) {
            return MapsKt.emptyMap();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(setKeySet, 10)), 16));
        for (String str : setKeySet) {
            String str2 = b + str;
            Object obj = bundle.get(str);
            Pair pair = TuplesKt.to(str2, obj instanceof Iterable ? CollectionsKt.joinToString$default((Iterable) obj, ", ", null, null, 0, null, null, 62, null) : obj == null ? null : obj.toString());
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return linkedHashMap;
    }
}
