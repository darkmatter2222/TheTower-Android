package com.ironsource;

import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.ud, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3866ud {
    public static final a b = new a(null);
    public static final String c = "placements";
    public static final String d = "placementName";
    private final JSONArray a;

    /* JADX INFO: renamed from: com.ironsource.ud$a */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public C3866ud(JSONObject configuration) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        this.a = configuration.optJSONArray(c);
    }

    public final <T> Map<String, T> a(Function1<? super JSONObject, ? extends T> valueExtractor) throws JSONException {
        Intrinsics.checkNotNullParameter(valueExtractor, "valueExtractor");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        JSONArray jSONArray = this.a;
        if (jSONArray != null) {
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                String strOptString = jSONObject.optString("placementName");
                Intrinsics.checkNotNull(jSONObject);
                linkedHashMap.put(strOptString, valueExtractor.invoke(jSONObject));
            }
        }
        return linkedHashMap;
    }
}
