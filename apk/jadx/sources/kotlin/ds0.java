package kotlin;

import android.content.Context;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public final class ds0 implements ru1 {
    public static volatile ds0 d;
    public volatile Boolean a;
    public volatile Boolean b;
    public final Context c;

    public ds0(Context context) {
        this.c = context;
        a();
    }

    public static ds0 a(Context context) {
        if (d == null) {
            synchronized (ds0.class) {
                if (d == null) {
                    d = new ds0(context);
                }
            }
        }
        return d;
    }

    public final boolean a() {
        if (this.a != null) {
            return this.a.booleanValue();
        }
        synchronized (this) {
            if (this.a != null) {
                return this.a.booleanValue();
            }
            boolean z = this.c != null && Build.MANUFACTURER.equalsIgnoreCase("Amazon") && Build.MODEL.toLowerCase().startsWith("aft") && Build.VERSION.SDK_INT <= 30;
            this.a = Boolean.valueOf(z);
            return z;
        }
    }
}
