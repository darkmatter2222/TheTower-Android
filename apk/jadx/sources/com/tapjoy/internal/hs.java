package com.tapjoy.internal;

import android.content.Context;
import android.content.SharedPreferences;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class hs {
    final n a;
    public final n b;
    private final SharedPreferences c;

    public hs(Context context) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("fiverocks", 0);
        this.c = sharedPreferences;
        this.a = new n(sharedPreferences, "noMoreToday.date");
        this.b = new n(sharedPreferences, "noMoreToday.actionIds");
        b();
    }

    static String a() {
        return new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date());
    }

    public final void b() {
        String strA = this.a.a();
        if (strA == null || a().equals(strA)) {
            return;
        }
        this.a.a(null);
        this.b.a(null);
    }
}
