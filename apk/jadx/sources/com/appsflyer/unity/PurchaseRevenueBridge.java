package com.appsflyer.unity;

import android.util.Log;
import com.appsflyer.api.PurchaseClient;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class PurchaseRevenueBridge {
    private static final String TAG = "AppsFlyerUnity";
    private static UnityPurchaseRevenueBridge unityBridge;

    public interface UnityPurchaseRevenueBridge {
        String getAdditionalParameters(String str, String str2);
    }

    public static PurchaseClient.Builder configurePurchaseClient(PurchaseClient.Builder builder) {
        return builder.setInAppPurchaseEventDataSource(new PurchaseClient.InAppPurchaseEventDataSource() { // from class: com.appsflyer.unity.PurchaseRevenueBridge$$ExternalSyntheticLambda0
            @Override // com.appsflyer.api.PurchaseClient.PurchaseEventDataSource
            public final Map onNewPurchases(List list) {
                return PurchaseRevenueBridge.lambda$configurePurchaseClient$0(list);
            }
        }).setSubscriptionPurchaseEventDataSource(new PurchaseClient.SubscriptionPurchaseEventDataSource() { // from class: com.appsflyer.unity.PurchaseRevenueBridge$$ExternalSyntheticLambda1
            @Override // com.appsflyer.api.PurchaseClient.PurchaseEventDataSource
            public final Map onNewPurchases(List list) {
                return PurchaseRevenueBridge.lambda$configurePurchaseClient$1(list);
            }
        });
    }

    static /* synthetic */ Map lambda$configurePurchaseClient$0(List list) {
        try {
            String string = new JSONObject(Collections.singletonMap("events", list)).toString();
            UnityPurchaseRevenueBridge unityPurchaseRevenueBridge = unityBridge;
            String additionalParameters = unityPurchaseRevenueBridge != null ? unityPurchaseRevenueBridge.getAdditionalParameters(string, "") : null;
            if (additionalParameters != null) {
                JSONObject jSONObject = new JSONObject(additionalParameters);
                HashMap map = new HashMap();
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    map.put(next, jSONObject.get(next));
                }
                return map;
            }
        } catch (JSONException e) {
            Log.e(TAG, "Failed to parse additional params from Unity", e);
        }
        return Collections.emptyMap();
    }

    static /* synthetic */ Map lambda$configurePurchaseClient$1(List list) {
        try {
            String string = new JSONObject(Collections.singletonMap("events", list)).toString();
            UnityPurchaseRevenueBridge unityPurchaseRevenueBridge = unityBridge;
            String additionalParameters = unityPurchaseRevenueBridge != null ? unityPurchaseRevenueBridge.getAdditionalParameters("", string) : null;
            if (additionalParameters != null) {
                JSONObject jSONObject = new JSONObject(additionalParameters);
                HashMap map = new HashMap();
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    map.put(next, jSONObject.get(next));
                }
                return map;
            }
        } catch (JSONException e) {
            Log.e(TAG, "Failed to parse additional params from Unity", e);
        }
        return Collections.emptyMap();
    }

    public static void setUnityBridge(UnityPurchaseRevenueBridge unityPurchaseRevenueBridge) {
        unityBridge = unityPurchaseRevenueBridge;
    }
}
