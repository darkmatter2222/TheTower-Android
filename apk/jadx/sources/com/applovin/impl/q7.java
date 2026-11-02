package com.applovin.impl;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.ironsource.G5;
import com.ironsource.L1;
import com.tapjoy.TapjoyConstants;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class q7 {

    class a extends b {
        final /* synthetic */ String a;
        final /* synthetic */ com.applovin.impl.adview.a b;
        final /* synthetic */ com.applovin.impl.sdk.l c;

        a(String str, com.applovin.impl.adview.a aVar, com.applovin.impl.sdk.l lVar) {
            this.a = str;
            this.b = aVar;
            this.c = lVar;
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (activity instanceof AppLovinWebViewActivity) {
                ((AppLovinWebViewActivity) activity).loadUrl(this.a, null);
                x2.c(this.b.e(), this.b.g(), this.b.i());
            }
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (activity instanceof AppLovinWebViewActivity) {
                x2.a(this.b.e(), this.b.g(), this.b.i());
                this.c.e().b(this);
            }
        }
    }

    private static Context a(String str, AppLovinAdView appLovinAdView, com.applovin.impl.sdk.l lVar) {
        if ("application".equalsIgnoreCase(str)) {
            return com.applovin.impl.sdk.l.p();
        }
        if ("activity".equalsIgnoreCase(str)) {
            Activity activityB = k8.b(appLovinAdView, lVar);
            if (activityB != null) {
                return activityB;
            }
            lVar.Q();
            if (com.applovin.impl.sdk.p.a()) {
                lVar.Q().k("UriUtils", "Could not retrieve the activity context. Falling back to view context.");
            }
        }
        return appLovinAdView.getContext();
    }

    public static Boolean a(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            boolean z = true;
            packageManager.getPackageInfo("com.android.vending", 1);
            int applicationEnabledSetting = packageManager.getApplicationEnabledSetting("com.android.vending");
            if (applicationEnabledSetting != 2 && applicationEnabledSetting != 3) {
                z = false;
            }
            return Boolean.valueOf(z);
        } catch (PackageManager.NameNotFoundException unused) {
            return Boolean.TRUE;
        } catch (Throwable unused2) {
            return null;
        }
    }

    private static String a(Intent intent) {
        if (intent == null) {
            return "Intent not available";
        }
        ComponentName component = intent.getComponent();
        return "Identifier: " + (p0.f() ? intent.getIdentifier() : null) + "\nAction: " + intent.getAction() + "\nData: " + intent.getData() + "\nType: " + intent.getType() + "\nFlags: " + intent.getFlags() + "\nExtras: " + intent.getExtras() + "\nCategories: " + intent.getCategories() + "\nClipData: " + intent.getClipData() + "\nSourceBounds: " + intent.getSourceBounds() + "\nComponent: " + (component != null ? component.flattenToString() : intent.getPackage()) + "\nSelector: " + intent.getSelector();
    }

    private static String a(Intent intent, Uri uri, com.applovin.impl.sdk.ad.b bVar, Context context) {
        if ("market".equals(intent.getScheme()) || "play.google.com".equals(uri.getHost())) {
            if (Boolean.FALSE.equals(a(context))) {
                return "com.android.vending";
            }
            return null;
        }
        if ("https".equals(intent.getScheme()) && bVar != null) {
            if (bVar.c1()) {
                String strK = com.applovin.impl.sdk.m.K();
                if (a(strK, context)) {
                    return strK;
                }
            }
            for (String str : bVar.P()) {
                if (a(str, context)) {
                    return str;
                }
            }
        }
        return null;
    }

    private static Map a(Intent intent, Uri uri, com.applovin.impl.sdk.ad.b bVar) {
        Map mapA = j2.a((AppLovinAdImpl) bVar);
        CollectionUtils.putStringIfValid("url", uri.toString(), mapA);
        CollectionUtils.putStringIfValid("details", a(intent), mapA);
        return mapA;
    }

    public static void a(Uri uri, com.applovin.impl.adview.a aVar, com.applovin.impl.sdk.l lVar) {
        com.applovin.impl.adview.b bVarF = aVar.f();
        String queryParameter = uri.getQueryParameter(G5.q);
        if (TextUtils.isEmpty(queryParameter)) {
            lVar.Q();
            if (com.applovin.impl.sdk.p.a()) {
                lVar.Q().b("UriUtils", "Could not find url to load from query in original uri");
            }
            AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.external_redirect_failure"), null);
            return;
        }
        f5 f5VarR0 = lVar.r0();
        e5 e5Var = e5.V;
        String queryParameter2 = (String) f5VarR0.a(e5Var, null);
        if (uri.getQueryParameterNames().contains("browser")) {
            queryParameter2 = uri.getQueryParameter("browser");
            if (TextUtils.isEmpty(queryParameter2)) {
                queryParameter2 = null;
            }
            if (Boolean.parseBoolean(uri.getQueryParameter("retain_browser"))) {
                lVar.r0().b(e5Var, queryParameter2);
            }
        }
        String queryParameter3 = uri.getQueryParameter("load_type");
        if (L1.e.equalsIgnoreCase(queryParameter3)) {
            lVar.Q();
            if (com.applovin.impl.sdk.p.a()) {
                lVar.Q().a("UriUtils", "Loading new page externally: " + queryParameter);
            }
            a(queryParameter, queryParameter2, aVar, lVar);
            return;
        }
        if (TapjoyConstants.LOG_LEVEL_INTERNAL.equalsIgnoreCase(queryParameter3)) {
            lVar.Q();
            if (com.applovin.impl.sdk.p.a()) {
                lVar.Q().a("UriUtils", "Loading new page in WebView: " + queryParameter);
            }
            bVarF.loadUrl(queryParameter);
            String queryParameter4 = uri.getQueryParameter("bg_color");
            if (StringUtils.isValidString(queryParameter4)) {
                bVarF.setBackgroundColor(Color.parseColor(queryParameter4));
                return;
            }
            return;
        }
        if ("in_app".equalsIgnoreCase(queryParameter3)) {
            lVar.Q();
            if (com.applovin.impl.sdk.p.a()) {
                lVar.Q().a("UriUtils", "Loading new page in slide-up webview: " + queryParameter);
            }
            lVar.e().a(new a(queryParameter, aVar, lVar));
            Intent intent = new Intent(com.applovin.impl.sdk.l.p(), (Class<?>) AppLovinWebViewActivity.class);
            intent.putExtra(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, lVar.k0());
            intent.setFlags(268435456);
            com.applovin.impl.sdk.l.p().startActivity(intent);
            return;
        }
        if (!"in_app_v2".equalsIgnoreCase(queryParameter3)) {
            lVar.Q();
            if (com.applovin.impl.sdk.p.a()) {
                lVar.Q().b("UriUtils", "Could not find load type in original uri");
                return;
            }
            return;
        }
        aVar.a(aVar.g(), aVar.i(), null, bVarF.getAndClearLastClickEvent());
        if (aVar.h() != null) {
            lVar.Q();
            if (com.applovin.impl.sdk.p.a()) {
                lVar.Q().a("UriUtils", "Loading new page in Custom Tabs: " + queryParameter);
            }
            lVar.A().a(Uri.parse(queryParameter), aVar, lVar.w0());
            return;
        }
        lVar.Q();
        if (com.applovin.impl.sdk.p.a()) {
            lVar.Q().a("UriUtils", "Custom Tabs not supported, loading new page externally: " + queryParameter);
        }
        a(queryParameter, queryParameter2, aVar, lVar);
    }

    private static void a(Uri uri, com.applovin.impl.sdk.ad.b bVar, Context context, com.applovin.impl.sdk.l lVar) {
        String queryParameter = uri.getQueryParameter("fallback_url");
        if (TextUtils.isEmpty(queryParameter)) {
            lVar.Q();
            if (com.applovin.impl.sdk.p.a()) {
                lVar.Q().b("UriUtils", "Could not find fallback URL to open from query parameters");
                return;
            }
            return;
        }
        lVar.Q();
        if (com.applovin.impl.sdk.p.a()) {
            lVar.Q().a("UriUtils", "Opening fallback URL: " + queryParameter);
        }
        b(Uri.parse(queryParameter), bVar, context, lVar);
    }

    public static void a(Uri uri, com.applovin.impl.sdk.ad.b bVar, AppLovinAdView appLovinAdView, com.applovin.impl.sdk.l lVar) {
        Uri uri2;
        com.applovin.impl.sdk.ad.b bVar2;
        com.applovin.impl.sdk.l lVar2;
        Throwable th;
        p7 p7Var = new p7();
        Context contextA = a(uri.getQueryParameter("context_source"), appLovinAdView, lVar);
        Intent intent = null;
        try {
            p7Var.f(uri.getQueryParameter("identifier")).d(uri.getQueryParameter("action")).a(uri.getQueryParameter("data"), uri.getQueryParameter("type")).b(uri.getQueryParameter("flags")).e(uri.getQueryParameter(HandleInvocationsFromAdViewer.KEY_EXTRAS)).a(uri.getQueryParameter("categories")).a(uri.getQueryParameter("clip_data_uri"), uri.getQueryParameter("clip_data_mime_type"), uri.getQueryParameter("clip_data_label")).h(uri.getQueryParameter("source_bounds")).b(uri.getQueryParameter("component"), uri.getQueryParameter("class_name"), uri.getQueryParameter("package")).g(uri.getQueryParameter("selector_action"));
            if (!(contextA instanceof Activity)) {
                p7Var.b(String.valueOf(268435456));
            }
            Intent intentC = Boolean.parseBoolean(uri.getQueryParameter("use_chooser")) ? p7Var.c(uri.getQueryParameter("chooser_title")) : p7Var.a();
            try {
                lVar.Q();
                if (com.applovin.impl.sdk.p.a()) {
                    lVar.Q().a("UriUtils", "Attempting to launch intent with configuration:\n" + a(intentC));
                }
                if (intentC.resolveActivity(contextA.getPackageManager()) != null) {
                    contextA.startActivity(intentC);
                    lVar.Q();
                    if (com.applovin.impl.sdk.p.a()) {
                        lVar.Q().a("UriUtils", "Successfully launched intent");
                    }
                    AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.custom_intent_launch_success"), null);
                    lVar.g().d(h2.e0, a(intentC, uri, bVar));
                    return;
                }
                lVar.Q();
                if (com.applovin.impl.sdk.p.a()) {
                    lVar.Q().b("UriUtils", "No activity found to handle the intent");
                }
                uri2 = uri;
                bVar2 = bVar;
                lVar2 = lVar;
                try {
                    a("noActivityToHandleIntent", null, uri2, a(intentC, uri, bVar), bVar2, contextA, lVar2);
                } catch (Throwable th2) {
                    th = th2;
                    th = th;
                    intent = intentC;
                    lVar2.Q();
                    if (com.applovin.impl.sdk.p.a()) {
                        lVar2.Q().a("UriUtils", "Exception while launching intent", th);
                    }
                    a("intentLaunchException", th, uri2, a(intent, uri2, bVar2), bVar2, contextA, lVar2);
                }
            } catch (Throwable th3) {
                th = th3;
                uri2 = uri;
                bVar2 = bVar;
                lVar2 = lVar;
            }
        } catch (Throwable th4) {
            uri2 = uri;
            bVar2 = bVar;
            lVar2 = lVar;
            th = th4;
        }
    }

    public static void a(Uri uri, com.applovin.impl.sdk.ad.b bVar, com.applovin.impl.sdk.l lVar) {
        String queryParameter = uri.getQueryParameter(G5.q);
        if (!URLUtil.isValidUrl(queryParameter)) {
            lVar.Q();
            if (com.applovin.impl.sdk.p.a()) {
                lVar.Q().b("UriUtils", "Could not find postback url to fire from query in original uri: " + uri);
                return;
            }
            return;
        }
        String queryParameter2 = uri.getQueryParameter("append_clcode");
        if (queryParameter2 == null || Boolean.parseBoolean(queryParameter2)) {
            queryParameter = StringUtils.appendQueryParameter(queryParameter, "clcode", bVar.getClCode());
        }
        lVar.h0().e(com.applovin.impl.sdk.network.d.b().d(queryParameter).a(false).b(Boolean.parseBoolean(uri.getQueryParameter("fire_from_webview"))).a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(com.applovin.impl.sdk.l lVar, String str, com.applovin.impl.sdk.ad.b bVar) {
        try {
            com.applovin.impl.sdk.n nVarI = lVar.I();
            Context contextP = com.applovin.impl.sdk.l.p();
            String strA = nVarI.a(com.applovin.impl.sdk.l.p(), str, bVar.getCachePrefix(), bVar.V(), true, nVarI.a(str, bVar), (String) null, j2.a((AppLovinAdImpl) bVar));
            if (strA == null) {
                lVar.Q();
                if (com.applovin.impl.sdk.p.a()) {
                    lVar.Q().k("UriUtils", "Failed to cache resource: " + str);
                }
                Map map = CollectionUtils.map("error", "Failed to cache resource");
                map.put("resource_url", str);
                AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.preload_failure"), map);
                return;
            }
            String string = Uri.fromFile(nVarI.a(strA, contextP)).toString();
            lVar.Q();
            if (com.applovin.impl.sdk.p.a()) {
                lVar.Q().a("UriUtils", "Successfully cached resource at: " + string);
            }
            Map map2 = CollectionUtils.map("resource_url", str);
            map2.put("cached_url", string);
            AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.preload_success"), map2);
        } catch (Throwable th) {
            lVar.Q();
            if (com.applovin.impl.sdk.p.a()) {
                lVar.Q().a("UriUtils", "Exception while caching resource", th);
            }
            Map map3 = CollectionUtils.map("url", str);
            map3.putAll(j2.a((AppLovinAdImpl) bVar));
            map3.putAll(j2.a(bVar));
            lVar.E().a("UriUtils", "handlePreload", th, map3);
            Map map4 = CollectionUtils.map("error", "Internal error while caching");
            map4.put("resource_url", str);
            AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.preload_failure"), map4);
        }
    }

    private static void a(String str, String str2, com.applovin.impl.adview.a aVar, com.applovin.impl.sdk.l lVar) {
        a(Uri.parse(str), str2, aVar.g(), aVar.f().getContext(), lVar);
        x2.b(aVar.e(), aVar.g(), aVar.i());
    }

    private static void a(String str, Throwable th, Uri uri, Map map, com.applovin.impl.sdk.ad.b bVar, Context context, com.applovin.impl.sdk.l lVar) {
        AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.custom_intent_launch_failure"), null);
        HashMap map2 = new HashMap(map);
        if (th != null) {
            lVar.E().a("UriUtils", "launchCustomIntent", th, map);
            CollectionUtils.putStringIfValid("top_main_method", th.toString(), map2);
        }
        CollectionUtils.putStringIfValid("source", str, map2);
        lVar.g().d(h2.f0, map2);
        a(uri, bVar, context, lVar);
    }

    public static boolean a(Uri uri) {
        return uri != null && "applovin".equalsIgnoreCase(uri.getScheme()) && "com.applovin.sdk".equalsIgnoreCase(uri.getHost()) && "/adservice/deeplink".equals(uri.getPath());
    }

    public static boolean a(Uri uri, Context context, com.applovin.impl.sdk.l lVar) {
        return b(uri, null, context, lVar);
    }

    public static boolean a(Uri uri, String str, com.applovin.impl.sdk.ad.b bVar, Context context, com.applovin.impl.sdk.l lVar) {
        String strDefaultIfEmpty = null;
        boolean z = false;
        if (uri == null) {
            AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.external_redirect_failure"), null);
            return false;
        }
        try {
            lVar.Q();
            if (com.applovin.impl.sdk.p.a()) {
                lVar.Q().d("UriUtils", "Opening URI: " + uri);
            }
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            if (!(context instanceof Activity)) {
                intent.setFlags(268435456);
            }
            strDefaultIfEmpty = StringUtils.defaultIfEmpty(str, a(intent, uri, bVar, context));
            intent.setPackage(strDefaultIfEmpty);
            lVar.o0().pauseForClick();
            context.startActivity(intent);
            z = true;
        } catch (Throwable th) {
            lVar.Q();
            if (com.applovin.impl.sdk.p.a()) {
                lVar.Q().a("UriUtils", "Unable to open \"" + uri + "\".", th);
            }
            HashMap<String, String> mapHashMap = CollectionUtils.hashMap("url", uri.toString());
            mapHashMap.put("name", strDefaultIfEmpty);
            if (bVar != null) {
                mapHashMap.putAll(j2.a((AppLovinAdImpl) bVar));
                mapHashMap.putAll(j2.a(bVar));
            }
            if ("play.google.com".equals(uri.getHost())) {
                CollectionUtils.putStringIfValid("details", (String) lVar.B().O().get("ps_version"), mapHashMap);
            }
            lVar.E().a("UriUtils", "openUri", th, mapHashMap);
        }
        if (!z) {
            lVar.o0().resumeForClick();
        }
        AppLovinBroadcastManager.sendBroadcast(new Intent(z ? "com.applovin.external_redirect_success" : "com.applovin.external_redirect_failure"), CollectionUtils.map("url", uri));
        return z;
    }

    private static boolean a(String str, Context context) {
        return (TextUtils.isEmpty(str) || context.getPackageManager().getLaunchIntentForPackage(str) == null) ? false : true;
    }

    public static void b(Uri uri, final com.applovin.impl.sdk.ad.b bVar, final com.applovin.impl.sdk.l lVar) {
        final String queryParameter = uri.getQueryParameter("url");
        if (!StringUtils.isValidString(queryParameter)) {
            lVar.Q();
            if (com.applovin.impl.sdk.p.a()) {
                lVar.Q().b("UriUtils", "Could not find resource URL to preload from query parameters");
            }
            AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.preload_failure"), CollectionUtils.map("error", "Invalid URL"));
            return;
        }
        if (bVar != null) {
            lVar.Q();
            if (com.applovin.impl.sdk.p.a()) {
                lVar.Q().a("UriUtils", "Attempting to preload resource: " + queryParameter);
            }
            lVar.s0().a((n5) new x6(lVar, false, "preloadResource", new Runnable() { // from class: com.applovin.impl.q7$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    q7.a(lVar, queryParameter, bVar);
                }
            }), i6.b.CACHING);
            return;
        }
        lVar.Q();
        if (com.applovin.impl.sdk.p.a()) {
            lVar.Q().b("UriUtils", "Cannot preload resource: ad is null");
        }
        Map map = CollectionUtils.map("error", "Invalid ad reference");
        map.put("resource_url", queryParameter);
        AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.preload_failure"), map);
    }

    public static boolean b(Uri uri, com.applovin.impl.sdk.ad.b bVar, Context context, com.applovin.impl.sdk.l lVar) {
        return a(uri, null, bVar, context, lVar);
    }

    public static void c(Uri uri, com.applovin.impl.sdk.ad.b bVar, com.applovin.impl.sdk.l lVar) {
        String strEmptyIfNull = StringUtils.emptyIfNull(uri.getQueryParameter("error"));
        String strEmptyIfNull2 = StringUtils.emptyIfNull(uri.getQueryParameter("exception"));
        String strEmptyIfNull3 = StringUtils.emptyIfNull(uri.getQueryParameter("details"));
        HashMap<String, String> mapHashMap = CollectionUtils.hashMap("source", strEmptyIfNull);
        CollectionUtils.putStringIfValid("top_main_method", strEmptyIfNull2, mapHashMap);
        CollectionUtils.putStringIfValid("details", strEmptyIfNull3, mapHashMap);
        if (bVar != null) {
            mapHashMap.putAll(j2.a((AppLovinAdImpl) bVar));
            mapHashMap.putAll(j2.a(bVar));
        }
        lVar.E().d(h2.o1, mapHashMap);
    }
}
