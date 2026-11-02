package com.google.android.play.deku.config;

import android.os.Bundle;
import android.util.Log;
import com.google.android.play.deku.j$.util.DesugarCollections;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class DekuFeatureFlags {
    private static final String TAG = "DekuFeatureFlags";
    private static final AtomicReference featureFlags = new AtomicReference(Collections.EMPTY_MAP);

    private DekuFeatureFlags() {
    }

    public static boolean isFeatureEnabled(String str, boolean z) {
        String str2;
        Map map = (Map) featureFlags.get();
        if (str == null || map.isEmpty()) {
            if (Log.isLoggable(TAG, 3)) {
                str2 = "isFeatureEnabled: Cache empty or null key. Returning default=" + z;
                Log.d(TAG, str2);
            }
            return z;
        }
        Object obj = map.get(str);
        if (obj instanceof Boolean) {
            z = ((Boolean) obj).booleanValue();
            if (Log.isLoggable(TAG, 3)) {
                str2 = "isFeatureEnabled: Key=" + str + ", Value=" + z;
                Log.d(TAG, str2);
            }
        }
        return z;
        return z;
    }

    public static synchronized void setFeatureFlagsBundle(Bundle bundle) {
        if (bundle == null) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "setFeatureFlagsBundle: Bundle is null. Clearing feature flags cache.");
            }
            featureFlags.set(Collections.EMPTY_MAP);
            return;
        }
        try {
            HashMap map = new HashMap();
            if (bundle.keySet() != null) {
                for (String str : bundle.keySet()) {
                    Object obj = bundle.get(str);
                    if (obj != null) {
                        map.put(str, obj);
                    }
                }
            }
            featureFlags.set(DesugarCollections.unmodifiableMap(map));
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "setFeatureFlagsBundle: Cache successfully updated. Keys: " + String.valueOf(map.keySet()));
            }
        } catch (Throwable th) {
            Log.w(TAG, "setFeatureFlagsBundle: Failed to unparcel features bundle. Falling back to empty cache.", th);
            featureFlags.set(Collections.EMPTY_MAP);
        }
    }
}
