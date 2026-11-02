package com.unity3d.player;

import android.app.Activity;
import android.content.pm.ApplicationInfo;

/* JADX INFO: loaded from: classes5.dex */
class DisplayCutoutSupport {
    private static final String CMD_ARG_FORCE_RENDER_OUTSIDE_SAFEAREA = "-force-render-outside-safearea=";
    private static final String RENDER_OUTSIDE_SAFEAREA = "unity.render-outside-safearea";
    private static int s_DisplayCutoutSupport = -1;

    DisplayCutoutSupport() {
    }

    static boolean getDisplayCutoutSupport(Activity activity) {
        ApplicationInfo applicationInfo;
        int i = s_DisplayCutoutSupport;
        if (i != -1) {
            return i == 1;
        }
        try {
            String stringExtra = activity.getIntent().getStringExtra("unity");
            if (stringExtra != null) {
                if (stringExtra.contains("-force-render-outside-safearea=true")) {
                    s_DisplayCutoutSupport = 1;
                } else if (stringExtra.contains("-force-render-outside-safearea=false")) {
                    s_DisplayCutoutSupport = 0;
                }
            }
            if (s_DisplayCutoutSupport == -1 && (applicationInfo = activity.getPackageManager().getApplicationInfo(activity.getPackageName(), 128)) != null) {
                s_DisplayCutoutSupport = applicationInfo.metaData.getBoolean(RENDER_OUTSIDE_SAFEAREA) ? 1 : 0;
            }
        } catch (Exception unused) {
            s_DisplayCutoutSupport = 0;
        }
        return s_DisplayCutoutSupport == 1;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x001b  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    public static void setLayoutCutoutMode(Activity activity) {
        ?? displayCutoutSupport;
        if (activity == null || activity.getWindow() == null || !PlatformSupport.PIE_SUPPORT) {
            return;
        }
        if (PlatformSupport.VANILLA_ICE_CREAM_SUPPORT) {
            displayCutoutSupport = 3;
        } else if (!PlatformSupport.RED_VELVET_CAKE_SUPPORT) {
            displayCutoutSupport = getDisplayCutoutSupport(activity);
        } else if (getDisplayCutoutSupport(activity)) {
            displayCutoutSupport = 3;
        } else {
            displayCutoutSupport = 0;
        }
        activity.getWindow().getAttributes().layoutInDisplayCutoutMode = displayCutoutSupport;
    }
}
