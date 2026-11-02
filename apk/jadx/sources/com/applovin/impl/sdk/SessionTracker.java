package com.applovin.impl.sdk;

import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import com.applovin.impl.c5;
import com.applovin.impl.u7;
import com.ironsource.C3510b4;
import java.util.Date;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes2.dex */
public class SessionTracker {
    public static final String ACTION_APPLICATION_PAUSED = "com.applovin.application_paused";
    public static final String ACTION_APPLICATION_RESUMED = "com.applovin.application_resumed";
    final l a;
    private final String b = UUID.randomUUID().toString();
    private final AtomicBoolean c = new AtomicBoolean();
    private final AtomicBoolean d = new AtomicBoolean();
    private final AtomicInteger e = new AtomicInteger();
    private final AtomicLong f = new AtomicLong();
    private final AtomicLong g = new AtomicLong();
    private final AtomicLong h = new AtomicLong();
    private Date i;
    private Date j;

    class a extends com.applovin.impl.b {
        a() {
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            super.onActivityResumed(activity);
            SessionTracker.this.b();
        }
    }

    class b implements ComponentCallbacks2 {
        b() {
        }

        @Override // android.content.ComponentCallbacks
        public void onConfigurationChanged(Configuration configuration) {
        }

        @Override // android.content.ComponentCallbacks
        public void onLowMemory() {
        }

        @Override // android.content.ComponentCallbacks2
        public void onTrimMemory(int i) {
            SessionTracker.this.e.set(i);
            if (i == 20) {
                SessionTracker.this.a();
            }
        }
    }

    class c extends BroadcastReceiver {
        c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.intent.action.USER_PRESENT".equals(action)) {
                if (u7.h()) {
                    SessionTracker.this.b();
                }
            } else if ("android.intent.action.SCREEN_OFF".equals(action)) {
                SessionTracker.this.a();
            }
        }
    }

    static /* synthetic */ class d {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[e.values().length];
            a = iArr;
            try {
                iArr[e.STARTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[e.PAUSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[e.RESUMED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum e {
        STARTED(C3510b4.i.d0),
        PAUSED("paused"),
        RESUMED("resumed");

        private final String a;

        e(String str) {
            this.a = str;
        }

        public String b() {
            return this.a;
        }
    }

    SessionTracker(l lVar) {
        this.a = lVar;
        Application application = (Application) l.p();
        application.registerActivityLifecycleCallbacks(new a());
        application.registerComponentCallbacks(new b());
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        application.registerReceiver(new c(), intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.d.compareAndSet(false, true)) {
            c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.d.compareAndSet(true, false)) {
            d();
        }
    }

    private void c() {
        this.a.Q();
        if (p.a()) {
            this.a.Q().a("SessionTracker", "Application Paused");
        }
        this.f.set(System.currentTimeMillis());
        AppLovinBroadcastManager.sendBroadcastSync(new Intent(ACTION_APPLICATION_PAUSED), null);
        if (this.c.get()) {
            return;
        }
        boolean zBooleanValue = ((Boolean) this.a.a(c5.E3)).booleanValue();
        long millis = TimeUnit.MINUTES.toMillis(((Long) this.a.a(c5.G3)).longValue());
        if (this.i == null || System.currentTimeMillis() - this.i.getTime() >= millis) {
            this.a.G().trackEvent("paused");
            if (zBooleanValue) {
                this.i = new Date();
            }
        }
        if (zBooleanValue) {
            return;
        }
        this.i = new Date();
    }

    private void d() {
        this.a.Q();
        if (p.a()) {
            this.a.Q().a("SessionTracker", "Application Resumed");
        }
        this.g.set(System.currentTimeMillis());
        this.h.addAndGet(this.g.get() - this.f.get());
        boolean zBooleanValue = ((Boolean) this.a.a(c5.E3)).booleanValue();
        long jLongValue = ((Long) this.a.a(c5.F3)).longValue();
        AppLovinBroadcastManager.sendBroadcastSync(new Intent(ACTION_APPLICATION_RESUMED), null);
        if (this.c.getAndSet(false)) {
            return;
        }
        long millis = TimeUnit.MINUTES.toMillis(jLongValue);
        if (this.j == null || System.currentTimeMillis() - this.j.getTime() >= millis) {
            this.a.G().trackEvent("resumed");
            if (zBooleanValue) {
                this.j = new Date();
            }
        }
        if (zBooleanValue) {
            return;
        }
        this.j = new Date();
    }

    public long getAppEnteredBackgroundTimeMillis() {
        return this.f.get();
    }

    public long getAppEnteredForegroundTimeMillis() {
        return this.g.get();
    }

    public e getCurrentApplicationState() {
        if (this.d.get()) {
            return e.PAUSED;
        }
        return this.f.get() != 0 ? e.RESUMED : e.STARTED;
    }

    public long getCurrentApplicationStateDurationMillis() {
        long jO;
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i = d.a[getCurrentApplicationState().ordinal()];
        if (i == 1) {
            jO = l.o();
        } else if (i == 2) {
            jO = this.f.get();
        } else {
            if (i != 3) {
                return -1L;
            }
            jO = this.g.get();
        }
        return jCurrentTimeMillis - jO;
    }

    public int getLastTrimMemoryLevel() {
        return this.e.get();
    }

    public String getSessionId() {
        return this.b;
    }

    public long getTotalBackgroundDurationMillis() {
        return getCurrentApplicationState() == e.PAUSED ? this.h.get() + getCurrentApplicationStateDurationMillis() : this.h.get();
    }

    public boolean isApplicationPaused() {
        return this.d.get();
    }

    public void pauseForClick() {
        this.c.set(true);
    }

    public void resumeForClick() {
        this.c.set(false);
    }
}
