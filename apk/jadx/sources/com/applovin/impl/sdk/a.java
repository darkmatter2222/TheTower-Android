package com.applovin.impl.sdk;

import android.content.Intent;
import android.content.IntentFilter;
import com.applovin.impl.u1;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class a implements AppLovinBroadcastManager.Receiver {
    private static final long e = TimeUnit.SECONDS.toMillis(2);
    private final l a;
    private final p b;
    private final HashSet c = new HashSet();
    private final Object d = new Object();

    /* JADX INFO: renamed from: com.applovin.impl.sdk.a$a, reason: collision with other inner class name */
    public interface InterfaceC0025a {
        void onAdExpired(u1 u1Var);
    }

    public a(l lVar) {
        this.a = lVar;
        this.b = lVar.Q();
    }

    private void a() {
        synchronized (this.d) {
            Iterator it = this.c.iterator();
            while (it.hasNext()) {
                ((b) it.next()).a();
            }
        }
    }

    private b b(u1 u1Var) {
        synchronized (this.d) {
            try {
                if (u1Var == null) {
                    return null;
                }
                for (b bVar : this.c) {
                    if (u1Var == bVar.b()) {
                        return bVar;
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void b() {
        HashSet<b> hashSet = new HashSet();
        synchronized (this.d) {
            for (b bVar : this.c) {
                u1 u1VarB = bVar.b();
                if (u1VarB == null) {
                    hashSet.add(bVar);
                } else {
                    long timeToLiveMillis = u1VarB.getTimeToLiveMillis();
                    if (timeToLiveMillis <= 0) {
                        if (p.a()) {
                            this.b.a("AdExpirationManager", "Ad expired while app was paused. Preparing to notify listener for ad: " + u1VarB);
                        }
                        hashSet.add(bVar);
                    } else {
                        if (p.a()) {
                            this.b.a("AdExpirationManager", "Rescheduling expiration with remaining " + TimeUnit.MILLISECONDS.toSeconds(timeToLiveMillis) + " seconds for ad: " + u1VarB);
                        }
                        bVar.a(timeToLiveMillis);
                    }
                }
            }
        }
        for (b bVar2 : hashSet) {
            a(bVar2);
            bVar2.d();
        }
    }

    public void a(b bVar) {
        synchronized (this.d) {
            this.c.remove(bVar);
            if (this.c.isEmpty()) {
                AppLovinBroadcastManager.unregisterReceiver(this);
            }
        }
    }

    public void a(u1 u1Var) {
        synchronized (this.d) {
            b bVarB = b(u1Var);
            if (bVarB != null) {
                if (p.a()) {
                    this.b.a("AdExpirationManager", "Cancelling expiration timer for ad: " + u1Var);
                }
                bVarB.a();
                a(bVarB);
            }
        }
    }

    public boolean a(u1 u1Var, InterfaceC0025a interfaceC0025a) {
        synchronized (this.d) {
            if (b(u1Var) != null) {
                if (p.a()) {
                    this.b.a("AdExpirationManager", "Ad expiration already scheduled for ad: " + u1Var);
                }
                return true;
            }
            if (u1Var.getTimeToLiveMillis() <= e) {
                if (p.a()) {
                    this.b.a("AdExpirationManager", "Ad has already expired: " + u1Var);
                }
                u1Var.setExpired();
                return false;
            }
            if (p.a()) {
                this.b.a("AdExpirationManager", "Scheduling ad expiration " + TimeUnit.MILLISECONDS.toSeconds(u1Var.getTimeToLiveMillis()) + " seconds from now for " + u1Var + "...");
            }
            if (this.c.isEmpty()) {
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
            }
            this.c.add(b.a(u1Var, interfaceC0025a, this.a));
            return true;
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        String action = intent.getAction();
        if (SessionTracker.ACTION_APPLICATION_PAUSED.equals(action)) {
            a();
        } else if (SessionTracker.ACTION_APPLICATION_RESUMED.equals(action)) {
            b();
        }
    }
}
