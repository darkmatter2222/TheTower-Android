package com.tapjoy;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.webkit.WebView;
import com.tapjoy.internal.hg;
import com.tapjoy.internal.hj;

/* JADX INFO: loaded from: classes4.dex */
public class TapjoyLog {
    private static final String a = "TapjoyLog";
    private static int b = 6;
    private static int c = 4;
    private static int d = 2;
    private static boolean e = false;
    private static int f = 6;

    private static void a(int i, String str, String str2) {
        String str3 = a + ":" + str;
        if (f <= i) {
            if (str2.length() <= 4096) {
                Log.println(i, str3, str2);
                return;
            }
            int i2 = 0;
            while (i2 <= str2.length() / 4096) {
                int i3 = i2 * 4096;
                i2++;
                int length = i2 * 4096;
                if (length > str2.length()) {
                    length = str2.length();
                }
                Log.println(i, str3, str2.substring(i3, length));
            }
        }
    }

    static void a(String str, boolean z) {
        if (!z && TapjoyAppSettings.getInstance() != null && TapjoyAppSettings.getInstance().a != null) {
            d(a, "setLoggingLevel -- log setting already persisted");
            return;
        }
        if (str.equals(TapjoyConstants.LOG_LEVEL_INTERNAL)) {
            f = d;
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.tapjoy.TapjoyLog.1
                @Override // java.lang.Runnable
                public final void run() {
                    TapjoyLog.d(TapjoyLog.a, "Enabling WebView debugging");
                    WebView.setWebContentsDebuggingEnabled(true);
                }
            });
        } else if (str.equals(TapjoyConstants.LOG_LEVEL_DEBUG_ON)) {
            f = c;
        } else if (str.equals(TapjoyConstants.LOG_LEVEL_DEBUG_OFF)) {
            f = b;
        } else {
            d(a, "unrecognized loggingLevel: ".concat(String.valueOf(str)));
            f = b;
        }
        d(a, "logThreshold=" + f);
    }

    public static void d(String str, String str2) {
        a(3, str, str2);
    }

    public static void e(String str, TapjoyErrorMessage tapjoyErrorMessage) {
        if (tapjoyErrorMessage != null) {
            if (f == d || tapjoyErrorMessage.getType() != TapjoyErrorMessage.ErrorType.INTERNAL_ERROR) {
                a(6, str, tapjoyErrorMessage.toString());
            }
        }
    }

    public static void e(String str, String str2) {
        e(str, new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.INTERNAL_ERROR, str2));
    }

    public static void i(String str, String str2) {
        a(4, str, str2);
    }

    public static boolean isLoggingEnabled() {
        return e;
    }

    public static void setDebugEnabled(boolean z) {
        e = z;
        hj hjVarA = hj.a();
        if (hg.a != z) {
            hg.a = z;
            if (z) {
                hg.a("The debug mode has been enabled");
            } else {
                hg.a("The debug mode has been disabled");
            }
            if (z && hjVarA.j) {
                hjVarA.h.a();
            }
        }
        if (e) {
            a(TapjoyConstants.LOG_LEVEL_DEBUG_ON, false);
        } else {
            a(TapjoyConstants.LOG_LEVEL_DEBUG_OFF, false);
        }
    }

    public static void setInternalLogging(boolean z) {
        if (z) {
            a(TapjoyConstants.LOG_LEVEL_INTERNAL, true);
        }
    }

    public static void v(String str, String str2) {
        a(2, str, str2);
    }

    public static void w(String str, String str2) {
        a(5, str, str2);
    }
}
