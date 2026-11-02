package com.applovin.impl.adview;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import androidx.browser.customtabs.CustomTabsSession;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinAdViewDisplayErrorCode;
import com.applovin.adview.AppLovinAdViewEventListener;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.c5;
import com.applovin.impl.e5;
import com.applovin.impl.g2;
import com.applovin.impl.h2;
import com.applovin.impl.i6;
import com.applovin.impl.j2;
import com.applovin.impl.k4;
import com.applovin.impl.k8;
import com.applovin.impl.m4;
import com.applovin.impl.o1;
import com.applovin.impl.p2;
import com.applovin.impl.s;
import com.applovin.impl.sdk.AppLovinAdServiceImpl;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.SessionTracker;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.p;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.t8;
import com.applovin.impl.u7;
import com.applovin.impl.x2;
import com.applovin.impl.x6;
import com.applovin.impl.y4;
import com.applovin.impl.z2;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import com.tapjoy.TJAdUnitConstants;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a implements AppLovinCommunicatorSubscriber, AppLovinBroadcastManager.Receiver {
    private volatile AppLovinAdLoadListener A;
    private volatile AppLovinAdDisplayListener B;
    private volatile AppLovinAdViewEventListener C;
    private volatile AppLovinAdClickListener D;
    private Context a;
    private ViewGroup b;
    private com.applovin.impl.sdk.l c;
    private AppLovinAdServiceImpl d;
    private p e;
    private AppLovinCommunicator f;
    private b g;
    private AppLovinAdSize i;
    private String j;
    private CustomTabsSession k;
    private com.applovin.impl.adview.c l;
    private e m;
    private com.applovin.impl.adview.b n;
    private WebView o;
    private k p;
    private Runnable q;
    private Runnable r;
    private final Map h = Collections.synchronizedMap(new HashMap());
    private volatile com.applovin.impl.sdk.ad.b s = null;
    private volatile AppLovinAd t = null;
    private f u = null;
    private f v = null;
    private final AtomicReference w = new AtomicReference();
    private final AtomicBoolean x = new AtomicBoolean();
    private volatile boolean y = false;
    private volatile boolean z = false;

    /* JADX INFO: renamed from: com.applovin.impl.adview.a$a, reason: collision with other inner class name */
    class C0010a extends y4 {
        C0010a() {
        }

        @Override // com.applovin.impl.y4
        protected Map a() {
            return CollectionUtils.hashMap("name", "AdViewController:GAWebView");
        }
    }

    public interface b {
        void a(a aVar);
    }

    private class c implements Runnable {
        private c() {
        }

        /* synthetic */ c(a aVar, C0010a c0010a) {
            this();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.n != null) {
                a.this.n.setVisibility(8);
            }
        }
    }

    private class d implements Runnable {

        /* JADX INFO: renamed from: com.applovin.impl.adview.a$d$a, reason: collision with other inner class name */
        class C0011a implements k.a {
            C0011a() {
            }

            @Override // com.applovin.impl.adview.k.a
            public void a() {
                a.this.n.addView(a.this.p, new ViewGroup.LayoutParams(-1, -1));
            }

            @Override // com.applovin.impl.adview.k.a
            public void b() {
                p unused = a.this.e;
                if (p.a()) {
                    a.this.e.b("AppLovinAdView", "Watermark failed to render.");
                }
            }
        }

        private d() {
        }

        /* synthetic */ d(a aVar, C0010a c0010a) {
            this();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.s != null) {
                if (a.this.n == null) {
                    p.h("AppLovinAdView", "Unable to render advertisement for ad #" + a.this.s.getAdIdNumber() + ". Please make sure you are not calling AppLovinAdView.destroy() prematurely.");
                    x2.a(a.this.C, a.this.s, (AppLovinAdView) null, AppLovinAdViewDisplayErrorCode.WEBVIEW_NOT_FOUND);
                    HashMap<String, String> mapHashMap = CollectionUtils.hashMap("source", "renderTask");
                    CollectionUtils.putStringIfValid("error_message", "Ad view failed to render due to null adView", mapHashMap);
                    a.this.c.g().a(h2.I, a.this.s, mapHashMap);
                    return;
                }
                a.this.u();
                p unused = a.this.e;
                if (p.a()) {
                    a.this.e.a("AppLovinAdView", "Rendering advertisement ad for #" + a.this.s.getAdIdNumber() + "...");
                }
                a.b(a.this.n, a.this.s.getSize());
                if (a.this.p != null) {
                    k8.c(a.this.p);
                    a.this.p = null;
                }
                g2 g2Var = new g2(a.this.h, a.this.c);
                if (g2Var.c()) {
                    a.this.p = new k(g2Var, a.this.a);
                    a.this.p.a(new C0011a());
                }
                a.this.n.setAdHtmlLoaded(false);
                a.this.n.a(a.this.s);
                if (a.this.s.getSize() == AppLovinAdSize.INTERSTITIAL || a.this.z) {
                    return;
                }
                a.this.s.setHasShown(true);
            }
        }
    }

    static class e implements AppLovinAdLoadListener {
        private final a a;

        e(a aVar, com.applovin.impl.sdk.l lVar) {
            if (aVar == null) {
                throw new IllegalArgumentException("No view specified");
            }
            if (lVar == null) {
                throw new IllegalArgumentException("No sdk specified");
            }
            this.a = aVar;
        }

        private a a() {
            return this.a;
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(AppLovinAd appLovinAd) {
            a aVarA = a();
            if (aVarA != null) {
                aVarA.b(appLovinAd);
            } else {
                p.h("AppLovinAdView", "Ad view has been garbage collected by the time an ad was received");
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i) {
            a aVarA = a();
            if (aVarA != null) {
                aVarA.b(i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i) {
        try {
            if (this.A != null) {
                this.A.failedToReceiveAd(i);
            }
        } catch (Throwable th) {
            p.c("AppLovinAdView", "Exception while running app load callback", th);
            com.applovin.impl.sdk.l lVar = this.c;
            if (lVar != null) {
                lVar.E().a("AppLovinAdView", "notifyAdLoadFailedCallback", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(DialogInterface dialogInterface) {
        a();
    }

    private void a(AppLovinAdView appLovinAdView, com.applovin.impl.sdk.l lVar, AppLovinAdSize appLovinAdSize, String str, Context context) {
        if (appLovinAdView == null) {
            throw new IllegalArgumentException("No parent view specified");
        }
        if (lVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (appLovinAdSize == null) {
            throw new IllegalArgumentException("No ad size specified");
        }
        this.c = lVar;
        this.d = lVar.l();
        this.e = lVar.Q();
        this.f = AppLovinCommunicator.getInstance(context);
        this.i = appLovinAdSize;
        this.j = str;
        if (!(context instanceof AppLovinFullscreenActivity)) {
            context = context.getApplicationContext();
        }
        this.a = context;
        this.b = appLovinAdView;
        this.l = new com.applovin.impl.adview.c(this, lVar);
        C0010a c0010a = null;
        this.r = new c(this, c0010a);
        this.q = new d(this, c0010a);
        this.m = new e(this, lVar);
        a(appLovinAdSize);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AppLovinAd appLovinAd) {
        if (this.x.compareAndSet(true, false)) {
            a(this.i);
        }
        try {
            if (this.A != null) {
                this.A.adReceived(appLovinAd);
            }
        } catch (Throwable th) {
            p.h("AppLovinAdView", "Exception while running ad load callback: " + th.getMessage());
            com.applovin.impl.sdk.l lVar = this.c;
            if (lVar != null) {
                lVar.E().a("AppLovinAdView", "notifyAdLoadedCallback", th);
            }
        }
    }

    private void a(Runnable runnable) {
        AppLovinSdkUtils.runOnUiThread(runnable);
    }

    private void a(String str) {
        if (this.s == null || this.n == null || !u7.a(this.s.getSize()) || !StringUtils.isValidString(str)) {
            return;
        }
        this.n.a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2) {
        t8.a(this.o, StringUtils.isValidString(str) ? "gtag('event', '" + str2 + "', " + str + ");" : "gtag('event', '" + str2 + "')", this.c);
    }

    private void a(String str, Map map) {
        a(t8.a(str, map));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final int i) {
        if (!this.z) {
            a(this.r);
        }
        a(new Runnable() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(MotionEvent motionEvent) {
        a aVar;
        if (this.u == null && (this.s instanceof com.applovin.impl.sdk.ad.a) && this.n != null) {
            com.applovin.impl.sdk.ad.a aVar2 = (com.applovin.impl.sdk.ad.a) this.s;
            Context context = this.a;
            Activity activityB = context instanceof Activity ? (Activity) context : k8.b(this.n, this.c);
            if (activityB == null || activityB.isFinishing()) {
                p.h("AppLovinAdView", "Unable to expand ad. No Activity found.");
                Uri uriF1 = aVar2.f1();
                if (uriF1 != null) {
                    aVar = this;
                    this.d.trackAndLaunchClick(aVar2, i(), aVar, uriF1, motionEvent);
                } else {
                    aVar = this;
                }
                aVar.n.a("javascript:al_onFailedExpand();");
                return;
            }
            ViewGroup viewGroup = this.b;
            if (viewGroup != null) {
                viewGroup.removeView(this.n);
            }
            f fVar = new f(aVar2, this.n, activityB, this.c);
            this.u = fVar;
            fVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda8
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    this.f$0.a(dialogInterface);
                }
            });
            this.u.show();
            x2.c(this.C, this.s, (AppLovinAdView) this.b);
            if (this.s.isOpenMeasurementEnabled()) {
                this.s.getAdEventTracker().a((View) this.u.c());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(View view, AppLovinAdSize appLovinAdSize) {
        int iApplyDimension;
        if (view == null) {
            return;
        }
        DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
        AppLovinAdSize appLovinAdSize2 = AppLovinAdSize.INTERSTITIAL;
        int iApplyDimension2 = -1;
        if (appLovinAdSize == appLovinAdSize2 || appLovinAdSize == AppLovinAdSize.BANNER) {
            iApplyDimension = -1;
        } else {
            iApplyDimension = appLovinAdSize.getWidth() == -1 ? displayMetrics.widthPixels : (int) TypedValue.applyDimension(1, appLovinAdSize.getWidth(), displayMetrics);
        }
        if (appLovinAdSize != appLovinAdSize2 && appLovinAdSize != AppLovinAdSize.BANNER) {
            iApplyDimension2 = appLovinAdSize.getHeight() == -1 ? displayMetrics.heightPixels : (int) TypedValue.applyDimension(1, appLovinAdSize.getHeight(), displayMetrics);
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        }
        layoutParams.width = iApplyDimension;
        layoutParams.height = iApplyDimension2;
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            ((RelativeLayout.LayoutParams) layoutParams).addRule(13);
        }
        view.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(WebView webView) {
        this.s.getAdEventTracker().c(webView);
        k kVar = this.p;
        if (kVar == null || !kVar.a()) {
            this.s.getAdEventTracker().a((View) webView);
        } else {
            k4 adEventTracker = this.s.getAdEventTracker();
            k kVar2 = this.p;
            adEventTracker.b(webView, Collections.singletonList(new m4(kVar2, FriendlyObstructionPurpose.NOT_VISIBLE, kVar2.getIdentifier())));
        }
        this.s.getAdEventTracker().h();
        this.s.getAdEventTracker().g();
    }

    private void b(String str) {
        if (((Boolean) this.c.a(c5.L1)).booleanValue()) {
            a(str);
        }
    }

    private void b(String str, Map map) {
        a(t8.b(str, map));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(boolean z) {
        if (this.n != null && this.u != null) {
            a();
        }
        d(z);
    }

    private void c() {
        a(new Runnable() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.q();
            }
        });
    }

    private void c(String str, Map map) {
        a(t8.c(str, map));
    }

    private void d() {
        a(new Runnable() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.r();
            }
        });
    }

    private void d(String str, Map map) {
        a(t8.d(str, map));
    }

    private void d(boolean z) {
        if (this.e != null && p.a() && p.a()) {
            this.e.a("AppLovinAdView", "Destroying...");
        }
        t8.b(this.n, z);
        this.n = null;
        t8.b(this.o, z);
        this.o = null;
        this.k = null;
        this.A = null;
        this.B = null;
        this.D = null;
        this.C = null;
        AppLovinBroadcastManager.unregisterReceiver(this);
        this.z = true;
    }

    private void m() {
        if (p.a()) {
            this.e.a("AppLovinAdView", "handleApplicationPaused()");
        }
        b("javascript:al_onAppPaused();");
    }

    private void n() {
        if (p.a()) {
            this.e.a("AppLovinAdView", "handleApplicationResumed()");
        }
        b("javascript:al_onAppResumed();");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o() {
        this.n.loadDataWithBaseURL(DomExceptionUtils.SEPARATOR, "<html></html>", "text/html", null, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p() {
        com.applovin.impl.adview.b bVar;
        d();
        if (this.b == null || (bVar = this.n) == null || bVar.getParent() != null) {
            return;
        }
        this.b.addView(this.n);
        b(this.n, this.s.getSize());
        if (this.s.isOpenMeasurementEnabled()) {
            this.s.getAdEventTracker().a((View) this.n);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q() {
        if (this.u != null) {
            if (p.a()) {
                this.e.a("AppLovinAdView", "Detaching expanded ad: " + this.u.b());
            }
            this.v = this.u;
            this.u = null;
            a(this.i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r() {
        com.applovin.impl.sdk.ad.a aVarB;
        f fVar = this.v;
        if (fVar == null && this.u == null) {
            return;
        }
        if (fVar != null) {
            aVarB = fVar.b();
            this.v.dismiss();
            this.v = null;
        } else {
            aVarB = this.u.b();
            this.u.dismiss();
            this.u = null;
        }
        x2.a(this.C, aVarB, (AppLovinAdView) this.b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s() {
        f().loadUrl("chrome://crash");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        com.applovin.impl.sdk.ad.b bVar = this.s;
        z2 z2Var = new z2();
        z2Var.a().a(bVar).a(i());
        if (!u7.a(bVar.getSize())) {
            z2Var.a().a("Fullscreen Ad Properties").b(bVar);
        }
        z2Var.a(this.c);
        z2Var.a();
        if (p.a()) {
            this.e.a("AppLovinAdView", z2Var.toString());
        }
    }

    private void w() {
        if (this.s.P0()) {
            int iC = this.c.q().c();
            if (com.applovin.impl.sdk.j.a(iC)) {
                this.n.a("javascript:al_muteSwitchOn();");
            } else if (iC == 2) {
                this.n.a("javascript:al_muteSwitchOff();");
            }
        }
    }

    private void x() {
        if (u7.a(this.i)) {
            if (((Boolean) this.c.a(c5.L1)).booleanValue()) {
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
            }
            if (((Boolean) this.c.a(c5.M1)).booleanValue()) {
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.custom_tabs_shown"));
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.custom_tabs_hidden"));
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.custom_tabs_failure"));
            }
            AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.custom_intent_launch_success"));
            AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.custom_intent_launch_failure"));
            if (((Boolean) this.c.a(c5.N1)).booleanValue()) {
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.external_redirect_success"));
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.external_redirect_failure"));
            }
            if (((Boolean) this.c.a(c5.O1)).booleanValue()) {
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.preload_success"));
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.preload_failure"));
            }
        }
    }

    public void A() {
        x();
        if (this.s != null) {
            com.applovin.impl.g.a(this.n, this.c);
        }
        b("javascript:al_onAttachedToWindow();");
    }

    public void B() {
        if (this.y) {
            if (this.s == null || !this.s.Z0()) {
                x2.b(this.B, this.s);
            }
            if (this.s != null && this.s.isOpenMeasurementEnabled() && u7.a(this.s.getSize())) {
                this.s.getAdEventTracker().f();
            }
            if (this.n != null && this.u != null) {
                if (p.a()) {
                    this.e.a("AppLovinAdView", "onDetachedFromWindowCalled with expanded ad present");
                }
                c();
            } else if (p.a()) {
                this.e.a("AppLovinAdView", "onDetachedFromWindowCalled without an expanded ad present");
            }
            b("javascript:al_onDetachedFromWindow();");
        }
    }

    public void C() {
        if (!this.y || this.z) {
            return;
        }
        this.z = true;
    }

    public void D() {
        if (this.y) {
            AppLovinAd appLovinAd = (AppLovinAd) this.w.getAndSet(null);
            if (appLovinAd != null) {
                c(appLovinAd);
            }
            this.z = false;
        }
    }

    public void a() {
        a(new Runnable() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.p();
            }
        });
    }

    public void a(Uri uri) {
        Context context = this.a;
        Activity activityB = context instanceof Activity ? (Activity) context : k8.b(this.n, this.c);
        if (activityB instanceof AppLovinFullscreenActivity) {
            AppLovinFullscreenActivity appLovinFullscreenActivity = (AppLovinFullscreenActivity) activityB;
            boolean booleanQueryParameter = uri.getBooleanQueryParameter("hide_status_bar", appLovinFullscreenActivity.isHidingStatusBar());
            boolean booleanQueryParameter2 = uri.getBooleanQueryParameter("hide_navigation_bar", appLovinFullscreenActivity.isHidingNavigationBar());
            appLovinFullscreenActivity.configureSystemUiBars(booleanQueryParameter, booleanQueryParameter2, uri.getBooleanQueryParameter("hide_no_bar", (booleanQueryParameter || booleanQueryParameter2) ? false : true), uri.getBooleanQueryParameter("allow_ad_rendering_within_display_cutout", appLovinFullscreenActivity.isAllowingAdRenderingWithinDisplayCutout()));
        }
    }

    public void a(final MotionEvent motionEvent) {
        a(new Runnable() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b(motionEvent);
            }
        });
    }

    public void a(final WebView webView, String str) {
        if (this.s == null) {
            return;
        }
        a(new Runnable() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                webView.setVisibility(0);
            }
        });
        if (((Boolean) this.c.a(c5.J6)).booleanValue()) {
            String strL = this.s.l();
            if (str == null || strL == null || !str.startsWith(strL)) {
                return;
            }
        }
        try {
            if (this.s != this.t) {
                this.t = this.s;
                w();
                this.n.setAdHtmlLoaded(true);
                if (this.B != null) {
                    this.c.z().d(this.s);
                    if (this.s.t0()) {
                        this.c.g().a(h2.H, this.s, CollectionUtils.hashMap("details", j2.b(this.s)));
                    } else {
                        this.c.g().a(h2.G, this.s, CollectionUtils.hashMap("duration_ms", String.valueOf(SystemClock.elapsedRealtime() - this.s.A())));
                        x2.a(this.B, this.s);
                    }
                    if (this.s.Q0()) {
                        String str2 = (String) this.c.r0().a(e5.V, "");
                        JSONObject jSONObject = new JSONObject();
                        JsonUtils.putString(jSONObject, "template_browser_package_name", str2);
                        this.n.a("javascript:al_onAdViewRendered(" + jSONObject + ");");
                    } else {
                        this.n.a("javascript:al_onAdViewRendered();");
                    }
                    if (this.s.t0()) {
                        this.n.a("javascript:al_onAdRestored( '" + this.s.a0() + "' );");
                    }
                }
                if ((this.s instanceof com.applovin.impl.sdk.ad.a) && this.s.isOpenMeasurementEnabled()) {
                    this.c.s0().a(new x6(this.c, "StartOMSDK", new Runnable() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.b(webView);
                        }
                    }), i6.b.OTHER, 500L);
                }
            }
        } catch (Throwable th) {
            p.c("AppLovinAdView", "Exception while notifying ad display listener", th);
            com.applovin.impl.sdk.l lVar = this.c;
            if (lVar != null) {
                lVar.E().a("AppLovinAdView", "onAdHtmlLoaded", th);
            }
        }
    }

    public void a(AppLovinAdView appLovinAdView, Context context, AppLovinAdSize appLovinAdSize, String str, AppLovinSdk appLovinSdk, AttributeSet attributeSet) {
        if (appLovinAdView == null) {
            throw new IllegalArgumentException("No parent view specified");
        }
        if (context == null) {
            p.h("AppLovinAdView", "Unable to build AppLovinAdView: no context provided. Please use a different constructor for this view.");
            return;
        }
        if (appLovinAdSize == null && (appLovinAdSize = s.a(attributeSet)) == null) {
            appLovinAdSize = AppLovinAdSize.BANNER;
        }
        AppLovinAdSize appLovinAdSize2 = appLovinAdSize;
        if (appLovinSdk == null) {
            appLovinSdk = AppLovinSdk.getInstance(context);
        }
        if (appLovinSdk != null) {
            a(appLovinAdView, appLovinSdk.a(), appLovinAdSize2, str, context);
            if (s.b(attributeSet)) {
                t();
            }
        }
    }

    public void a(AppLovinAdViewEventListener appLovinAdViewEventListener) {
        this.C = appLovinAdViewEventListener;
    }

    public void a(b bVar) {
        this.g = bVar;
    }

    public void a(com.applovin.impl.sdk.ad.b bVar, AppLovinAdView appLovinAdView, Uri uri, MotionEvent motionEvent) {
        a aVar;
        com.applovin.impl.sdk.ad.b bVar2;
        if (appLovinAdView != null) {
            aVar = this;
            bVar2 = bVar;
            this.d.trackAndLaunchClick(bVar2, appLovinAdView, aVar, uri, motionEvent);
        } else {
            aVar = this;
            bVar2 = bVar;
            if (p.a()) {
                aVar.e.b("AppLovinAdView", "Unable to process ad click - AppLovinAdView destroyed prematurely");
            }
        }
        x2.a(aVar.D, bVar2);
    }

    public void a(AppLovinAd appLovinAd, String str) {
        if (appLovinAd == null) {
            throw new IllegalArgumentException("No ad specified");
        }
        u7.b(appLovinAd, this.c);
        if (!this.y) {
            p.i("AppLovinAdView", "Unable to render ad: AppLovinAdView is not initialized.");
            return;
        }
        if (appLovinAd.getSize() != AppLovinAdSize.INTERSTITIAL) {
            Map mapA = j2.a((AppLovinAdImpl) appLovinAd);
            CollectionUtils.putStringIfValid("source", "renderAd", mapA);
            this.c.g().d(h2.F, mapA);
        }
        com.applovin.impl.sdk.ad.b bVar = (com.applovin.impl.sdk.ad.b) u7.a(appLovinAd, this.c);
        if (bVar == null) {
            p.h("AppLovinAdView", "Unable to retrieve the loaded ad: " + appLovinAd);
            x2.a(this.B, "Unable to retrieve the loaded ad");
            Map mapA2 = j2.a((AppLovinAdImpl) appLovinAd);
            CollectionUtils.putStringIfValid("source", "noAdToRender", mapA2);
            CollectionUtils.putStringIfValid("error_message", "Unable to retrieve the loaded ad", mapA2);
            this.c.g().d(h2.I, mapA2);
            return;
        }
        if (bVar == this.s) {
            p.h("AppLovinAdView", "Attempting to show ad again: " + bVar);
            if (((Boolean) this.c.a(c5.P1)).booleanValue()) {
                if (this.B instanceof p2) {
                    x2.a(this.B, "Attempting to show ad again");
                } else {
                    if (u7.c(this.c)) {
                        throw new IllegalStateException("Attempting to show ad again");
                    }
                    this.c.g().a(h2.h1, bVar, CollectionUtils.hashMap("source", "attemptingAdReRender"));
                }
            }
            HashMap<String, String> mapHashMap = CollectionUtils.hashMap("source", "attemptingAdReRender");
            CollectionUtils.putStringIfValid("error_message", "Attempting to show ad again", mapHashMap);
            this.c.g().a(h2.I, bVar, mapHashMap);
            return;
        }
        if (p.a()) {
            this.e.a("AppLovinAdView", "Rendering ad #" + bVar.getAdIdNumber() + " (" + bVar.getSize() + ")");
        }
        x2.b(this.B, this.s);
        if (this.s != null && this.s.isOpenMeasurementEnabled()) {
            this.s.getAdEventTracker().f();
        }
        this.w.set(null);
        this.t = null;
        this.s = bVar;
        if (this.s.isCustomTabsEnabled()) {
            this.k = this.c.A().a(this);
            this.c.A().b(this.s.getCustomTabsWarmupUrls(), this.k);
        }
        if (!this.z && u7.a(this.i)) {
            this.c.l().trackImpression(bVar);
        }
        if (this.u != null) {
            c();
        }
        a(this.q);
    }

    public void a(AppLovinAdClickListener appLovinAdClickListener) {
        this.D = appLovinAdClickListener;
    }

    public void a(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        this.B = appLovinAdDisplayListener;
    }

    public void a(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.A = appLovinAdLoadListener;
    }

    protected void a(AppLovinAdSize appLovinAdSize) {
        try {
            com.applovin.impl.adview.b bVar = new com.applovin.impl.adview.b(this.l, this.c, this.a);
            this.n = bVar;
            bVar.setBackgroundColor(0);
            this.n.setWillNotCacheDrawing(false);
            this.b.setBackgroundColor(0);
            this.b.addView(this.n);
            b(this.n, appLovinAdSize);
            if (!this.y) {
                a(this.r);
            }
            a(new Runnable() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.o();
                }
            });
            this.y = true;
        } catch (Throwable th) {
            p.c("AppLovinAdView", "Failed to initialize AdWebView", th);
            this.c.E().a("AppLovinAdView", "initAdWebView", th);
            this.x.set(true);
        }
    }

    public void a(String str, Object obj) {
        this.h.put(str, obj);
    }

    public void a(final boolean z) {
        a(new Runnable() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b(z);
            }
        });
    }

    public void b() {
        a(true);
    }

    public void b(Uri uri) {
        if (this.s == null || !this.s.x0()) {
            return;
        }
        if (this.o == null) {
            this.c.Q();
            if (p.a()) {
                this.c.Q().a("AppLovinAdView", "GA is not initialized. Cannot fire GA event");
                return;
            }
            return;
        }
        final String queryParameter = uri.getQueryParameter(TJAdUnitConstants.PARAM_PLACEMENT_NAME);
        final String queryParameter2 = uri.getQueryParameter("event_params_json");
        if (!TextUtils.isEmpty(queryParameter)) {
            a(new Runnable() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(queryParameter2, queryParameter);
                }
            });
            return;
        }
        this.c.Q();
        if (p.a()) {
            this.c.Q().a("AppLovinAdView", "Invalid GA event name. Cannot fire GA event");
        }
    }

    void b(final AppLovinAd appLovinAd) {
        if (appLovinAd == null) {
            if (p.a()) {
                this.e.b("AppLovinAdView", "No provided when to the view controller");
            }
            b(-1);
        } else {
            if (this.z) {
                this.w.set(appLovinAd);
                if (p.a()) {
                    this.e.a("AppLovinAdView", "Ad view has paused when an ad was received, ad saved for later");
                }
            } else {
                c(appLovinAd);
            }
            a(new Runnable() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(appLovinAd);
                }
            });
        }
    }

    public void c(int i) {
        String strA = k8.a(i);
        if (p.a()) {
            this.e.a("AppLovinAdView", "onWindowVisibilityChanged( " + strA + " )");
        }
        b("javascript:al_onWindowVisibilityChanged( " + strA + " );");
    }

    public void c(Uri uri) {
        if (this.s != null && this.s.x0() && this.o == null) {
            String queryParameter = uri.getQueryParameter("tracking_id");
            if (TextUtils.isEmpty(queryParameter)) {
                this.c.Q();
                if (p.a()) {
                    this.c.Q().b("AppLovinAdView", "Invalid tracking id. Cannot initialize GA");
                    return;
                }
                return;
            }
            WebView webView = new WebView(this.a);
            this.o = webView;
            webView.setWebViewClient(new C0010a());
            this.o.getSettings().setJavaScriptEnabled(true);
            this.o.loadDataWithBaseURL((String) this.c.a(c5.y7), "<html><head><link rel=\"icon\" href=\"data:,\"><G-SCRIPT_TAG></head><body></body></html>".replace("<G-SCRIPT_TAG>", "<script src='https://www.googletagmanager.com/gtag/js?id=<G-TRACKING_ID>'></script><script>window.dataLayer = window.dataLayer || [];function gtag(){dataLayer.push(arguments);}gtag('js', new Date());gtag('config', '<G-TRACKING_ID>')</script>".replace("<G-TRACKING_ID>", queryParameter)), "text/html", "UTF-8", null);
        }
    }

    public void c(WebView webView) {
        a(webView, (String) null);
    }

    public void c(AppLovinAd appLovinAd) {
        a(appLovinAd, (String) null);
    }

    public void c(boolean z) {
        if (p.a()) {
            this.e.a("AppLovinAdView", "onWindowFocusChanged( " + z + " )");
        }
        b("javascript:al_onWindowFocusChanged( " + z + " );");
    }

    public AppLovinAdViewEventListener e() {
        return this.C;
    }

    public com.applovin.impl.adview.b f() {
        return this.n;
    }

    public com.applovin.impl.sdk.ad.b g() {
        return this.s;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "a";
    }

    public CustomTabsSession h() {
        return this.k;
    }

    public AppLovinAdView i() {
        return (AppLovinAdView) this.b;
    }

    public com.applovin.impl.sdk.l j() {
        return this.c;
    }

    public AppLovinAdSize k() {
        return this.i;
    }

    public String l() {
        return this.j;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("crash_applovin_ad_webview".equals(appLovinCommunicatorMessage.getTopic())) {
            a(new Runnable() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.s();
                }
            });
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
            case "com.applovin.application_paused":
                m();
                break;
            case "com.applovin.application_resumed":
                n();
                break;
            case "com.applovin.preload_success":
            case "com.applovin.preload_failure":
                d(action, map);
                break;
        }
    }

    public void t() {
        if (this.c == null || this.m == null || this.a == null || !this.y) {
            p.i("AppLovinAdView", "Unable to load next ad: AppLovinAdView is not initialized.");
        } else {
            this.d.loadNextAd(this.j, this.i, this.m);
        }
    }

    public void v() {
        if ((this.a instanceof o1) && this.s != null && this.s.M() == com.applovin.impl.sdk.ad.b.EnumC0026b.DISMISS) {
            ((o1) this.a).dismiss("postitial_click");
        }
    }

    public void y() {
        if (this.u != null || this.v != null) {
            a();
            return;
        }
        if (p.a()) {
            this.e.a("AppLovinAdView", "Ad: " + this.s + " closed.");
        }
        a(this.r);
        x2.b(this.B, this.s);
        this.s = null;
    }

    public void z() {
        if (p.a()) {
            this.e.a("AppLovinAdView", "AdView fully watched...");
        }
        b bVar = this.g;
        if (bVar != null) {
            bVar.a(this);
        }
    }
}
