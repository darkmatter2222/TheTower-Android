package com.tapjoy.internal;

import android.content.SharedPreferences;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

/* JADX INFO: loaded from: classes5.dex */
public final class i extends l<Double> {
    private final double c;

    public i(SharedPreferences sharedPreferences, String str) {
        super(sharedPreferences, str);
        this.c = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
    }

    public final double a() {
        String string = this.a.getString(this.b, null);
        if (string != null) {
            try {
                return Double.parseDouble(string);
            } catch (NumberFormatException unused) {
            }
        }
        return this.c;
    }

    public final SharedPreferences.Editor a(SharedPreferences.Editor editor) {
        return editor.remove(this.b);
    }

    public final SharedPreferences.Editor a(SharedPreferences.Editor editor, double d) {
        return editor.putString(this.b, Double.toString(d));
    }
}
