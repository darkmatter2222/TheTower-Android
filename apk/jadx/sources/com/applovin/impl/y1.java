package com.applovin.impl;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.provider.Settings;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.adview.AppLovinFullscreenImmersiveActivity;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import com.ironsource.adapters.facebook.FacebookConstants;
import com.tapjoy.TapjoyConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class y1 implements AppLovinBroadcastManager.Receiver, com.applovin.impl.adview.a.b {
    protected int A;
    protected int B;
    protected boolean C;
    private ContentObserver D;
    private Float E;
    protected AppLovinAdClickListener F;
    protected AppLovinAdDisplayListener G;
    protected AppLovinAdVideoPlaybackListener H;
    protected m7 I;
    protected m7 J;
    protected boolean K;
    private final j0 L;
    private boolean M;
    protected final com.applovin.impl.sdk.ad.b a;
    protected final com.applovin.impl.sdk.l b;
    protected final com.applovin.impl.sdk.p c;
    protected Activity d;
    private final int e;
    private final Handler f;
    private final com.applovin.impl.b g;
    private final com.applovin.impl.sdk.j.a h;
    private AppLovinAdView i;
    protected com.applovin.impl.adview.k j;
    protected final com.applovin.impl.adview.g k;
    protected final com.applovin.impl.adview.g l;
    protected final long m;
    private final AtomicBoolean n;
    private final AtomicBoolean o;
    private boolean p;
    private boolean q;
    protected long r;
    protected long s;
    private boolean t;
    protected boolean u;
    protected int v;
    protected boolean w;
    private int x;
    private final ArrayList y;
    protected int z;

    class a implements AppLovinAdDisplayListener {
        a() {
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adDisplayed(AppLovinAd appLovinAd) {
            com.applovin.impl.sdk.p pVar = y1.this.c;
            if (com.applovin.impl.sdk.p.a()) {
                y1.this.c.a("AppLovinFullscreenActivity", "Web content rendered");
            }
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adHidden(AppLovinAd appLovinAd) {
            com.applovin.impl.sdk.p pVar = y1.this.c;
            if (com.applovin.impl.sdk.p.a()) {
                y1.this.c.a("AppLovinFullscreenActivity", "Closing from WebView");
            }
            y1.this.a("web_view");
        }
    }

    class b implements com.applovin.impl.sdk.j.a {
        b() {
        }

        @Override // com.applovin.impl.sdk.j.a
        public void a(int i) {
            y1 y1Var = y1.this;
            if (y1Var.B != com.applovin.impl.sdk.j.h) {
                y1Var.C = true;
            }
            com.applovin.impl.adview.b bVarF = y1Var.i.getController().f();
            if (bVarF == null) {
                com.applovin.impl.sdk.p pVar = y1.this.c;
                if (com.applovin.impl.sdk.p.a()) {
                    y1.this.c.k("AppLovinFullscreenActivity", "Unable to handle ringer mode change: no valid web view.");
                }
            } else if (com.applovin.impl.sdk.j.a(i) && !com.applovin.impl.sdk.j.a(y1.this.B)) {
                bVarF.a("javascript:al_muteSwitchOn();");
            } else if (i == 2) {
                bVarF.a("javascript:al_muteSwitchOff();");
            }
            y1.this.B = i;
        }
    }

    class c extends com.applovin.impl.b {
        final /* synthetic */ com.applovin.impl.sdk.l a;

        c(com.applovin.impl.sdk.l lVar) {
            this.a = lVar;
        }

        private boolean a(Activity activity) {
            return activity.getClass().getName().equals(u7.a(activity.getApplicationContext(), "AppLovinFullscreenActivity", this.a));
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (!y1.this.z() && a(activity)) {
                y1.this.d();
            }
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (y1.this.z() && a(activity)) {
                y1.this.d();
            }
        }
    }

    class d extends ContentObserver {
        final /* synthetic */ com.applovin.impl.sdk.l a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(Handler handler, com.applovin.impl.sdk.l lVar) {
            super(handler);
            this.a = lVar;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            Float fB = this.a.q().b();
            if (fB == null || y1.this.E == null || fB.equals(y1.this.E)) {
                return;
            }
            String str = fB.floatValue() > y1.this.E.floatValue() ? "volume_up" : "volume_down";
            JSONObject jSONObject = new JSONObject();
            JsonUtils.putDouble(jSONObject, TapjoyConstants.TJC_VOLUME, fB.floatValue());
            y1.this.e("javascript:al_onVolumeChangedEvent('" + str + "'," + jSONObject + ");");
            y1.this.E = fB;
        }
    }

    class e extends com.applovin.impl.b {
        final /* synthetic */ x4 a;

        e(x4 x4Var) {
            this.a = x4Var;
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            if (activity instanceof AppLovinFullscreenActivity) {
                this.a.b(null);
                y1.this.b.e().b(this);
            }
        }
    }

    class f implements j0.c {
        f() {
        }

        @Override // com.applovin.impl.j0.c
        public void a(int i, int i2) {
            Map mapA = j2.a((AppLovinAdImpl) y1.this.a);
            mapA.putAll(j2.a(y1.this.a));
            mapA.put("details", "detection_count=" + i + ",total_checks=" + i2);
            y1.this.b.E().d(h2.Z0, mapA);
        }

        @Override // com.applovin.impl.j0.c
        public void a(int i, int i2, int i3) {
            Map mapA = j2.a((AppLovinAdImpl) y1.this.a);
            mapA.putAll(j2.a(y1.this.a));
            mapA.put("details", "detections_to_report=" + i + ",detection_count=" + i2 + ",total_checks=" + i3);
            y1.this.b.E().d(h2.a1, mapA);
            if (((Boolean) y1.this.b.a(c5.E6)).booleanValue()) {
                y1.this.x();
            }
            if (((Boolean) y1.this.b.a(c5.S0)).booleanValue()) {
                y1.this.b.I().c(y1.this.a, com.applovin.impl.sdk.l.p());
            }
            if (((Boolean) y1.this.b.a(c5.A6)).booleanValue()) {
                y1.this.a("black_view_auto_dismiss");
                return;
            }
            y1 y1Var = y1.this;
            y1Var.M = ((Boolean) y1Var.b.a(c5.B6)).booleanValue();
            if (((Boolean) y1.this.b.a(c5.C6)).booleanValue()) {
                y1.this.A();
            }
        }
    }

    public interface g {
        void a(y1 y1Var);

        void a(String str, Throwable th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    class h implements AppLovinAdClickListener, View.OnClickListener {
        private h() {
        }

        /* synthetic */ h(y1 y1Var, a aVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            y1.this.r = SystemClock.elapsedRealtime();
        }

        @Override // com.applovin.sdk.AppLovinAdClickListener
        public void adClicked(AppLovinAd appLovinAd) {
            com.applovin.impl.sdk.p pVar = y1.this.c;
            if (com.applovin.impl.sdk.p.a()) {
                y1.this.c.a("AppLovinFullscreenActivity", "Clicking through graphic");
            }
            x2.a(y1.this.F, appLovinAd);
            y1.this.A++;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y1 y1Var = y1.this;
            if (view != y1Var.k || !((Boolean) y1Var.b.a(c5.e2)).booleanValue()) {
                com.applovin.impl.sdk.p pVar = y1.this.c;
                if (com.applovin.impl.sdk.p.a()) {
                    y1.this.c.b("AppLovinFullscreenActivity", "Unhandled click on widget: " + view);
                    return;
                }
                return;
            }
            y1.f(y1.this);
            if (y1.this.a.O0()) {
                y1.this.e("javascript:al_onCloseButtonTapped(" + y1.this.x + FacebookConstants.PLACEMENT_IDS_SEPARATOR + y1.this.z + FacebookConstants.PLACEMENT_IDS_SEPARATOR + y1.this.A + ");");
            }
            List listH = y1.this.a.H();
            com.applovin.impl.sdk.p pVar2 = y1.this.c;
            if (com.applovin.impl.sdk.p.a()) {
                y1.this.c.a("AppLovinFullscreenActivity", "Handling close button tap " + y1.this.x + " with multi close delay: " + listH);
            }
            if (listH == null || listH.size() <= y1.this.x) {
                y1.this.a("native_close_button");
                return;
            }
            y1.this.y.add(Long.valueOf(SystemClock.elapsedRealtime() - y1.this.r));
            List listF = y1.this.a.F();
            if (listF != null && listF.size() > y1.this.x) {
                y1 y1Var2 = y1.this;
                y1Var2.k.a((com.applovin.impl.adview.e.a) listF.get(y1Var2.x));
            }
            com.applovin.impl.sdk.p pVar3 = y1.this.c;
            if (com.applovin.impl.sdk.p.a()) {
                y1.this.c.a("AppLovinFullscreenActivity", "Scheduling next close button with delay: " + listH.get(y1.this.x));
            }
            y1.this.k.setVisibility(8);
            y1 y1Var3 = y1.this;
            y1Var3.a(y1Var3.k, ((Integer) listH.get(y1Var3.x)).intValue(), new Runnable() { // from class: com.applovin.impl.y1$h$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a();
                }
            });
        }
    }

    y1(com.applovin.impl.sdk.ad.b bVar, Activity activity, Map map, com.applovin.impl.sdk.l lVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        Handler handler = new Handler(Looper.getMainLooper());
        this.f = handler;
        this.m = SystemClock.elapsedRealtime();
        this.n = new AtomicBoolean();
        this.o = new AtomicBoolean();
        this.r = -1L;
        this.x = 0;
        this.y = new ArrayList();
        this.z = 0;
        this.A = 0;
        this.B = com.applovin.impl.sdk.j.h;
        this.M = false;
        this.a = bVar;
        this.b = lVar;
        this.c = lVar.Q();
        this.d = activity;
        this.e = bVar.T();
        this.F = appLovinAdClickListener;
        this.G = appLovinAdDisplayListener;
        this.H = appLovinAdVideoPlaybackListener;
        this.L = new j0(lVar);
        h hVar = new h(this, null);
        if (((Boolean) lVar.a(c5.u2)).booleanValue()) {
            AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.render_process_gone"));
        }
        if (((Boolean) lVar.a(c5.A2)).booleanValue()) {
            AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.al_onPoststitialShow_evaluation_error"));
        }
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.custom_tabs_shown"));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.custom_tabs_hidden"));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.custom_tabs_failure"));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.custom_intent_launch_success"));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.custom_intent_launch_failure"));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.external_redirect_success"));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.external_redirect_failure"));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.preload_success"));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.preload_failure"));
        w1 w1Var = new w1(lVar.B0(), AppLovinAdSize.INTERSTITIAL, activity);
        this.i = w1Var;
        w1Var.setAdClickListener(hVar);
        this.i.setAdDisplayListener(new a());
        bVar.i().putString("ad_view_address", k8.a(this.i));
        this.i.getController().a(this);
        g2 g2Var = new g2(map, lVar);
        if (g2Var.c()) {
            this.j = new com.applovin.impl.adview.k(g2Var, activity);
        }
        lVar.l().trackImpression(bVar);
        List listH = bVar.H();
        if (bVar.s() >= 0 || listH != null) {
            com.applovin.impl.adview.g gVar = new com.applovin.impl.adview.g(bVar.q(), activity);
            this.k = gVar;
            gVar.setVisibility(8);
            gVar.setOnClickListener(hVar);
        } else {
            this.k = null;
        }
        com.applovin.impl.adview.g gVar2 = new com.applovin.impl.adview.g(com.applovin.impl.adview.e.a.WHITE_ON_TRANSPARENT, activity);
        this.l = gVar2;
        gVar2.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.y1$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.a(view);
            }
        });
        if (bVar.V0()) {
            this.h = new b();
        } else {
            this.h = null;
        }
        this.g = new c(lVar);
        if (bVar.R0()) {
            this.E = lVar.q().b();
            this.D = new d(handler, lVar);
            activity.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI.buildUpon().appendPath("volume_music_speaker").build(), false, this.D);
        }
    }

    private void B() {
        if (this.h != null) {
            this.b.q().a(this.h);
        }
        if (this.g != null) {
            this.b.e().a(this.g);
        }
    }

    private x4 a(long j) {
        final x4 x4Var = new x4("bringAdActivityToFront");
        final e eVar = new e(x4Var);
        this.b.e().a(eVar);
        Intent intent = new Intent(this.d, (Class<?>) (this.a.L0() ? AppLovinFullscreenImmersiveActivity.class : AppLovinFullscreenActivity.class));
        intent.setFlags(131072);
        this.d.startActivity(intent);
        a(new Runnable() { // from class: com.applovin.impl.y1$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(eVar, x4Var);
            }
        }, j);
        return x4Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        a("backup_close_button");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(com.applovin.impl.adview.g gVar, Runnable runnable) {
        gVar.bringToFront();
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.b bVar, x4 x4Var) {
        this.b.e().b(bVar);
        if (x4Var.d()) {
            return;
        }
        x4Var.a((Object) null);
    }

    public static void a(com.applovin.impl.sdk.ad.b bVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, Map map, com.applovin.impl.sdk.l lVar, Activity activity, g gVar) {
        Throwable th;
        y1 b2Var;
        Throwable th2;
        com.applovin.impl.sdk.l lVar2 = lVar;
        if (bVar instanceof v7) {
            try {
                if (Boolean.parseBoolean(lVar2.p0().getExtraParameters().get("should_use_web_video_player"))) {
                    lVar2 = lVar;
                    b2Var = new c2(bVar, activity, map, lVar2, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                } else {
                    try {
                        if (((Boolean) lVar2.a(c5.F2)).booleanValue()) {
                            try {
                                lVar2 = lVar;
                                b2Var = new c2(bVar, activity, map, lVar2, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                            } catch (Throwable th3) {
                                try {
                                    lVar.E().a("AppLovinFullscreenActivity", "createFullscreenVastWebVideoAdPresenter", th3, j2.a((AppLovinAdImpl) bVar));
                                    lVar2 = lVar;
                                    b2Var = new b2(bVar, activity, map, lVar2, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                                } catch (Throwable th4) {
                                    th = th4;
                                    lVar2 = lVar;
                                    th = th;
                                    gVar.a("Failed to create FullscreenVastVideoAdPresenter with sdk: " + lVar2 + " and throwable: " + th.getMessage(), th);
                                    return;
                                }
                            }
                        } else {
                            b2Var = new b2(bVar, activity, map, lVar2, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        lVar2 = lVar;
                    }
                }
            } catch (Throwable th6) {
                th = th6;
                th = th;
                gVar.a("Failed to create FullscreenVastVideoAdPresenter with sdk: " + lVar2 + " and throwable: " + th.getMessage(), th);
                return;
            }
            gVar.a("Failed to create FullscreenVastVideoAdPresenter with sdk: " + lVar2 + " and throwable: " + th.getMessage(), th);
            return;
        }
        if (bVar.hasVideoUrl()) {
            try {
                if (Boolean.parseBoolean(lVar2.p0().getExtraParameters().get("should_use_web_video_player"))) {
                    lVar2 = lVar;
                    b2Var = new f2(bVar, activity, map, lVar2, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                } else {
                    try {
                        if (((Boolean) lVar2.a(c5.F2)).booleanValue()) {
                            try {
                                lVar2 = lVar;
                                b2Var = new f2(bVar, activity, map, lVar2, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                            } catch (Throwable th7) {
                                try {
                                    lVar.E().a("AppLovinFullscreenActivity", "createFullscreenWebVideoAdPresenter", th7, j2.a((AppLovinAdImpl) bVar));
                                    lVar2 = lVar;
                                    b2Var = new d2(bVar, activity, map, lVar2, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                                } catch (Throwable th8) {
                                    th = th8;
                                    lVar2 = lVar;
                                    th2 = th;
                                    gVar.a("Failed to create FullscreenVideoAdPresenter with sdk: " + lVar2 + " and throwable: " + th2.getMessage(), th2);
                                    return;
                                }
                            }
                        } else {
                            b2Var = new d2(bVar, activity, map, lVar2, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                        }
                    } catch (Throwable th9) {
                        th2 = th9;
                        lVar2 = lVar;
                    }
                }
            } catch (Throwable th10) {
                th = th10;
                th2 = th;
                gVar.a("Failed to create FullscreenVideoAdPresenter with sdk: " + lVar2 + " and throwable: " + th2.getMessage(), th2);
                return;
            }
            gVar.a("Failed to create FullscreenVideoAdPresenter with sdk: " + lVar2 + " and throwable: " + th2.getMessage(), th2);
            return;
        }
        try {
            b2Var = new z1(bVar, activity, map, lVar2, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        } catch (Throwable th11) {
            gVar.a("Failed to create FullscreenGraphicAdPresenter with sdk: " + lVar2 + " and throwable: " + th11.getMessage(), th11);
            return;
        }
        b2Var.B();
        gVar.a(b2Var);
    }

    private void a(String str, Map map) {
        e(t8.a(str, map));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, Void r2, Void r3) {
        if (z) {
            return;
        }
        f("app_relaunch_bring_to_front_failed");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(final com.applovin.impl.adview.g gVar, final Runnable runnable) {
        k8.a(gVar, 400L, new Runnable() { // from class: com.applovin.impl.y1$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                y1.a(gVar, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str) {
        com.applovin.impl.adview.b bVarF;
        AppLovinAdView appLovinAdView = this.i;
        if (appLovinAdView == null || (bVarF = appLovinAdView.getController().f()) == null) {
            return;
        }
        bVarF.a(str);
    }

    private void b(String str, Map map) {
        e(t8.b(str, map));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(final com.applovin.impl.adview.g gVar, final Runnable runnable) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.y1$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                y1.b(gVar, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(String str) {
        com.applovin.impl.sdk.p.h("AppLovinFullscreenActivity", "Dismissing on-screen ad due to " + str);
        try {
            a(str);
        } catch (Throwable th) {
            com.applovin.impl.sdk.p.c("AppLovinFullscreenActivity", "Failed to dismiss ad.", th);
            try {
                l();
            } catch (Throwable unused) {
            }
        }
    }

    private void c(String str, Map map) {
        e(t8.c(str, map));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (!z()) {
            f("app_relaunch");
            return;
        }
        if (com.applovin.impl.sdk.p.a()) {
            this.c.d("AppLovinFullscreenActivity", "App relaunch detected with launcher activity. Will attempt to re-show the ad");
        }
        this.p = true;
        long jF = this.a.f();
        if (jF < 0) {
            return;
        }
        a(new Runnable() { // from class: com.applovin.impl.y1$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.j();
            }
        }, jF);
    }

    private void d(String str, Map map) {
        e(t8.d(str, map));
    }

    static /* synthetic */ int f(y1 y1Var) {
        int i = y1Var.x;
        y1Var.x = i + 1;
        return i;
    }

    private void f(final String str) {
        if (this.o.get()) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.y1$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.c(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j() {
        if (this.a.T() <= this.e && !com.applovin.impl.d.d(this.d)) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.d("AppLovinFullscreenActivity", "Ad reshow timed out. Will attempt to bring existing ad activity to front.");
            }
            this.p = false;
            long jC = this.a.c();
            if (jC > 0) {
                a(jC).a(x4.i, new x4.b() { // from class: com.applovin.impl.y1$$ExternalSyntheticLambda1
                    @Override // com.applovin.impl.x4.b
                    public final void a(boolean z, Object obj, Object obj2) {
                        this.f$0.a(z, (Void) obj, (Void) obj2);
                    }
                });
            } else {
                f("app_relaunch_reshow_timed_out");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k() {
        if (this.a.A0().getAndSet(true)) {
            return;
        }
        this.b.s0().a((n5) new s6(this.a, this.b), i6.b.OTHER);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean z() {
        return a() >= 0;
    }

    protected abstract void A();

    public long a() {
        com.applovin.impl.sdk.ad.b bVar = this.a;
        if (bVar == null) {
            return -1L;
        }
        return bVar.g();
    }

    public void a(int i, KeyEvent keyEvent) {
        if (this.c == null || !com.applovin.impl.sdk.p.a()) {
            return;
        }
        this.c.d("AppLovinFullscreenActivity", "onKeyDown(int, KeyEvent) -  " + i + ", " + keyEvent);
    }

    protected void a(int i, boolean z, boolean z2, long j) {
        if (this.p || this.q || !this.n.compareAndSet(false, true)) {
            return;
        }
        if (this.a.hasVideoUrl() || h()) {
            x2.a(this.H, this.a, i, z2);
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.m;
        this.b.l().trackVideoEnd(this.a, TimeUnit.MILLISECONDS.toSeconds(jElapsedRealtime), i, z);
        long jElapsedRealtime2 = this.r != -1 ? SystemClock.elapsedRealtime() - this.r : -1L;
        this.b.l().trackFullScreenAdClosed(this.a, jElapsedRealtime2, this.y, j, this.C, this.B);
        if (com.applovin.impl.sdk.p.a()) {
            this.c.a("AppLovinFullscreenActivity", "Video ad ended at percent: " + i + "%, elapsedTime: " + jElapsedRealtime + "ms, skipTimeMillis: " + j + "ms, closeTimeMillis: " + jElapsedRealtime2 + "ms");
        }
    }

    public void a(Configuration configuration) {
        if (com.applovin.impl.sdk.p.a()) {
            this.c.d("AppLovinFullscreenActivity", "onConfigurationChanged(Configuration) -  " + configuration);
        }
    }

    public abstract void a(ViewGroup viewGroup);

    @Override // com.applovin.impl.adview.a.b
    public void a(com.applovin.impl.adview.a aVar) {
        if (com.applovin.impl.sdk.p.a()) {
            this.c.a("AppLovinFullscreenActivity", "Fully watched from ad web view...");
        }
        this.K = true;
    }

    protected void a(final com.applovin.impl.adview.g gVar, long j, final Runnable runnable) {
        if (j >= ((Long) this.b.a(c5.d2)).longValue()) {
            return;
        }
        this.J = m7.a(TimeUnit.SECONDS.toMillis(j), this.b, new Runnable() { // from class: com.applovin.impl.y1$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                y1.c(gVar, runnable);
            }
        });
    }

    public void a(p0.a aVar, p0.a aVar2, p0.a aVar3) {
        if (((Boolean) this.b.a(c5.P4)).booleanValue()) {
            HashMap map = new HashMap();
            map.put("orientation", u7.b(this.d));
            if (aVar != null) {
                map.put("display_cutout_insets", aVar.e());
            }
            if (aVar2 != null) {
                map.put("status_bar_insets", aVar2.e());
            }
            if (aVar3 != null) {
                map.put("nav_bar_insets", aVar3.e());
            }
            e(t8.a(map));
        }
    }

    protected void a(Runnable runnable, long j) {
        AppLovinSdkUtils.runOnUiThreadDelayed(runnable, j, this.f);
    }

    public void a(String str) {
        this.t = true;
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.m;
        if (com.applovin.impl.sdk.p.a()) {
            this.c.d("AppLovinFullscreenActivity", "Dismissing ad after " + TimeUnit.MILLISECONDS.toSeconds(jElapsedRealtime) + " seconds from source: " + str);
        }
        com.applovin.impl.sdk.ad.b bVar = this.a;
        if (bVar != null) {
            bVar.getAdEventTracker().f();
        }
        com.applovin.impl.sdk.ad.b bVar2 = this.a;
        if ((bVar2 instanceof com.applovin.impl.sdk.ad.a) && ((com.applovin.impl.sdk.ad.a) bVar2).i1() != null) {
            AppLovinBroadcastManager.sendBroadcastWithAdObject("com.applovin.sdk.ad_did_dismiss", this.a);
        }
        this.f.removeCallbacksAndMessages(null);
        com.applovin.impl.sdk.ad.b bVar3 = this.a;
        a("javascript:al_onPoststitialDismiss();", bVar3 != null ? bVar3.x() : 0L);
        if (((Boolean) this.b.a(c5.a7)).booleanValue()) {
            com.applovin.impl.sdk.ad.b bVar4 = this.a;
            if (bVar4 != null) {
                bVar4.a(str);
            }
            m();
        }
        l();
        this.L.b();
        if (this.h != null) {
            this.b.q().b(this.h);
        }
        if (this.g != null) {
            this.b.e().b(this.g);
        }
        if (this.D != null) {
            this.d.getContentResolver().unregisterContentObserver(this.D);
            this.D = null;
        }
        if (i()) {
            if (this.q) {
                return;
            }
            ((AppLovinFullscreenActivity) this.d).finishFromSdk();
        } else {
            this.b.Q();
            if (com.applovin.impl.sdk.p.a()) {
                this.b.Q().a("AppLovinFullscreenActivity", "Fullscreen ad shown in container view dismissed, destroying the presenter.");
            }
            r();
        }
    }

    protected void a(final String str, long j) {
        if (j < 0 || !StringUtils.isValidString(str)) {
            return;
        }
        a(new Runnable() { // from class: com.applovin.impl.y1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b(str);
            }
        }, j);
    }

    public void a(boolean z) {
        if (com.applovin.impl.sdk.p.a()) {
            this.c.d("AppLovinFullscreenActivity", "onWindowFocusChanged(boolean) - " + z);
        }
        d("javascript:al_onWindowFocusChanged( " + z + " );");
        m7 m7Var = this.J;
        if (m7Var != null) {
            if (z) {
                m7Var.e();
            } else {
                m7Var.d();
            }
        }
    }

    protected void a(boolean z, long j) {
        if (this.a.J0()) {
            a(z ? "javascript:al_mute();" : "javascript:al_unmute();", j);
        }
    }

    public AppLovinAdView b() {
        return this.i;
    }

    public abstract void b(long j);

    protected void b(boolean z) {
        a(z, ((Long) this.b.a(c5.t2)).longValue());
        if (!this.a.t0()) {
            x2.a(this.G, this.a);
        }
        this.b.J().a(this.a);
        if (!this.a.t0() && (this.a.hasVideoUrl() || h())) {
            x2.a(this.H, this.a);
        }
        new s4(this.d).a(this.a);
        this.a.setHasShown(true);
    }

    protected int c() {
        int iU = this.a.u();
        return (iU <= 0 && ((Boolean) this.b.a(c5.s2)).booleanValue()) ? this.v + 1 : iU;
    }

    protected void c(long j) {
        if (com.applovin.impl.sdk.p.a()) {
            this.c.a("AppLovinFullscreenActivity", "Scheduling report reward in " + TimeUnit.MILLISECONDS.toSeconds(j) + " seconds...");
        }
        this.I = m7.a(j, this.b, new Runnable() { // from class: com.applovin.impl.y1$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.k();
            }
        });
    }

    public void c(boolean z) {
        this.p = z;
    }

    protected void d(String str) {
        if (this.a.w0()) {
            a(str, 0L);
        }
    }

    public void d(boolean z) {
        this.q = z;
    }

    public void e() {
        if (com.applovin.impl.sdk.p.a()) {
            this.c.d("AppLovinFullscreenActivity", "Handling al_onPoststitialShow evaluation error");
        }
    }

    public void e(String str) {
        a(str, 0L);
    }

    public void f() {
        if (com.applovin.impl.sdk.p.a()) {
            this.c.d("AppLovinFullscreenActivity", "Handling render process crash");
        }
        this.u = true;
    }

    public boolean g() {
        return this.t;
    }

    protected boolean h() {
        return AppLovinAdType.INCENTIVIZED == this.a.getType();
    }

    protected boolean i() {
        return this.d instanceof AppLovinFullscreenActivity;
    }

    protected void l() {
        if (this.p || this.q || !this.o.compareAndSet(false, true)) {
            return;
        }
        x2.b(this.G, this.a);
        this.b.J().b(this.a);
        HashMap map = new HashMap();
        com.applovin.impl.sdk.ad.b bVar = this.a;
        if (bVar != null) {
            CollectionUtils.putStringIfValid("source", bVar.w(), map);
            CollectionUtils.putStringIfValid("details", j2.b(this.a), map);
        }
        this.b.g().a(h2.J, this.a, map);
    }

    protected abstract void m();

    protected void n() {
        m7 m7Var = this.I;
        if (m7Var != null) {
            m7Var.d();
        }
    }

    protected void o() {
        m7 m7Var = this.I;
        if (m7Var != null) {
            m7Var.e();
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        String action = intent.getAction();
        if (action == null) {
            return;
        }
        action.hashCode();
        switch (action) {
            case "com.applovin.al_onPoststitialShow_evaluation_error":
                e();
                break;
            case "com.applovin.custom_intent_launch_failure":
            case "com.applovin.custom_intent_launch_success":
                a(action, map);
                break;
            case "com.applovin.external_redirect_success":
            case "com.applovin.external_redirect_failure":
                c(action, map);
                break;
            case "com.applovin.custom_tabs_failure":
            case "com.applovin.custom_tabs_hidden":
            case "com.applovin.custom_tabs_shown":
                b(action, map);
                break;
            case "com.applovin.render_process_gone":
                if (!this.u) {
                    f();
                    break;
                }
                break;
            case "com.applovin.preload_success":
            case "com.applovin.preload_failure":
                d(action, map);
                break;
        }
    }

    protected void p() {
        com.applovin.impl.adview.b bVarF;
        if (this.i == null || !this.a.u0() || (bVarF = this.i.getController().f()) == null) {
            return;
        }
        this.L.a(bVarF, new f());
    }

    public void q() {
        if (com.applovin.impl.sdk.p.a()) {
            this.c.d("AppLovinFullscreenActivity", "onBackPressed()");
        }
        if (this.M) {
            a("back_button");
        }
        if (this.a.O0()) {
            e("javascript:onBackPressed();");
        }
    }

    public void r() {
        AppLovinAdView appLovinAdView = this.i;
        if (appLovinAdView != null) {
            ViewParent parent = appLovinAdView.getParent();
            this.i.destroy();
            this.i = null;
            if ((parent instanceof ViewGroup) && i()) {
                ((ViewGroup) parent).removeAllViews();
            }
        }
        m();
        l();
        this.F = null;
        this.G = null;
        this.H = null;
        this.d = null;
        AppLovinBroadcastManager.unregisterReceiver(this);
    }

    public void s() {
        if (com.applovin.impl.sdk.p.a()) {
            this.c.d("AppLovinFullscreenActivity", "onPause()");
        }
        d("javascript:al_onAppPaused();");
        n();
    }

    public void t() {
        if (com.applovin.impl.sdk.p.a()) {
            this.c.d("AppLovinFullscreenActivity", "onResume()");
        }
        d("javascript:al_onAppResumed();");
        o();
    }

    public void u() {
        if (com.applovin.impl.sdk.p.a()) {
            this.c.d("AppLovinFullscreenActivity", "onStop()");
        }
    }

    public abstract void v();

    public abstract void w();

    protected void x() {
        if (com.applovin.impl.sdk.p.a()) {
            this.c.d("AppLovinFullscreenActivity", "Setting ad fully watched");
        }
        this.K = true;
    }

    public boolean y() {
        return this.p;
    }
}
