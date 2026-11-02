package kotlin;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.RemoteException;
import java.util.List;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class eh1 {
    public final Context a;
    public dh1 b;

    public eh1(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = context;
    }

    public final f23 a() {
        try {
            dh1 dh1Var = this.b;
            if (dh1Var == null || dh1Var.a != 2 || dh1Var.d == null || dh1Var.e == null || dh1Var == null) {
                return null;
            }
            return dh1Var.a();
        } catch (RemoteException unused) {
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00c4  */
    public final void a(rh1 listener) {
        ServiceInfo serviceInfo;
        Intrinsics.checkNotNullParameter(listener, "listener");
        Context context = this.a;
        if (context == null) {
            throw new IllegalArgumentException("Please provide a valid Context.");
        }
        dh1 dh1Var = new dh1(context);
        int i = dh1Var.a;
        if (i == 2 && dh1Var.d != null && dh1Var.e != null) {
            gh1.a("Service connection is valid. No need to re-initialize.");
            listener.a(0);
        } else if (i == 1) {
            gh1.b("Client is already in the process of connecting to the service.");
            listener.a(3);
        } else if (i == 3) {
            gh1.b("Client was already closed and can't be reused. Please create another instance.");
            listener.a(3);
        } else {
            gh1.a("Starting install referrer service setup.");
            Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
            intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
            List<ResolveInfo> listQueryIntentServices = dh1Var.b.getPackageManager().queryIntentServices(intent, 0);
            if (listQueryIntentServices == null || listQueryIntentServices.isEmpty() || (serviceInfo = listQueryIntentServices.get(0).serviceInfo) == null) {
                dh1Var.a = 0;
                gh1.a("Install Referrer service unavailable on device.");
                listener.a(2);
            } else {
                String str = serviceInfo.packageName;
                String str2 = serviceInfo.name;
                if (!"com.android.vending".equals(str) || str2 == null) {
                    gh1.b("Play Store missing or incompatible. Version 8.3.73 or later required.");
                    dh1Var.a = 0;
                    listener.a(2);
                } else {
                    try {
                        if (dh1Var.b.getPackageManager().getPackageInfo("com.android.vending", 128).versionCode >= 80837300) {
                            Intent intent2 = new Intent(intent);
                            ch1 ch1Var = new ch1(dh1Var, listener);
                            dh1Var.e = ch1Var;
                            try {
                                if (dh1Var.b.bindService(intent2, ch1Var, 1)) {
                                    gh1.a("Service was bonded successfully.");
                                } else {
                                    gh1.b("Connection to service is blocked.");
                                    dh1Var.a = 0;
                                    listener.a(1);
                                }
                            } catch (SecurityException unused) {
                                gh1.b("No permission to connect to service.");
                                dh1Var.a = 0;
                                listener.a(4);
                            }
                        } else {
                            gh1.b("Play Store missing or incompatible. Version 8.3.73 or later required.");
                            dh1Var.a = 0;
                            listener.a(2);
                        }
                    } catch (PackageManager.NameNotFoundException unused2) {
                    }
                }
            }
        }
        this.b = dh1Var;
    }
}
