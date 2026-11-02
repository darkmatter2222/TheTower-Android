package com.applovin.impl.sdk;

import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.applovin.impl.c5;
import com.applovin.impl.h2;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.u7;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.tu2$$ExternalSyntheticBackportWithForwarding0;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class i implements AppLovinBroadcastManager.Receiver {
    private final l a;
    private final AtomicReference b;
    private final Handler c;
    private final Handler d;
    private final AtomicLong e = new AtomicLong(0);
    private long f;
    private long g;
    private long h;

    private enum b {
        INELIGIBLE,
        IDLE,
        MONITORING
    }

    private class c implements Runnable {
        private c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            if (i.this.b.get() != b.MONITORING) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis() - i.this.e.get();
            if (jCurrentTimeMillis >= 0 && jCurrentTimeMillis <= i.this.f) {
                i.this.d.postDelayed(this, i.this.h);
                return;
            }
            i.this.b.set(b.INELIGIBLE);
            AppLovinBroadcastManager.unregisterReceiver(i.this);
            StackTraceElement[] stackTrace = Looper.getMainLooper().getThread().getStackTrace();
            if (stackTrace.length > 0) {
                StackTraceElement stackTraceElement = stackTrace[0];
                str = stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName();
            } else {
                str = "None";
            }
            long seconds = TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis() - l.o());
            HashMap map = new HashMap(3);
            map.put("top_main_method", str);
            map.put("source", i.this.a.C0() ? "non_first_session" : "first_session");
            JSONObject jSONObject = new JSONObject();
            JsonUtils.putString(jSONObject, "seconds_since_app_launch", String.valueOf(seconds));
            List listA = i.this.a.h().a();
            if (!CollectionUtils.isEmpty(listA)) {
                JsonUtils.putJsonArray(jSONObject, "ad_info", new JSONArray((Collection) listA));
            }
            map.put("details", jSONObject.toString());
            i.this.a.E().d(h2.T0, map);
            if (((Boolean) i.this.a.a(c5.s6)).booleanValue()) {
                i.this.c.post(i.this.new d(i.this.e.get()));
            }
        }
    }

    private class d implements Runnable {
        private final long a;

        d(long j) {
            this.a = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.a;
            HashMap map = new HashMap(2);
            map.put("duration_ms", String.valueOf(jCurrentTimeMillis));
            map.put("source", i.this.a.C0() ? "non_first_session" : "first_session");
            i.this.a.E().d(h2.U0, map);
        }
    }

    private class e implements Runnable {
        private e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (i.this.b.get() != b.MONITORING) {
                return;
            }
            i.this.e.set(System.currentTimeMillis());
            i.this.c.postDelayed(this, i.this.g);
        }
    }

    public i(l lVar) {
        this.a = lVar;
        this.b = new AtomicReference(!u7.c(lVar) ? b.IDLE : b.INELIGIBLE);
        this.c = new Handler(l.p().getMainLooper());
        HandlerThread handlerThread = new HandlerThread("AppLovinSdk:anr_detector");
        handlerThread.start();
        this.d = new Handler(handlerThread.getLooper());
    }

    private void b() {
        if (tu2$$ExternalSyntheticBackportWithForwarding0.m(this.b, b.MONITORING, b.IDLE)) {
            this.c.removeCallbacksAndMessages(null);
            this.d.removeCallbacksAndMessages(null);
        }
        this.a.h().b(this);
    }

    private void c() {
        if (this.a.o0().getCurrentApplicationState() == SessionTracker.e.PAUSED) {
            return;
        }
        if (tu2$$ExternalSyntheticBackportWithForwarding0.m(this.b, b.IDLE, b.MONITORING)) {
            this.c.post(new e());
            this.d.postDelayed(new c(), this.h / 2);
        }
        this.a.h().a(this);
    }

    private void d() {
        AppLovinBroadcastManager.unregisterReceiver(this);
        this.f = ((Long) this.a.a(c5.p6)).longValue();
        this.g = ((Long) this.a.a(c5.q6)).longValue();
        this.h = ((Long) this.a.a(c5.r6)).longValue();
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
    }

    public void a() {
        if (this.b.get() == b.INELIGIBLE) {
            return;
        }
        if (!((Boolean) this.a.a(c5.o6)).booleanValue()) {
            b();
        } else {
            d();
            c();
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        String action = intent.getAction();
        if (SessionTracker.ACTION_APPLICATION_PAUSED.equals(action)) {
            b();
        } else if (SessionTracker.ACTION_APPLICATION_RESUMED.equals(action)) {
            c();
        }
    }
}
