package com.tapjoy.internal;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes5.dex */
public final class g extends l<Boolean> {
    private final boolean c;

    public g(SharedPreferences sharedPreferences, String str) {
        super(sharedPreferences, str);
        this.c = false;
    }

    public final Boolean a() {
        return Boolean.valueOf(this.a.getBoolean(this.b, this.c));
    }

    public final void a(boolean z) {
        this.a.edit().putBoolean(this.b, z).apply();
    }
}
