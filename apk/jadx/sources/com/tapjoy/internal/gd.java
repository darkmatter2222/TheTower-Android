package com.tapjoy.internal;

import android.content.Context;
import android.content.SharedPreferences;
import com.tapjoy.TapjoyConstants;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes5.dex */
public final class gd {
    private static final gd b;
    private static gd c;
    public final gb a = new gb();
    private Context d;

    static {
        gd gdVar = new gd();
        b = gdVar;
        c = gdVar;
    }

    gd() {
    }

    public static gd a() {
        return c;
    }

    public static gb b() {
        return c.a;
    }

    public final synchronized void a(Context context) {
        if (context != null) {
            if (this.d == null) {
                this.d = context;
                SharedPreferences sharedPreferencesC = c();
                String string = c().getString("configurations", null);
                if (string != null) {
                    try {
                        bh bhVarB = bh.b(string);
                        try {
                            Map<String, Object> mapD = bhVarB.d();
                            bhVarB.close();
                            this.a.a((Map) mapD);
                        } catch (Throwable th) {
                            bhVarB.close();
                            throw th;
                        }
                    } catch (Exception unused) {
                        sharedPreferencesC.edit().remove("configurations").apply();
                    }
                }
                Observer observer = new Observer() { // from class: com.tapjoy.internal.gd.1
                    @Override // java.util.Observer
                    public final void update(Observable observable, Object obj) {
                        Object objCast;
                        gi.a(gd.this.a.a("usage_tracking_enabled", false));
                        Iterator<gm.a> it = gd.this.a.b.iterator();
                        while (it.hasNext()) {
                            Object objA = it.next().a("usage_tracking_exclude");
                            if (objA != null && List.class.isInstance(objA)) {
                                objCast = List.class.cast(objA);
                                gi.a((Collection<String>) objCast);
                            }
                        }
                        objCast = null;
                        gi.a((Collection<String>) objCast);
                    }
                };
                this.a.addObserver(observer);
                observer.update(this.a, null);
            }
        }
    }

    public final SharedPreferences c() {
        return this.d.getSharedPreferences(TapjoyConstants.TJC_PREFERENCE, 0);
    }
}
