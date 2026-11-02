package com.ironsource.unity.androidbridge;

import com.ironsource.mediationsdk.adunit.adapter.utility.AdInfo;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.impression.LevelPlayImpressionData;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class AndroidBridgeUtilities {
    private static final ExecutorService callbackExecutor = Executors.newSingleThreadExecutor();

    public static String getAdInfoString(AdInfo adInfo) {
        return adInfo == null ? "" : adInfo.toString();
    }

    public static HashMap<String, String> getHashMapFromJsonString(String str) {
        HashMap<String, String> map = new HashMap<>();
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObject.getString(next));
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return map;
    }

    public static String getImpressionDataString(LevelPlayImpressionData levelPlayImpressionData) {
        return levelPlayImpressionData == null ? "" : levelPlayImpressionData.getAllData().toString();
    }

    public static Map<String, Boolean> jsonToBooleanMap(String str) {
        HashMap map = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, Boolean.valueOf(jSONObject.getBoolean(next)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return map;
    }

    public static String parseErrorToEvent(int i, String str) {
        HashMap map = new HashMap();
        try {
            map.put(AndroidBridgeConstants.ERROR_CODE, String.valueOf(i));
            map.put(AndroidBridgeConstants.ERROR_DESCRIPTION, str);
            return new JSONObject(map).toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String parseIronSourceError(IronSourceError ironSourceError) {
        return ironSourceError != null ? parseErrorToEvent(ironSourceError.getErrorCode(), ironSourceError.getErrorMessage()) : "";
    }

    public static void postBackgroundTask(Runnable runnable) {
        ExecutorService executorService = callbackExecutor;
        if (executorService.isShutdown()) {
            return;
        }
        executorService.submit(runnable);
    }
}
