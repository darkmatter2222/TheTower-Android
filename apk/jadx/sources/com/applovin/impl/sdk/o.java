package com.applovin.impl.sdk;

import android.app.ActivityManager;
import com.applovin.impl.a4;
import com.applovin.impl.c3;
import com.applovin.impl.c5;
import com.applovin.impl.h2;
import com.applovin.impl.j2;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.u7;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class o {
    private static final a l = new a();
    private final l a;
    private long c;
    private Long d;
    private long e;
    private long h;
    private Object i;
    private final AtomicBoolean b = new AtomicBoolean();
    private final Object f = new Object();
    private final AtomicBoolean g = new AtomicBoolean();
    private final Map j = new HashMap();
    private final Object k = new Object();

    public static class a {
        private long a = -1;
        private int b;

        static /* synthetic */ int a(a aVar) {
            int i = aVar.b;
            aVar.b = i + 1;
            return i;
        }

        public int a() {
            return this.b;
        }

        protected boolean a(Object obj) {
            return obj instanceof a;
        }

        public long b() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aVar.a((Object) this) && b() == aVar.b() && a() == aVar.a();
        }

        public int hashCode() {
            long jB = b();
            return ((((int) (jB ^ (jB >>> 32))) + 59) * 59) + a();
        }

        public String toString() {
            return "FullScreenAdTracker.LostShowAttemptsData(lastAttemptedTimeMillis=" + b() + ", attemptCount=" + a() + ")";
        }
    }

    o(l lVar) {
        this.a = lVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Long l2) {
        if (e() && System.currentTimeMillis() - this.h >= l2.longValue()) {
            this.a.Q();
            if (p.a()) {
                this.a.Q().a("FullScreenAdTracker", "Resetting \"pending display\" state...");
            }
            this.g.set(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Long l2, Object obj) {
        if (this.b.get() && System.currentTimeMillis() - this.c >= l2.longValue()) {
            this.a.Q();
            if (p.a()) {
                this.a.Q().a("FullScreenAdTracker", "Resetting \"display\" state...");
            }
            HashMap map = new HashMap();
            if (obj instanceof com.applovin.impl.sdk.ad.b) {
                map.putAll(j2.a((AppLovinAdImpl) obj));
            } else if (obj instanceof c3) {
                map.putAll(j2.a((c3) obj));
            }
            this.a.E().a(h2.p1, "fullscreenAdDisplayStateTimeout", map);
            b(obj);
        }
    }

    public Object a() {
        return this.i;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0067  */
    public void a(final Object obj) {
        if (!a4.a(obj) && this.b.compareAndSet(false, true)) {
            this.i = obj;
            this.c = System.currentTimeMillis();
            this.a.Q();
            if (p.a()) {
                this.a.Q().a("FullScreenAdTracker", "Setting fullscreen ad displayed: " + this.c);
            }
            ActivityManager.MemoryInfo memoryInfoA = u7.a((ActivityManager) l.p().getSystemService("activity"));
            if (memoryInfoA != null) {
                long j = this.e;
                if (j > 0) {
                    this.d = Long.valueOf(j - memoryInfoA.availMem);
                    this.e = 0L;
                } else {
                    this.d = null;
                }
            } else {
                this.d = null;
            }
            AppLovinBroadcastManager.sendBroadcastWithAdObject("com.applovin.fullscreen_ad_displayed", obj);
            final Long l2 = (Long) this.a.a(c5.R1);
            if (l2.longValue() >= 0) {
                AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.sdk.o$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(l2, obj);
                    }
                }, l2.longValue());
            }
        }
    }

    public void a(String str) {
        synchronized (this.k) {
            this.j.remove(str);
        }
    }

    public void a(boolean z) {
        synchronized (this.f) {
            this.g.set(z);
            if (z) {
                this.h = System.currentTimeMillis();
                this.a.Q();
                if (p.a()) {
                    this.a.Q().a("FullScreenAdTracker", "Setting fullscreen ad pending display: " + this.h);
                }
                ActivityManager.MemoryInfo memoryInfoA = u7.a((ActivityManager) l.p().getSystemService("activity"));
                if (memoryInfoA != null) {
                    this.e = memoryInfoA.availMem;
                }
                final Long l2 = (Long) this.a.a(c5.Q1);
                if (l2.longValue() >= 0) {
                    AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.sdk.o$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.a(l2);
                        }
                    }, l2.longValue());
                }
            } else {
                this.h = 0L;
                this.a.Q();
                if (p.a()) {
                    this.a.Q().a("FullScreenAdTracker", "Setting fullscreen ad not pending display: " + System.currentTimeMillis());
                }
            }
        }
    }

    public long b() {
        return this.c;
    }

    public a b(String str) {
        a aVar;
        synchronized (this.k) {
            aVar = (a) this.j.get(str);
            if (aVar == null) {
                aVar = l;
            }
        }
        return aVar;
    }

    public void b(Object obj) {
        if (!a4.a(obj) && this.b.compareAndSet(true, false)) {
            this.i = null;
            this.a.Q();
            if (p.a()) {
                this.a.Q().a("FullScreenAdTracker", "Setting fullscreen ad hidden: " + System.currentTimeMillis());
            }
            AppLovinBroadcastManager.sendBroadcastWithAdObject("com.applovin.fullscreen_ad_hidden", obj);
        }
    }

    public Long c() {
        return this.d;
    }

    public void c(String str) {
        synchronized (this.k) {
            a aVar = (a) this.j.get(str);
            if (aVar == null) {
                aVar = new a();
                this.j.put(str, aVar);
            }
            aVar.a = System.currentTimeMillis();
            a.a(aVar);
        }
    }

    public boolean d() {
        return this.b.get();
    }

    public boolean e() {
        return this.g.get();
    }
}
