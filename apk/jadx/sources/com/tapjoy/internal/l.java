package com.tapjoy.internal;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes5.dex */
public abstract class l<T> {
    protected SharedPreferences a;
    protected String b;

    public l(SharedPreferences sharedPreferences, String str) {
        this.a = sharedPreferences;
        this.b = str;
    }

    public final void c() {
        this.a.edit().remove(this.b).apply();
    }
}
