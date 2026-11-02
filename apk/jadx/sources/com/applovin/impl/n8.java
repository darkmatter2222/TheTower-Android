package com.applovin.impl;

import android.content.Intent;
import android.content.IntentFilter;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.SessionTracker;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
public class n8 {
    private static final Set f = new HashSet();
    private final boolean a;
    private final com.applovin.impl.sdk.l b;
    private Runnable c;
    private final Object d = new Object();
    private final Timer e;

    class a extends TimerTask {

        /* JADX INFO: renamed from: com.applovin.impl.n8$a$a, reason: collision with other inner class name */
        class C0021a implements AppLovinBroadcastManager.Receiver {
            C0021a() {
            }

            @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
            public void onReceive(Intent intent, Map map) {
                AppLovinBroadcastManager.unregisterReceiver(this);
                n8.this.c();
            }
        }

        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (!n8.this.b.o0().isApplicationPaused() || n8.this.a) {
                n8.this.c();
            } else {
                AppLovinBroadcastManager.registerReceiver(new C0021a(), new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
            }
        }
    }

    private n8(long j, boolean z, com.applovin.impl.sdk.l lVar, Runnable runnable) {
        Timer timer = new Timer();
        this.e = timer;
        if (j < 0) {
            throw new IllegalArgumentException("Cannot create wall clock timer. Invalid timer length: " + j);
        }
        if (lVar == null) {
            throw new IllegalArgumentException("Cannot create wall clock timer. Sdk is null");
        }
        if (runnable == null) {
            throw new IllegalArgumentException("Cannot create wall clock timer. Runnable is null.");
        }
        this.a = z;
        this.b = lVar;
        this.c = runnable;
        f.add(this);
        timer.schedule(b(), j);
    }

    public static n8 a(long j, boolean z, com.applovin.impl.sdk.l lVar, Runnable runnable) {
        return new n8(j, z, lVar, runnable);
    }

    private TimerTask b() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        Runnable runnable = this.c;
        if (runnable != null) {
            runnable.run();
            a();
        }
    }

    public void a() {
        synchronized (this.d) {
            this.e.cancel();
            this.c = null;
            f.remove(this);
        }
    }
}
