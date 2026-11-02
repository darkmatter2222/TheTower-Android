package com.google.android.gms.internal.consent_sdk;

import android.os.Build;
import com.google.firebase.firestore.BuildConfig;

/* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@4.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdb {
    public static boolean zza(boolean z) {
        if (Build.VERSION.SDK_INT >= 31) {
            return Build.FINGERPRINT.contains("generic") || Build.FINGERPRINT.contains(BuildConfig.TARGET_BACKEND) || Build.HARDWARE.contains("ranchu");
        }
        return Build.DEVICE.startsWith("generic");
    }
}
