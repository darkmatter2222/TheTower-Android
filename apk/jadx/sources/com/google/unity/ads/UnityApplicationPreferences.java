package com.google.unity.ads;

import android.app.Activity;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

/* JADX INFO: loaded from: classes4.dex */
public final class UnityApplicationPreferences {
    private final SharedPreferences defaultSharedPreferences;

    public UnityApplicationPreferences(Activity activity) {
        this.defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(activity);
    }

    public int getInt(String str) {
        return this.defaultSharedPreferences.getInt(str, 0);
    }

    public String getString(String str) {
        return this.defaultSharedPreferences.getString(str, null);
    }

    public void setInt(String str, int i) {
        SharedPreferences.Editor editorEdit = this.defaultSharedPreferences.edit();
        editorEdit.putInt(str, i);
        editorEdit.apply();
    }

    public void setString(String str, String str2) {
        SharedPreferences.Editor editorEdit = this.defaultSharedPreferences.edit();
        editorEdit.putString(str, str2);
        editorEdit.apply();
    }
}
