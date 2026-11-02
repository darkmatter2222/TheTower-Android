package com.facebook.ads.internal.api;

import android.content.Context;
import com.facebook.ads.BuildConfig;

/* JADX INFO: loaded from: classes2.dex */
public class BuildConfigApi {
    static final String UNITY_SHARED_PREFERENCES_SUFIX = ".v2.playerprefs";
    static final String UNITY_TAG = "an_isUnitySDK";
    static final String UNITY_VERSION_SUFIX = "-unity";
    private static volatile String sVersionOverride;

    public static String getVersionName(Context context) {
        String str = sVersionOverride;
        if (str == null || str.isEmpty()) {
            return isUnity(context) ? BuildConfig.VERSION_NAME + UNITY_VERSION_SUFIX : BuildConfig.VERSION_NAME;
        }
        return isUnity(context) ? str + UNITY_VERSION_SUFIX : str;
    }

    public static String getVersionOverride() {
        return sVersionOverride;
    }

    public static boolean isDebug() {
        return BuildConfig.DEBUG;
    }

    private static boolean isUnity(Context context) {
        return context.getSharedPreferences(new StringBuilder().append(context.getPackageName()).append(UNITY_SHARED_PREFERENCES_SUFIX).toString(), 0).contains(UNITY_TAG) || context.getSharedPreferences(context.getPackageName(), 0).contains(UNITY_TAG);
    }

    public static void setVersionOverride(String str) {
        sVersionOverride = str;
    }
}
