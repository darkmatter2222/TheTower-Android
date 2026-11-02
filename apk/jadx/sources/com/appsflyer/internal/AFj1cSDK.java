package com.appsflyer.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.IntIterator;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.ranges.IntRange;
import p005kotlin.ranges.RangesKt;
import p005kotlin.sequences.Sequence;
import p005kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes2.dex */
public final class AFj1cSDK {
    private static final Object AFAdRevenueData(Object obj) {
        if (obj instanceof JSONArray) {
            return AFAdRevenueData((JSONArray) obj);
        }
        if (obj instanceof JSONObject) {
            return getRevenue((JSONObject) obj);
        }
        if (Intrinsics.areEqual(obj, JSONObject.NULL)) {
            return null;
        }
        return obj;
    }

    private static final List<Object> AFAdRevenueData(JSONArray jSONArray) throws JSONException {
        IntRange intRangeUntil = RangesKt.until(0, jSONArray.length());
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(intRangeUntil, 10));
        Iterator<Integer> it = intRangeUntil.iterator();
        while (it.hasNext()) {
            Object obj = jSONArray.get(((IntIterator) it).nextInt());
            Intrinsics.checkNotNullExpressionValue(obj, "");
            arrayList.add(AFAdRevenueData(obj));
        }
        return arrayList;
    }

    public static final Map<String, Object> getRevenue(JSONObject jSONObject) throws JSONException {
        Intrinsics.checkNotNullParameter(jSONObject, "");
        Iterator<String> itKeys = jSONObject.keys();
        Intrinsics.checkNotNullExpressionValue(itKeys, "");
        Sequence sequenceAsSequence = SequencesKt.asSequence(itKeys);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : sequenceAsSequence) {
            Object obj2 = jSONObject.get((String) obj);
            Intrinsics.checkNotNullExpressionValue(obj2, "");
            linkedHashMap.put(obj, AFAdRevenueData(obj2));
        }
        return linkedHashMap;
    }
}
