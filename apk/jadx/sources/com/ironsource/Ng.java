package com.ironsource;

import android.text.TextUtils;
import com.ironsource.AbstractC3761p3;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.LoadWhileShowSupportState;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterSettingsInterface;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class Ng<Smash extends AbstractC3761p3<?>> {
    AbstractC3761p3<?> d;
    private final List<String> e;
    private final int f;
    Og h;
    ConcurrentHashMap<String, CopyOnWriteArrayList<Smash>> a = new ConcurrentHashMap<>();
    private String b = "";
    private String c = "";
    private final Timer g = new Timer();
    private final int i = 5;

    class a extends TimerTask {
        final /* synthetic */ String a;

        a(String str) {
            this.a = str;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                IronLog ironLog = IronLog.INTERNAL;
                ironLog.verbose("removing waterfall with id " + this.a + " from memory");
                Ng.this.a.remove(this.a);
                ironLog.verbose("waterfall size is currently " + Ng.this.a.size());
            } finally {
                cancel();
            }
        }
    }

    public Ng(List<String> list, int i, Og og) {
        this.e = list;
        this.f = i;
        this.h = og;
    }

    private void a() {
        for (Smash smash : b()) {
            if (!smash.equals(this.d)) {
                smash.M();
            }
        }
    }

    private synchronized boolean e() {
        AbstractC3761p3<?> abstractC3761p3;
        abstractC3761p3 = this.d;
        return abstractC3761p3 != null && abstractC3761p3.C() && this.d.h().equals(this.c);
    }

    public void a(M0.a aVar, CopyOnWriteArrayList<Smash> copyOnWriteArrayList, String str) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose("updating new waterfall with id " + str);
        a();
        if (aVar == M0.a.AUTOMATIC_LOAD_WHILE_SHOW || aVar == M0.a.MANUAL_WITH_LOAD_ON_SHOW) {
            this.a.put(str, copyOnWriteArrayList);
            if (!TextUtils.isEmpty(this.c)) {
                if (e()) {
                    ironLog.verbose("ad from previous waterfall " + this.c + " is still showing - the current waterfall " + this.b + " will be deleted instead");
                    String str2 = this.b;
                    this.b = this.c;
                    this.c = str2;
                }
                this.g.schedule(new a(this.c), this.f);
            }
        } else {
            this.a.clear();
            this.a.put(str, copyOnWriteArrayList);
        }
        this.c = this.b;
        this.b = str;
        if (this.a.size() > 5) {
            this.h.a(this.a.size());
        }
    }

    public synchronized void a(AbstractC3761p3<?> abstractC3761p3) {
        IronLog.INTERNAL.verbose();
        AbstractC3761p3<?> abstractC3761p4 = this.d;
        if (abstractC3761p4 != null && !abstractC3761p4.equals(abstractC3761p3)) {
            this.d.M();
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0049 A[Catch: all -> 0x0063, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:29:0x0049, B:6:0x0008, B:8:0x000d, B:11:0x0012, B:13:0x0016, B:16:0x001d, B:18:0x0021, B:21:0x002e, B:23:0x0032, B:25:0x003a), top: B:35:0x0001 }] */
    public synchronized boolean a(M0.a aVar, String str, String str2, LoadWhileShowSupportState loadWhileShowSupportState, AdapterBaseInterface adapterBaseInterface, IronSource.a aVar2) {
        boolean z;
        AbstractC3761p3<?> abstractC3761p3;
        if (!a(adapterBaseInterface, aVar2, str)) {
            z = true;
            if ((aVar == M0.a.AUTOMATIC_LOAD_WHILE_SHOW || aVar == M0.a.MANUAL_WITH_LOAD_ON_SHOW) && (abstractC3761p3 = this.d) != null && abstractC3761p3.C() && ((loadWhileShowSupportState == LoadWhileShowSupportState.LOAD_WHILE_SHOW_BY_NETWORK && this.d.c().equals(str)) || ((loadWhileShowSupportState == LoadWhileShowSupportState.NONE || this.e.contains(str2)) && this.d.n().equals(str2)))) {
            }
            if (!z) {
                IronLog.INTERNAL.verbose(str + " will not be added to the auction request");
            }
        }
        z = false;
        if (!z) {
            IronLog.INTERNAL.verbose(str + " will not be added to the auction request");
        }
        return z;
    }

    public boolean a(AdapterBaseInterface adapterBaseInterface, IronSource.a aVar, String str) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose();
        if (ContextProvider.getInstance().getCurrentActiveActivity() != null || !(adapterBaseInterface instanceof AdapterSettingsInterface) || !((AdapterSettingsInterface) adapterBaseInterface).isUsingActivityBeforeImpression(If.a(aVar))) {
            return false;
        }
        ironLog.verbose(str + " - is using activity before impression and activity is null");
        return true;
    }

    public List<Smash> b() {
        CopyOnWriteArrayList<Smash> copyOnWriteArrayList = this.a.get(this.b);
        return copyOnWriteArrayList == null ? new CopyOnWriteArrayList() : copyOnWriteArrayList;
    }

    public synchronized void b(AbstractC3761p3<?> abstractC3761p3) {
        IronLog.INTERNAL.verbose();
        this.d = abstractC3761p3;
    }

    public String c() {
        return this.b;
    }

    public AbstractC3761p3<?> d() {
        return this.d;
    }
}
