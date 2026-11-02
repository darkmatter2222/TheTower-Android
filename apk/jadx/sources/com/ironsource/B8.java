package com.ironsource;

import android.content.Context;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class B8 {
    public static I5 a(JSONObject jSONObject) {
        return new I5.a(jSONObject.optString(G5.r)).b().b(jSONObject.optBoolean("enabled")).a(new C3951z8()).a(a()).a(false).a();
    }

    public static C3843t8.e a(X4 x4, C3843t8.e eVar) {
        if (x4 == null || x4.g() == null || x4.g().get("rewarded") == null) {
            return eVar;
        }
        return Boolean.parseBoolean(x4.g().get("rewarded")) ? C3843t8.e.RewardedVideo : C3843t8.e.Interstitial;
    }

    public static C3933y8 a(Context context, String str, String str2, String str3, Map<String, String> map) throws Exception {
        C3933y8.a aVar = new C3933y8.a();
        if (map != null && map.containsKey("sessionid")) {
            aVar.d(map.get("sessionid"));
        }
        aVar.a(context);
        aVar.b(str3);
        return aVar.e(str).a(str2).a();
    }

    private static ArrayList<Pair<String, String>> a() {
        ArrayList<Pair<String, String>> arrayList = new ArrayList<>();
        arrayList.add(new Pair<>("Content-Type", G5.M));
        arrayList.add(new Pair<>(G5.N, G5.O));
        return arrayList;
    }

    public static boolean a(X4 x4) {
        if (x4 == null || x4.g().get("inAppBidding") == null) {
            return false;
        }
        return Boolean.parseBoolean(x4.g().get("inAppBidding"));
    }
}
