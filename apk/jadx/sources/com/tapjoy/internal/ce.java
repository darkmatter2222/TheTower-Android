package com.tapjoy.internal;

import android.app.Application;
import android.content.Context;
import android.os.Handler;

/* JADX INFO: loaded from: classes5.dex */
public final class ce {
    private static dc a = new dc();

    public static String a() {
        return "1.3.16-tapjoy";
    }

    public static void a(Context context) {
        dc dcVar = a;
        Context applicationContext = context.getApplicationContext();
        dq.a(applicationContext, "Application Context cannot be null");
        if (dcVar.a) {
            return;
        }
        dcVar.a = true;
        di diVarA = di.a();
        diVarA.b = new cj(new Handler(), applicationContext, new cg(), diVarA);
        de deVarA = de.a();
        if (applicationContext instanceof Application) {
            ((Application) applicationContext).registerActivityLifecycleCallbacks(deVarA);
        }
        Cdo.a(applicationContext);
        dg.a().a = applicationContext != null ? applicationContext.getApplicationContext() : null;
    }

    public static boolean b() {
        return a.a;
    }
}
