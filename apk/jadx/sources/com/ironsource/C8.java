package com.ironsource;

import com.ironsource.adapters.facebook.FacebookConstants;
import com.ironsource.sdk.utils.SDKUtils;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.IntIterator;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.ranges.IntRange;
import p005kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes4.dex */
public final class C8 {
    public static final C8 a = new C8();

    private C8() {
    }

    @JvmStatic
    public static final String a() {
        Object objOpt;
        JSONObject jSONObjectOptJSONObject = SDKUtils.getControllerConfigAsJSONObject().optJSONObject(C3510b4.a.c);
        if (jSONObjectOptJSONObject == null || (objOpt = jSONObjectOptJSONObject.opt(G5.K)) == null || !(objOpt instanceof JSONArray)) {
            return null;
        }
        JSONArray jSONArray = (JSONArray) objOpt;
        IntRange intRangeUntil = RangesKt.until(0, jSONArray.length());
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it = intRangeUntil.iterator();
        while (it.hasNext()) {
            Object objOpt2 = jSONArray.opt(((IntIterator) it).nextInt());
            if (objOpt2 != null) {
                arrayList.add(objOpt2);
            }
        }
        return CollectionsKt.joinToString$default(arrayList, FacebookConstants.PLACEMENT_IDS_SEPARATOR, null, null, 0, null, null, 62, null);
    }
}
