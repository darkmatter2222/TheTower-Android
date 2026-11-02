package kotlin;

import android.os.Build;
import com.google.firebase.firestore.BuildConfig;

/* JADX INFO: loaded from: classes.dex */
public abstract class jn0 {
    public static boolean a() {
        if (Build.VERSION.SDK_INT < 31) {
            return Build.DEVICE.startsWith("generic");
        }
        String str = Build.FINGERPRINT;
        return str.contains("generic") || str.contains(BuildConfig.TARGET_BACKEND) || Build.HARDWARE.contains("ranchu");
    }
}
