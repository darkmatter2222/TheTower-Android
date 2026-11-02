package com.applovin.impl;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.browser.customtabs.CustomTabColorSchemeParams;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.browser.customtabs.CustomTabsService;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import androidx.browser.customtabs.CustomTabsSession;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.sdk.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class g1 {
    private final com.applovin.impl.sdk.l a;
    private CustomTabsClient b;

    class a extends CustomTabsServiceConnection {
        a() {
        }

        @Override // androidx.browser.customtabs.CustomTabsServiceConnection
        public void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient) {
            g1.this.a.Q();
            if (com.applovin.impl.sdk.p.a()) {
                g1.this.a.Q().a("CustomTabsManager", "Connection successful: " + componentName);
            }
            g1.this.b = customTabsClient;
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            g1.this.a.Q();
            if (com.applovin.impl.sdk.p.a()) {
                g1.this.a.Q().a("CustomTabsManager", "Service disconnected: " + componentName);
            }
            g1.this.b = null;
        }
    }

    private class b extends CustomTabsCallback {
        private final WeakReference a;

        public b(com.applovin.impl.adview.a aVar) {
            this.a = new WeakReference(aVar);
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public void onNavigationEvent(int i, Bundle bundle) {
            com.applovin.impl.adview.a aVar = (com.applovin.impl.adview.a) this.a.get();
            if (aVar == null) {
                g1.this.a.Q();
                if (com.applovin.impl.sdk.p.a()) {
                    g1.this.a.Q().b("CustomTabsManager", "Unable to track navigation event (" + i + "). Controller is null.");
                }
                return;
            }
            com.applovin.impl.sdk.ad.b bVarG = aVar.g();
            if (bVarG == null) {
                g1.this.a.Q();
                if (com.applovin.impl.sdk.p.a()) {
                    g1.this.a.Q().b("CustomTabsManager", "Unable to track navigation event (" + i + "). No ad specified.");
                    return;
                }
                return;
            }
            switch (i) {
                case 1:
                    if (bVarG.shouldCustomTabsTrackEvents()) {
                        g1.this.a.l().trackCustomTabsNavigationStarted(bVarG);
                    }
                    break;
                case 2:
                    if (bVarG.shouldCustomTabsTrackEvents()) {
                        g1.this.a.l().trackCustomTabsNavigationFinished(bVarG);
                    }
                    break;
                case 3:
                    if (bVarG.shouldCustomTabsTrackEvents()) {
                        g1.this.a.l().trackCustomTabsNavigationFailed(bVarG);
                    }
                    break;
                case 4:
                    if (bVarG.shouldCustomTabsTrackEvents()) {
                        g1.this.a.l().trackCustomTabsNavigationAborted(bVarG);
                    }
                    break;
                case 5:
                    if (bVarG.shouldCustomTabsTrackEvents()) {
                        g1.this.a.l().trackCustomTabsTabShown(bVarG);
                    }
                    AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.custom_tabs_shown"), null);
                    x2.c(aVar.e(), bVarG, aVar.i());
                    break;
                case 6:
                    if (bVarG.shouldCustomTabsTrackEvents()) {
                        g1.this.a.l().trackCustomTabsTabHidden(bVarG);
                    }
                    AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.custom_tabs_hidden"), null);
                    x2.a(aVar.e(), bVarG, aVar.i());
                    break;
                default:
                    g1.this.a.Q();
                    if (com.applovin.impl.sdk.p.a()) {
                        g1.this.a.Q().a("CustomTabsManager", "Unknown navigation event: " + i);
                    }
                    break;
            }
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public void onRelationshipValidationResult(int i, Uri uri, boolean z, Bundle bundle) {
            g1.this.a.Q();
            if (com.applovin.impl.sdk.p.a()) {
                g1.this.a.Q().a("CustomTabsManager", "Validation " + (z ? "succeeded" : "failed") + " for session-URL relation(" + i + "), requestedOrigin(" + uri + ")");
            }
        }
    }

    private class c extends CustomTabsCallback {
        private final WeakReference a;

        public c(AppLovinNativeAdImpl appLovinNativeAdImpl) {
            this.a = new WeakReference(appLovinNativeAdImpl);
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public void onNavigationEvent(int i, Bundle bundle) {
            AppLovinNativeAdImpl appLovinNativeAdImpl = (AppLovinNativeAdImpl) this.a.get();
            if (appLovinNativeAdImpl == null) {
                g1.this.a.Q();
                if (com.applovin.impl.sdk.p.a()) {
                    g1.this.a.Q().b("CustomTabsManager", "Unable to track navigation event (" + i + "). Native ad is null.");
                }
                return;
            }
            switch (i) {
                case 1:
                    if (appLovinNativeAdImpl.shouldCustomTabsTrackEvents()) {
                        g1.this.a.l().trackNativeAdCustomTabsNavigationStarted(appLovinNativeAdImpl);
                    }
                    break;
                case 2:
                    if (appLovinNativeAdImpl.shouldCustomTabsTrackEvents()) {
                        g1.this.a.l().trackNativeAdCustomTabsNavigationFinished(appLovinNativeAdImpl);
                    }
                    break;
                case 3:
                    if (appLovinNativeAdImpl.shouldCustomTabsTrackEvents()) {
                        g1.this.a.l().trackNativeAdCustomTabsNavigationFailed(appLovinNativeAdImpl);
                    }
                    break;
                case 4:
                    if (appLovinNativeAdImpl.shouldCustomTabsTrackEvents()) {
                        g1.this.a.l().trackNativeAdCustomTabsNavigationAborted(appLovinNativeAdImpl);
                    }
                    break;
                case 5:
                    if (appLovinNativeAdImpl.shouldCustomTabsTrackEvents()) {
                        g1.this.a.l().trackNativeAdCustomTabsTabShown(appLovinNativeAdImpl);
                    }
                    AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.custom_tabs_shown"), null);
                    break;
                case 6:
                    if (appLovinNativeAdImpl.shouldCustomTabsTrackEvents()) {
                        g1.this.a.l().trackNativeAdCustomTabsTabHidden(appLovinNativeAdImpl);
                    }
                    AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.custom_tabs_hidden"), null);
                    break;
                default:
                    g1.this.a.Q();
                    if (com.applovin.impl.sdk.p.a()) {
                        g1.this.a.Q().a("CustomTabsManager", "Unknown navigation event: " + i);
                    }
                    break;
            }
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public void onRelationshipValidationResult(int i, Uri uri, boolean z, Bundle bundle) {
            g1.this.a.Q();
            if (com.applovin.impl.sdk.p.a()) {
                g1.this.a.Q().a("CustomTabsManager", "Validation " + (z ? "succeeded" : "failed") + " for session-URL relation(" + i + "), requestedOrigin(" + uri + ")");
            }
        }
    }

    public g1(com.applovin.impl.sdk.l lVar) {
        this.a = lVar;
    }

    private CustomTabsIntent a(com.applovin.impl.adview.a aVar, Activity activity) {
        com.applovin.impl.sdk.ad.b bVarG = aVar.g();
        return a(bVarG != null ? bVarG.getCustomTabsSettings() : null, bVarG != null ? bVarG.getCustomTabsHeaders() : Bundle.EMPTY, aVar.h(), activity);
    }

    private CustomTabsIntent a(h1 h1Var, Bundle bundle, CustomTabsSession customTabsSession, Activity activity) {
        this.a.Q();
        if (com.applovin.impl.sdk.p.a()) {
            this.a.Q().a("CustomTabsManager", "Creating Custom Tabs intent");
        }
        CustomTabsIntent.Builder builder = new CustomTabsIntent.Builder(customTabsSession);
        if (((Boolean) this.a.a(c5.w7)).booleanValue()) {
            builder.setStartAnimations(activity, R.anim.applovin_slide_up_animation, R.anim.applovin_slide_down_animation);
            builder.setExitAnimations(activity, R.anim.applovin_slide_up_animation, R.anim.applovin_slide_down_animation);
        }
        if (h1Var != null) {
            Integer numH = h1Var.h();
            if (numH != null) {
                builder.setDefaultColorSchemeParams(new CustomTabColorSchemeParams.Builder().setToolbarColor(numH.intValue()).build());
            }
            Integer numA = h1Var.a();
            if (numA != null) {
                builder.setColorSchemeParams(2, new CustomTabColorSchemeParams.Builder().setToolbarColor(numA.intValue()).build());
            }
            Boolean boolI = h1Var.i();
            if (boolI != null) {
                builder.setUrlBarHidingEnabled(boolI.booleanValue());
            }
            Boolean boolG = h1Var.g();
            if (boolG != null) {
                builder.setShowTitle(boolG.booleanValue());
            }
            Boolean boolC = h1Var.c();
            if (boolC != null) {
                builder.setInstantAppsEnabled(boolC.booleanValue());
            }
            Integer numF = h1Var.f();
            if (numF != null) {
                builder.setShareState(numF.intValue());
            }
        }
        CustomTabsIntent customTabsIntentBuild = builder.build();
        if (h1Var != null) {
            String strD = h1Var.d();
            if (strD != null) {
                customTabsIntentBuild.intent.putExtra("android.intent.extra.REFERRER", Uri.parse(strD));
            }
            if (!bundle.isEmpty()) {
                customTabsIntentBuild.intent.putExtra("com.android.browser.headers", bundle);
            }
        }
        return customTabsIntentBuild;
    }

    private CustomTabsIntent a(AppLovinNativeAdImpl appLovinNativeAdImpl, Activity activity) {
        return a(appLovinNativeAdImpl.getCustomTabsSettings(), appLovinNativeAdImpl.getCustomTabsHeaders(), appLovinNativeAdImpl.getCustomTabsSession(), activity);
    }

    private void a(Uri uri, Activity activity) {
        if (((Boolean) this.a.a(c5.x7)).booleanValue()) {
            q7.a(uri, activity, this.a);
        }
        AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.custom_tabs_failure"), CollectionUtils.map("url", uri));
    }

    private void a(CustomTabsSession customTabsSession, com.applovin.impl.sdk.ad.b bVar) {
        if (bVar == null || !bVar.isCustomTabsClientWarmupEnabled()) {
            return;
        }
        a(bVar.getCustomTabsSettings(), customTabsSession);
    }

    private void a(CustomTabsSession customTabsSession, AppLovinNativeAdImpl appLovinNativeAdImpl) {
        if (appLovinNativeAdImpl == null || !appLovinNativeAdImpl.isCustomTabsClientWarmupEnabled()) {
            return;
        }
        a(appLovinNativeAdImpl.getCustomTabsSettings(), customTabsSession);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.adview.a aVar, Activity activity, Uri uri) {
        a(aVar, activity).launchUrl(activity, uri);
    }

    private void a(final h1 h1Var, final CustomTabsSession customTabsSession) {
        a("client warmup", new Runnable() { // from class: com.applovin.impl.g1$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b(h1Var, customTabsSession);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AppLovinNativeAdImpl appLovinNativeAdImpl, Activity activity, Uri uri) {
        a(appLovinNativeAdImpl, activity).launchUrl(activity, uri);
    }

    private void a(LinkedList linkedList) {
        boolean zBindCustomTabsService = false;
        try {
            zBindCustomTabsService = CustomTabsClient.bindCustomTabsService(com.applovin.impl.sdk.l.p(), (String) linkedList.poll(), new a());
            if (!zBindCustomTabsService) {
                this.a.Q();
                if (com.applovin.impl.sdk.p.a()) {
                    this.a.Q().b("CustomTabsManager", "Custom Tabs service not available");
                }
            }
            if (zBindCustomTabsService || linkedList.isEmpty()) {
                return;
            }
            this.a.Q();
            if (com.applovin.impl.sdk.p.a()) {
                this.a.Q().a("CustomTabsManager", "Retrying with next package name...");
            }
            a(linkedList);
        } catch (Throwable th) {
            try {
                this.a.Q();
                if (com.applovin.impl.sdk.p.a()) {
                    this.a.Q().a("CustomTabsManager", "Failed to bind to service", th);
                }
                if (zBindCustomTabsService) {
                    return;
                }
            } finally {
                if (!zBindCustomTabsService && !linkedList.isEmpty()) {
                    this.a.Q();
                    if (com.applovin.impl.sdk.p.a()) {
                        this.a.Q().a("CustomTabsManager", "Retrying with next package name...");
                    }
                    a(linkedList);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list, CustomTabsSession customTabsSession) {
        this.a.Q();
        if (com.applovin.impl.sdk.p.a()) {
            this.a.Q().a("CustomTabsManager", "Warming up URLs: " + list);
        }
        String str = (String) list.remove(0);
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            Bundle bundle = new Bundle();
            bundle.putParcelable(CustomTabsService.KEY_URL, Uri.parse(str2));
            arrayList.add(bundle);
        }
        boolean zMayLaunchUrl = customTabsSession.mayLaunchUrl(Uri.parse(str), null, arrayList);
        this.a.Q();
        if (com.applovin.impl.sdk.p.a()) {
            this.a.Q().a("CustomTabsManager", "Warmup for URLs ".concat(zMayLaunchUrl ? "succeeded" : "failed"));
        }
    }

    private boolean a(String str, Runnable runnable) {
        try {
            this.a.Q();
            if (com.applovin.impl.sdk.p.a()) {
                this.a.Q().a("CustomTabsManager", "Running operation: " + str);
            }
            runnable.run();
            this.a.Q();
            if (!com.applovin.impl.sdk.p.a()) {
                return true;
            }
            this.a.Q().a("CustomTabsManager", "Finished operation: " + str);
            return true;
        } catch (Throwable th) {
            this.a.Q();
            if (com.applovin.impl.sdk.p.a()) {
                this.a.Q().a("CustomTabsManager", "Failed to run operation: " + str, th);
            }
            this.a.E().a("CustomTabsManager", str, th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(h1 h1Var, CustomTabsSession customTabsSession) {
        this.b.warmup(0L);
        if (h1Var == null) {
            return;
        }
        Integer numE = h1Var.e();
        String strB = h1Var.b();
        if (numE == null || TextUtils.isEmpty(strB)) {
            return;
        }
        if (customTabsSession == null) {
            this.a.Q();
            if (com.applovin.impl.sdk.p.a()) {
                this.a.Q().b("CustomTabsManager", "Cannot validate session-URL relation because the session is null");
                return;
            }
            return;
        }
        this.a.Q();
        if (com.applovin.impl.sdk.p.a()) {
            this.a.Q().a("CustomTabsManager", "Validating session-URL relation: " + numE + " with digital asset link: " + strB);
        }
        customTabsSession.validateRelationship(numE.intValue(), Uri.parse(strB), null);
    }

    public CustomTabsSession a(com.applovin.impl.adview.a aVar) {
        if (this.b == null) {
            this.a.Q();
            if (com.applovin.impl.sdk.p.a()) {
                this.a.Q().a("CustomTabsManager", "Custom Tabs service is not connected, cannot start session");
            }
            return null;
        }
        this.a.Q();
        if (com.applovin.impl.sdk.p.a()) {
            this.a.Q().a("CustomTabsManager", "Starting Custom Tabs session");
        }
        try {
            CustomTabsSession customTabsSessionNewSession = this.b.newSession(new b(aVar));
            a(customTabsSessionNewSession, aVar.g());
            return customTabsSessionNewSession;
        } catch (Exception e) {
            this.a.Q();
            if (com.applovin.impl.sdk.p.a()) {
                this.a.Q().a("CustomTabsManager", "Failed to create Custom Tabs session", e);
            }
            return null;
        }
    }

    public CustomTabsSession a(AppLovinNativeAdImpl appLovinNativeAdImpl) {
        if (this.b == null) {
            this.a.Q();
            if (com.applovin.impl.sdk.p.a()) {
                this.a.Q().a("CustomTabsManager", "Custom Tabs service is not connected, cannot start session");
            }
            return null;
        }
        this.a.Q();
        if (com.applovin.impl.sdk.p.a()) {
            this.a.Q().a("CustomTabsManager", "Starting Custom Tabs session");
        }
        try {
            CustomTabsSession customTabsSessionNewSession = this.b.newSession(new c(appLovinNativeAdImpl));
            a(customTabsSessionNewSession, appLovinNativeAdImpl);
            return customTabsSessionNewSession;
        } catch (Exception e) {
            this.a.Q();
            if (com.applovin.impl.sdk.p.a()) {
                this.a.Q().a("CustomTabsManager", "Failed to create Custom Tabs session", e);
            }
            return null;
        }
    }

    public void a() {
        if (((Boolean) this.a.a(c5.t7)).booleanValue() && this.b == null) {
            String packageName = CustomTabsClient.getPackageName(com.applovin.impl.sdk.l.p(), this.a.c(c5.u7), true);
            String packageName2 = CustomTabsClient.getPackageName(com.applovin.impl.sdk.l.p(), null);
            LinkedList linkedList = new LinkedList();
            if (((Boolean) this.a.a(c5.v7)).booleanValue()) {
                CollectionUtils.addUniqueObjectIfExists(packageName2, linkedList);
                CollectionUtils.addUniqueObjectIfExists(packageName, linkedList);
            } else {
                CollectionUtils.addUniqueObjectIfExists(packageName, linkedList);
                CollectionUtils.addUniqueObjectIfExists(packageName2, linkedList);
            }
            if (!linkedList.isEmpty()) {
                a(linkedList);
                return;
            }
            this.a.Q();
            if (com.applovin.impl.sdk.p.a()) {
                this.a.Q().b("CustomTabsManager", "Unable to find a supported Custom Tabs package name");
            }
        }
    }

    public void a(final Uri uri, final com.applovin.impl.adview.a aVar, final Activity activity) {
        if (aVar.h() == null) {
            this.a.Q();
            if (com.applovin.impl.sdk.p.a()) {
                this.a.Q().b("CustomTabsManager", "Unable to launch URL in Custom Tabs. No Custom Tabs session found.");
            }
            a(uri, activity);
            return;
        }
        if (a("launch uri", new Runnable() { // from class: com.applovin.impl.g1$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(aVar, activity, uri);
            }
        })) {
            this.a.o0().pauseForClick();
            return;
        }
        this.a.Q();
        if (com.applovin.impl.sdk.p.a()) {
            this.a.Q().b("CustomTabsManager", "Opening in Custom Tabs failed: " + uri);
        }
        a(uri, activity);
    }

    public boolean a(final Uri uri, final AppLovinNativeAdImpl appLovinNativeAdImpl, final Activity activity) {
        if (appLovinNativeAdImpl.getCustomTabsSession() == null) {
            this.a.Q();
            if (com.applovin.impl.sdk.p.a()) {
                this.a.Q().b("CustomTabsManager", "Unable to launch URL in Custom Tabs. No Custom Tabs session found.");
            }
            a(uri, activity);
            return false;
        }
        boolean zA = a("launch uri", new Runnable() { // from class: com.applovin.impl.g1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(appLovinNativeAdImpl, activity, uri);
            }
        });
        if (zA) {
            this.a.o0().pauseForClick();
            return zA;
        }
        this.a.Q();
        if (com.applovin.impl.sdk.p.a()) {
            this.a.Q().b("CustomTabsManager", "Opening in Custom Tabs failed: " + uri);
        }
        a(uri, activity);
        return zA;
    }

    public void b(final List list, final CustomTabsSession customTabsSession) {
        if (list.isEmpty()) {
            return;
        }
        if (customTabsSession != null) {
            a("warmup urls", new Runnable() { // from class: com.applovin.impl.g1$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(list, customTabsSession);
                }
            });
            return;
        }
        this.a.Q();
        if (com.applovin.impl.sdk.p.a()) {
            this.a.Q().a("CustomTabsManager", "Custom Tabs session is null, cannot warmup urls");
        }
    }
}
