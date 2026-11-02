package kotlin;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class w41 implements v41 {
    public static w41 b;
    public final x41 a;

    public w41(Context context) {
        this.a = x41.a(context);
    }

    public static final w41 a(Context context) {
        w41 w41Var;
        synchronized (w41.class) {
            if (b == null) {
                b = new w41(context);
            }
            w41Var = b;
        }
        return w41Var;
    }

    public final void a(boolean z) {
        synchronized (w41.class) {
            this.a.a(Boolean.valueOf(z), "paidv2_publisher_option");
            if (!z) {
                this.a.a("paidv2_creation_time");
                this.a.a("paidv2_id");
                this.a.a("vendor_scoped_gpid_v2_id");
                this.a.a("vendor_scoped_gpid_v2_creation_time");
            }
        }
    }

    public final boolean a() {
        boolean z;
        synchronized (w41.class) {
            z = this.a.b.getBoolean("paidv2_publisher_option", true);
        }
        return z;
    }

    public final boolean b() {
        boolean z;
        synchronized (w41.class) {
            z = this.a.b.getBoolean("paidv2_user_option", true);
        }
        return z;
    }
}
