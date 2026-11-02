package com.tapjoy;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes4.dex */
public class TapjoyAppSettings {
    public static final String TAG = "TapjoyAppSettings";
    private static TapjoyAppSettings b;
    String a;
    private Context c;
    private SharedPreferences d;

    private TapjoyAppSettings(Context context) {
        this.c = context;
        SharedPreferences sharedPreferences = context.getSharedPreferences(TapjoyConstants.TJC_PREFERENCE, 0);
        this.d = sharedPreferences;
        String string = sharedPreferences.getString(TapjoyConstants.PREF_LOG_LEVEL, null);
        this.a = string;
        if (TextUtils.isEmpty(string)) {
            return;
        }
        TapjoyLog.d(TAG, "restoreLoggingLevel from sharedPref -- loggingLevel=" + this.a);
        TapjoyLog.a(this.a, true);
    }

    public static TapjoyAppSettings getInstance() {
        return b;
    }

    public static void init(Context context) {
        TapjoyLog.d(TAG, "initializing app settings");
        b = new TapjoyAppSettings(context);
    }

    public void clearLoggingLevel() {
        SharedPreferences.Editor editorEdit = this.d.edit();
        editorEdit.remove(TapjoyConstants.PREF_LOG_LEVEL);
        editorEdit.apply();
        this.a = null;
        boolean zIsLoggingEnabled = TapjoyLog.isLoggingEnabled();
        TapjoyLog.i(TAG, "Tapjoy remote device debugging 'Disabled'. The SDK Debug-setting is: ".concat(zIsLoggingEnabled ? "'Enabled'" : "'Disabled'"));
        TapjoyLog.setDebugEnabled(zIsLoggingEnabled);
    }

    public String getConnectResult(String str, long j) {
        String string = this.d.getString(TapjoyConstants.PREF_LAST_CONNECT_RESULT, null);
        if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(str) && str.equals(this.d.getString(TapjoyConstants.PREF_LAST_CONNECT_PARAMS_HASH, null))) {
            long j2 = this.d.getLong(TapjoyConstants.PREF_LAST_CONNECT_RESULT_EXPIRES, -1L);
            if (j2 < 0 || j2 >= j) {
                return string;
            }
        }
        return null;
    }

    public void removeConnectResult() {
        if (this.d.getString(TapjoyConstants.PREF_LAST_CONNECT_PARAMS_HASH, null) != null) {
            SharedPreferences.Editor editorEdit = this.d.edit();
            editorEdit.remove(TapjoyConstants.PREF_LAST_CONNECT_RESULT);
            editorEdit.remove(TapjoyConstants.PREF_LAST_CONNECT_PARAMS_HASH);
            editorEdit.remove(TapjoyConstants.PREF_LAST_CONNECT_RESULT_EXPIRES);
            TapjoyLog.i(TAG, "Removed connect result");
            editorEdit.apply();
        }
    }

    public void saveConnectResultAndParams(String str, String str2, long j) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        SharedPreferences.Editor editorEdit = this.d.edit();
        editorEdit.putString(TapjoyConstants.PREF_LAST_CONNECT_RESULT, str);
        editorEdit.putString(TapjoyConstants.PREF_LAST_CONNECT_PARAMS_HASH, str2);
        if (j >= 0) {
            editorEdit.putLong(TapjoyConstants.PREF_LAST_CONNECT_RESULT_EXPIRES, j);
        } else {
            editorEdit.remove(TapjoyConstants.PREF_LAST_CONNECT_RESULT_EXPIRES);
        }
        TapjoyLog.i(TAG, "Stored connect result");
        editorEdit.apply();
    }

    public void saveLoggingLevel(String str) {
        if (TextUtils.isEmpty(str)) {
            TapjoyLog.d(TAG, "saveLoggingLevel -- server logging level is NULL or Empty string");
            return;
        }
        String str2 = TAG;
        TapjoyLog.d(str2, "saveLoggingLevel -- currentLevel=" + this.a + ";newLevel=" + str);
        if (TextUtils.isEmpty(this.a) || !this.a.equals(str)) {
            SharedPreferences.Editor editorEdit = this.d.edit();
            editorEdit.putString(TapjoyConstants.PREF_LOG_LEVEL, str);
            editorEdit.apply();
            this.a = str;
            TapjoyLog.a(str, true);
        }
        TapjoyLog.i(str2, "Tapjoy remote device debugging set to '" + str + "'. The SDK Debug-setting is: " + (TapjoyLog.isLoggingEnabled() ? "'Enabled'" : "'Disabled'"));
    }
}
