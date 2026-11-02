package com.google.android.play.deku;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import com.google.android.play.deku.j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class j implements ServiceConnection {
    final /* synthetic */ DekuLifecycleManager a;

    /* synthetic */ j(DekuLifecycleManager dekuLifecycleManager) {
        Objects.requireNonNull(dekuLifecycleManager);
        this.a = dekuLifecycleManager;
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        DekuLifecycleManager dekuLifecycleManager = this.a;
        synchronized (dekuLifecycleManager) {
            try {
                dekuLifecycleManager.unbind();
                if (dekuLifecycleManager.bindAttempts >= 5) {
                    Log.w("DekuLifecycleManager", "Bind attempts exceeded, not rebinding.");
                } else {
                    dekuLifecycleManager.bind();
                }
            } catch (Throwable th) {
                Log.w("DekuLifecycleManager", "onBindingDied failed.", th);
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onNullBinding(ComponentName componentName) {
        this.a.unbind();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        DekuLifecycleManager dekuLifecycleManager = this.a;
        synchronized (dekuLifecycleManager) {
            try {
                dekuLifecycleManager.isBound = true;
                dekuLifecycleManager.iDekuBrokerService = n.b(iBinder);
                if (dekuLifecycleManager.iDekuBrokerService == null) {
                    Log.w("DekuLifecycleManager", "Null service returned.");
                } else {
                    dekuLifecycleManager.iDekuBrokerService.c(dekuLifecycleManager.dekuControllerCallback, dekuLifecycleManager.application.getPackageName(), Bundle.EMPTY);
                }
            } catch (Throwable th) {
                Log.w("DekuLifecycleManager", "onServiceConnected failed.", th);
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.a.resetConnection();
    }
}
