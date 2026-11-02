package com.applovin.impl.sdk;

import android.content.Intent;
import android.text.TextUtils;
import com.applovin.impl.c5;
import com.applovin.impl.f0;
import com.applovin.impl.i6;
import com.applovin.impl.j1;
import com.applovin.impl.n5;
import com.applovin.impl.r7;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.t1;
import com.applovin.impl.u7;
import com.applovin.impl.x6;
import com.applovin.impl.z4;
import com.applovin.sdk.AppLovinEventParameters;
import com.applovin.sdk.AppLovinEventService;
import com.applovin.sdk.AppLovinEventTypes;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinUserData;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Deque;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class EventServiceImpl implements AppLovinEventService {
    public static final List<String> ALLOW_PRE_INIT_EVENT_TYPES = Arrays.asList("landing", "paused", "resumed", "cf_start", "tos_ok", "gdpr_ok");
    private final l a;
    private final AtomicBoolean b = new AtomicBoolean();
    private final Deque c = new ArrayDeque();
    private final Object d = new Object();
    private volatile boolean e;

    public EventServiceImpl(l lVar) {
        this.a = lVar;
    }

    private Map a() {
        AppLovinUserData appLovinUserDataX0;
        if (((Boolean) this.a.a(c5.U3)).booleanValue() && (appLovinUserDataX0 = this.a.x0()) != null) {
            return r7.a(appLovinUserDataX0);
        }
        return null;
    }

    private Map a(t1 t1Var, boolean z) {
        HashMap map = new HashMap();
        if (z) {
            map.put("AppLovin-Event", t1Var.c());
            return map;
        }
        map.put("AppLovin-Event", "postinstall");
        map.put("AppLovin-Sub-Event", t1Var.c());
        return map;
    }

    private Map a(t1 t1Var, boolean z, boolean z2) {
        Map mapA = this.a.B().a((Map) null, z, false);
        mapA.put("event_id", t1Var.b());
        mapA.put("ts", Long.toString(t1Var.a()));
        if (z2) {
            mapA.put("event", t1Var.c());
        } else {
            mapA.put("event", "postinstall");
            mapA.put("sub_event", t1Var.c());
        }
        return u7.a(mapA);
    }

    private Map a(String str, Map map, Map map2, Map map3) {
        HashMap map4 = new HashMap();
        t1 t1Var = new t1(str, map);
        map4.put("id", t1Var.b());
        map4.put("name", t1Var.c());
        map4.put("data", t1Var.d());
        map4.put("timestamp", j1.a(t1Var.a()));
        Map mapH = this.a.B().H();
        map4.put("app_info", mapH);
        map4.put("device_info", this.a.B().p());
        CollectionUtils.putObjectToStringIfValid("dedupe_id", map2.get("dedupe_id"), map4);
        if (map3 != null) {
            map4.put("user_data", map3);
        }
        HashMap map5 = new HashMap();
        map5.put("connectEventKey", this.a.r());
        CollectionUtils.putStringIfValid("eventId", this.a.F(), map5);
        map5.put("version", AppLovinSdk.VERSION);
        map5.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.a.k0());
        map5.put("platform", this.a.B().A());
        if (((Boolean) this.a.a(c5.T3)).booleanValue()) {
            CollectionUtils.putStringIfValid("art", this.a.s(), map5);
        }
        HashMap map6 = new HashMap();
        map6.put("firstVisitTs", mapH.get("ia_v2"));
        map6.put("lastVisitTs", mapH.get("last_launch_ms"));
        map6.put("visitCount", mapH.get("app_launch_count"));
        map6.put("currentVisitStartTs", mapH.get("alts_ms"));
        map5.put("visitInfo", map6);
        map4.put("axon", map5);
        return map4;
    }

    private void a(String str) {
        p.h("AppLovinEventService", str);
        if (u7.c(this.a)) {
            throw new IllegalArgumentException(str);
        }
    }

    private void a(final String str, final Map map) {
        final boolean zContains = ALLOW_PRE_INIT_EVENT_TYPES.contains(str);
        this.a.s0().a((n5) new x6(this.a, zContains, "submitTrackEventPostback", new Runnable() { // from class: com.applovin.impl.sdk.EventServiceImpl$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(str, map, zContains);
            }
        }), i6.b.OTHER);
    }

    private void a(String str, Map map, Map map2) {
        EventServiceImpl eventServiceImpl;
        String str2;
        Map map3;
        Map map4;
        Map mapA = a();
        if (map.containsKey(FirebaseAnalytics.Param.ITEMS)) {
            Object obj = map.get(FirebaseAnalytics.Param.ITEMS);
            if (!(obj instanceof List)) {
                a(str, map, map2, mapA, "Invalid 'items' value: expected a list.");
                a("Invalid 'items' value: expected a list.");
                return;
            }
            EventServiceImpl eventServiceImpl2 = this;
            String str3 = str;
            Map map5 = map;
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                if (!(it.next() instanceof Map)) {
                    a(str3, map5, map2, mapA, "Invalid element in 'items': expected a map.");
                    a("Invalid element in 'items': expected a map.");
                    return;
                } else {
                    map5 = map5;
                    str3 = str3;
                    eventServiceImpl2 = eventServiceImpl2;
                }
            }
            eventServiceImpl = eventServiceImpl2;
            str2 = str3;
            map3 = map5;
            map4 = map2;
            mapA = mapA;
        } else {
            eventServiceImpl = this;
            str2 = str;
            map3 = map;
            map4 = map2;
        }
        eventServiceImpl.a(str2, map3, map4, mapA, "");
        final Map map6 = mapA;
        final Map map7 = map4;
        final Map map8 = map3;
        final String str4 = str2;
        eventServiceImpl.a.s0().a((n5) new x6(eventServiceImpl.a, false, "track_event:" + str2, new Runnable() { // from class: com.applovin.impl.sdk.EventServiceImpl$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b(str4, map8, map7, map6);
            }
        }), i6.b.OTHER);
    }

    private void a(String str, Map map, Map map2, Map map3, String str2) {
        f0 f0Var = new f0(str, map, map2, map3, str2);
        synchronized (this.d) {
            if (this.c.size() == ((Integer) this.a.a(c5.C0)).intValue()) {
                this.c.pollLast();
            }
            this.c.addFirst(f0Var);
        }
        this.e = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, Map map, boolean z) {
        t1 t1Var = new t1(str, map);
        boolean zContains = this.a.c(c5.A0).contains(t1Var.c());
        Map mapA = a(t1Var, false, zContains);
        HashMap map2 = new HashMap(t1Var.d());
        if (((Boolean) this.a.a(c5.R5)).booleanValue() || ((Boolean) this.a.a(c5.M5)).booleanValue()) {
            map2.putAll(mapA);
            mapA = null;
        }
        Map mapA2 = a();
        if (mapA2 != null) {
            map2.put("user_data", mapA2);
        }
        this.a.h0().e(com.applovin.impl.sdk.network.d.b().d(e()).a(d()).a(a(t1Var, zContains)).b(mapA).c(map2).c(((Boolean) this.a.a(c5.c6)).booleanValue()).a(((Boolean) this.a.a(c5.x5)).booleanValue()).d(z).a(z4.a.a(((Integer) this.a.a(c5.H5)).intValue())).a());
    }

    private String b() {
        return ((String) this.a.a(c5.t0)) + "v1/app";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str, Map map, Map map2, Map map3) {
        Map map4 = CollectionUtils.map("AppLovin-Event", str);
        map4.put("AppLovin-SDK-Name", "AppLovin-MAX");
        com.applovin.impl.sdk.network.d.b bVarD = com.applovin.impl.sdk.network.d.b().d(c()).a(b()).a(map4).c(a(str, map, map2, map3)).a(((Boolean) this.a.a(c5.x5)).booleanValue()).a(z4.a.a(((Integer) this.a.a(c5.I5)).intValue())).d(false);
        if (this.a.u0().c()) {
            bVarD.b(CollectionUtils.map("axon_test_code", "1"));
        }
        this.a.h0().e(bVarD.a());
    }

    private String c() {
        return ((String) this.a.a(c5.s0)) + "v1/app";
    }

    private String d() {
        return ((String) this.a.a(c5.r0)) + "4.0/pix";
    }

    private String e() {
        return ((String) this.a.a(c5.q0)) + "4.0/pix";
    }

    public void clearTrackedAxonEvents() {
        synchronized (this.d) {
            this.c.clear();
        }
    }

    public List<f0> getTrackedAxonEvents() {
        ArrayList arrayList;
        synchronized (this.d) {
            arrayList = new ArrayList(this.c);
        }
        return arrayList;
    }

    public boolean isAxonEventTracked() {
        return this.e;
    }

    public void maybeTrackAppOpenEvent() {
        if (this.b.compareAndSet(false, true)) {
            this.a.G().trackEvent("landing");
        }
    }

    public String toString() {
        return "EventService{}";
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackCheckout(String str, Map<String, String> map) {
        Map<String, ?> map2 = CollectionUtils.map(map);
        map2.put("transaction_id", str);
        trackEvent(AppLovinEventTypes.USER_COMPLETED_CHECKOUT, map2);
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackEvent(String str) {
        trackEvent(str, new HashMap());
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackEvent(String str, Map<String, ?> map) {
        trackEvent(str, map, new HashMap());
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackEvent(String str, Map<String, ?> map, Map<String, Object> map2) {
        if (TextUtils.isEmpty(str)) {
            a("Unable to track empty event");
        } else if (this.a.c(c5.B0).contains(str)) {
            a(str, map, map2);
        } else {
            a(str, map);
        }
    }

    public void trackEventSynchronously(String str) {
        this.a.Q();
        if (p.a()) {
            this.a.Q().a("AppLovinEventService", "Tracking event: \"" + str + "\" synchronously");
        }
        t1 t1Var = new t1(str, new HashMap());
        boolean zContains = this.a.c(c5.A0).contains(t1Var.c());
        Map mapA = a(t1Var, true, zContains);
        HashMap map = new HashMap(t1Var.d());
        if (((Boolean) this.a.a(c5.R5)).booleanValue() || ((Boolean) this.a.a(c5.M5)).booleanValue()) {
            map.putAll(mapA);
            mapA = null;
        }
        Map mapA2 = a();
        if (mapA2 != null) {
            map.put("user_data", mapA2);
        }
        this.a.h0().e(com.applovin.impl.sdk.network.d.b().d(e()).a(d()).b(mapA).c(map).a(a(t1Var, zContains)).c(((Boolean) this.a.a(c5.c6)).booleanValue()).a(((Boolean) this.a.a(c5.x5)).booleanValue()).a());
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackInAppPurchase(Intent intent, Map<String, String> map) {
        Map<String, ?> map2 = CollectionUtils.map(map);
        try {
            map2.put(AppLovinEventParameters.IN_APP_PURCHASE_DATA, intent.getStringExtra("INAPP_PURCHASE_DATA"));
            map2.put(AppLovinEventParameters.IN_APP_DATA_SIGNATURE, intent.getStringExtra("INAPP_DATA_SIGNATURE"));
        } catch (Throwable th) {
            p.c("AppLovinEventService", "Unable to track in app purchase - invalid purchase intent", th);
            this.a.E().a("AppLovinEventService", "trackIAP", th);
        }
        trackEvent("iap", map2);
    }
}
