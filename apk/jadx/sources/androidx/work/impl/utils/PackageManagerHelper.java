package androidx.work.impl.utils;

import android.content.ComponentName;
import android.content.Context;
import androidx.work.Logger;
import com.ironsource.C3635i2;

/* JADX INFO: loaded from: classes2.dex */
public class PackageManagerHelper {
    private static final String TAG = Logger.tagWithPrefix("PackageManagerHelper");

    private PackageManagerHelper() {
    }

    public static boolean isComponentExplicitlyEnabled(Context context, Class<?> cls) {
        return isComponentExplicitlyEnabled(context, cls.getName());
    }

    public static boolean isComponentExplicitlyEnabled(Context context, String str) {
        return context.getPackageManager().getComponentEnabledSetting(new ComponentName(context, str)) == 1;
    }

    public static void setComponentEnabled(Context context, Class<?> cls, boolean z) {
        try {
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, cls.getName()), z ? 1 : 2, 1);
            Logger.get().debug(TAG, String.format("%s %s", cls.getName(), z ? "enabled" : C3635i2.e), new Throwable[0]);
        } catch (Exception e) {
            Logger.get().debug(TAG, String.format("%s could not be %s", cls.getName(), z ? "enabled" : C3635i2.e), e);
        }
    }
}
