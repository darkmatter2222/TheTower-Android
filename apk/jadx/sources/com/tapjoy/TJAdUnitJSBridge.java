package com.tapjoy;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Pair;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.ironsource.C3510b4;
import com.tapjoy.TJAdUnitConstants;
import com.tapjoy.TapjoyLog;
import com.tapjoy.internal.ce;
import com.tapjoy.internal.es;
import com.tapjoy.internal.ga;
import com.unity3d.services.core.device.MimeTypes;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class TJAdUnitJSBridge implements TJWebViewJSInterfaceListener {
    public TJAdUnit a;
    public boolean allowRedirect;
    public WebView b;
    final ConcurrentLinkedQueue<Pair<String, JSONObject>> c;
    public boolean closeRequested;
    public boolean customClose;
    private TJWebViewJSInterface d;
    public boolean didLaunchOtherActivity;
    private TJAdUnitJSBridge e;
    private Context f;
    private TJAdUnitActivity g;
    private TJSplitWebView h;
    private ProgressDialog i;
    private View j;
    private boolean k;
    private es l;
    public String otherActivityCallbackID;
    public String splitWebViewCallbackID;

    public interface AdUnitAsyncTaskListner {
        void onComplete(boolean z);
    }

    class a extends AsyncTask<Boolean, Void, Boolean[]> {
        WebView a;

        public a(WebView webView) {
            this.a = webView;
        }

        @Override // android.os.AsyncTask
        protected final /* bridge */ /* synthetic */ Boolean[] doInBackground(Boolean[] boolArr) {
            return boolArr;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Boolean[] boolArr) {
            Boolean[] boolArr2 = boolArr;
            final boolean zBooleanValue = boolArr2[0].booleanValue();
            final boolean zBooleanValue2 = boolArr2[1].booleanValue();
            if (TJAdUnitJSBridge.this.f instanceof Activity) {
                TapjoyUtil.runOnMainThread(new Runnable() { // from class: com.tapjoy.TJAdUnitJSBridge.a.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (!zBooleanValue) {
                            a.this.a.setVisibility(4);
                            if (a.this.a.getParent() instanceof RelativeLayout) {
                                ((RelativeLayout) a.this.a.getParent()).getBackground().setAlpha(0);
                                ((RelativeLayout) a.this.a.getParent()).setBackgroundColor(0);
                                return;
                            }
                            return;
                        }
                        a.this.a.setVisibility(0);
                        if (zBooleanValue2) {
                            if (a.this.a.getParent() instanceof RelativeLayout) {
                                ((RelativeLayout) a.this.a.getParent()).getBackground().setAlpha(0);
                                ((RelativeLayout) a.this.a.getParent()).setBackgroundColor(0);
                            }
                            a.this.a.setLayerType(1, null);
                            return;
                        }
                        if (a.this.a.getParent() instanceof RelativeLayout) {
                            ((RelativeLayout) a.this.a.getParent()).getBackground().setAlpha(255);
                            ((RelativeLayout) a.this.a.getParent()).setBackgroundColor(-1);
                        }
                        a.this.a.setLayerType(0, null);
                    }
                });
            } else {
                TapjoyLog.e("TJAdUnitJSBridge", "Unable to present offerwall. No Activity context provided.");
            }
        }
    }

    public TJAdUnitJSBridge(Context context, WebView webView) {
        this.j = null;
        this.didLaunchOtherActivity = false;
        this.allowRedirect = true;
        this.otherActivityCallbackID = null;
        this.customClose = false;
        this.closeRequested = false;
        this.splitWebViewCallbackID = null;
        this.l = new es(this);
        this.c = new ConcurrentLinkedQueue<>();
        TapjoyLog.i("TJAdUnitJSBridge", "creating AdUnit/JS Bridge");
        this.f = context;
        this.b = webView;
        this.e = this;
        if (webView == null) {
            TapjoyLog.e("TJAdUnitJSBridge", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.SDK_ERROR, "Cannot create AdUnitJSBridge -- webview is NULL"));
            return;
        }
        TJWebViewJSInterface tJWebViewJSInterface = new TJWebViewJSInterface(this.b, this);
        this.d = tJWebViewJSInterface;
        this.b.addJavascriptInterface(tJWebViewJSInterface, TJAdUnitConstants.JAVASCRIPT_INTERFACE_ID);
        setEnabled(true);
    }

    public TJAdUnitJSBridge(Context context, TJAdUnit tJAdUnit) {
        this(context, tJAdUnit.getWebView());
        this.a = tJAdUnit;
    }

    public void alert(JSONObject jSONObject, final String str) {
        String str2;
        JSONArray jSONArray;
        String string;
        int i;
        TapjoyLog.d("TJAdUnitJSBridge", "alert_method: ".concat(String.valueOf(jSONObject)));
        String string2 = "";
        try {
            string = jSONObject.getString("title");
            try {
                string2 = jSONObject.getString(TJAdUnitConstants.String.MESSAGE);
                jSONArray = jSONObject.getJSONArray(TJAdUnitConstants.String.BUTTONS);
            } catch (Exception e) {
                e = e;
                str2 = string2;
                string2 = string;
                invokeJSCallback(str, Boolean.FALSE);
                e.printStackTrace();
                jSONArray = null;
                String str3 = str2;
                string = string2;
                string2 = str3;
            }
        } catch (Exception e2) {
            e = e2;
            str2 = "";
        }
        TJAdUnitActivity tJAdUnitActivity = this.g;
        if (tJAdUnitActivity == null) {
            TapjoyLog.d("TJAdUnitJSBridge", "Cannot alert -- TJAdUnitActivity is null");
            return;
        }
        AlertDialog alertDialogCreate = new AlertDialog.Builder(tJAdUnitActivity, R.style.Theme.Material.Light.Dialog.Alert).setTitle(string).setMessage(string2).create();
        if (jSONArray == null || jSONArray.length() == 0) {
            invokeJSCallback(str, Boolean.FALSE);
            return;
        }
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < jSONArray.length()) {
            if (i2 != 0) {
                i = i2 != 1 ? -1 : -3;
            } else {
                i = -2;
            }
            try {
                arrayList.add(jSONArray.getString(i2));
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            alertDialogCreate.setButton(i, (CharSequence) arrayList.get(i2), new DialogInterface.OnClickListener() { // from class: com.tapjoy.TJAdUnitJSBridge.1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i3) {
                    int i4;
                    if (i3 != -3) {
                        i4 = 0;
                        if (i3 != -2 && i3 == -1) {
                            i4 = 2;
                        }
                    } else {
                        i4 = 1;
                    }
                    try {
                        TJAdUnitJSBridge.this.invokeJSCallback(str, Integer.valueOf(i4));
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
            });
            i2++;
        }
        alertDialogCreate.setCancelable(false);
        alertDialogCreate.setCanceledOnTouchOutside(false);
        alertDialogCreate.show();
    }

    public void attachVolumeListener(JSONObject jSONObject, String str) {
        try {
            boolean z = jSONObject.getBoolean(TJAdUnitConstants.String.ATTACH);
            int iOptInt = jSONObject.optInt(TJAdUnitConstants.String.INTERVAL, 500);
            if (iOptInt > 0) {
                this.a.attachVolumeListener(z, iOptInt);
                invokeJSCallback(str, Boolean.TRUE);
            } else {
                TapjoyLog.d("TJAdUnitJSBridge", "Invalid `interval` value passed to attachVolumeListener(): interval=".concat(String.valueOf(iOptInt)));
                invokeJSCallback(str, Boolean.FALSE);
            }
        } catch (Exception e) {
            TapjoyLog.d("TJAdUnitJSBridge", "attachVolumeListener exception " + e.toString());
            invokeJSCallback(str, Boolean.FALSE);
            e.printStackTrace();
        }
    }

    public void cacheAsset(JSONObject jSONObject, String str) {
        String string;
        Long lValueOf = 0L;
        try {
            String string2 = jSONObject.getString("url");
            try {
                string = jSONObject.getString(TapjoyConstants.TJC_PLACEMENT_OFFER_ID);
            } catch (Exception unused) {
                string = "";
            }
            try {
                lValueOf = Long.valueOf(jSONObject.getLong(TapjoyConstants.TJC_TIME_TO_LIVE));
            } catch (Exception unused2) {
            }
            if (TapjoyCache.getInstance() != null) {
                invokeJSCallback(str, TapjoyCache.getInstance().cacheAssetFromURL(string2, string, lValueOf.longValue()));
            } else {
                invokeJSCallback(str, Boolean.FALSE);
            }
        } catch (Exception unused3) {
            TapjoyLog.w("TJAdUnitJSBridge", "Unable to cache video. Invalid parameters.");
            invokeJSCallback(str, Boolean.FALSE);
        }
    }

    public void cachePathForURL(JSONObject jSONObject, String str) {
        try {
            String string = jSONObject.getString("url");
            if (TapjoyCache.getInstance() != null) {
                invokeJSCallback(str, TapjoyCache.getInstance().getPathOfCachedURL(string));
            } else {
                invokeJSCallback(str, "");
            }
        } catch (Exception unused) {
            invokeJSCallback(str, "");
        }
    }

    public void cleanUpJSBridge() {
        TJWebViewJSInterface tJWebViewJSInterface = this.d;
        if (tJWebViewJSInterface != null) {
            if (tJWebViewJSInterface.a != null) {
                this.d.a.removeAllViews();
                this.d.a.destroy();
                this.d.a = null;
            }
            this.d = null;
        }
    }

    public void clearCache(JSONObject jSONObject, String str) {
        if (TapjoyCache.getInstance() == null) {
            invokeJSCallback(str, Boolean.FALSE);
        } else {
            TapjoyCache.getInstance().clearTapjoyCache();
            invokeJSCallback(str, Boolean.TRUE);
        }
    }

    public void clearLoggingLevel(JSONObject jSONObject, String str) {
        TapjoyAppSettings.getInstance().clearLoggingLevel();
    }

    public void clearVideo(JSONObject jSONObject, final String str) {
        if (this.a != null) {
            this.a.clearVideo(new AdUnitAsyncTaskListner() { // from class: com.tapjoy.TJAdUnitJSBridge.10
                @Override // com.tapjoy.TJAdUnitJSBridge.AdUnitAsyncTaskListner
                public final void onComplete(boolean z) {
                    TJAdUnitJSBridge.this.invokeJSCallback(str, Boolean.valueOf(z));
                }
            }, jSONObject.optBoolean(TJAdUnitConstants.String.VISIBLE, false));
        }
    }

    public void closeRequested(Boolean bool) {
        TJSplitWebView tJSplitWebView = this.h;
        if (tJSplitWebView != null) {
            if (tJSplitWebView.goBack()) {
                return;
            }
            this.h.a();
        } else {
            this.closeRequested = true;
            HashMap map = new HashMap();
            map.put("forceClose", bool);
            invokeJSAdunitMethod(TJAdUnitConstants.String.CLOSE_REQUESTED, map);
        }
    }

    public void contentReady(JSONObject jSONObject, String str) {
        TJAdUnit tJAdUnit = this.a;
        if (tJAdUnit == null) {
            invokeJSCallback(str, Boolean.FALSE);
        } else {
            tJAdUnit.fireContentReady();
            invokeJSCallback(str, Boolean.TRUE);
        }
    }

    public void destroy() {
    }

    public void dismiss(JSONObject jSONObject, String str) {
        TJAdUnitActivity tJAdUnitActivity = this.g;
        if (tJAdUnitActivity != null) {
            invokeJSCallback(str, Boolean.TRUE);
            tJAdUnitActivity.finish();
        } else {
            TapjoyLog.d("TJAdUnitJSBridge", "Cannot dismiss -- TJAdUnitActivity is null");
            invokeJSCallback(str, Boolean.FALSE);
        }
    }

    public void dismissSplitView(JSONObject jSONObject, final String str) {
        TapjoyUtil.runOnMainThread(new Runnable() { // from class: com.tapjoy.TJAdUnitJSBridge.4
            @Override // java.lang.Runnable
            public final void run() {
                if (TJAdUnitJSBridge.this.h == null) {
                    String str2 = str;
                    if (str2 != null) {
                        TJAdUnitJSBridge.this.invokeJSCallback(str2, Boolean.FALSE);
                        return;
                    }
                    return;
                }
                String str3 = str;
                if (str3 != null) {
                    TJAdUnitJSBridge.this.invokeJSCallback(str3, Boolean.TRUE);
                }
                if (TJAdUnitJSBridge.this.splitWebViewCallbackID != null) {
                    TJAdUnitJSBridge tJAdUnitJSBridge = TJAdUnitJSBridge.this;
                    tJAdUnitJSBridge.invokeJSCallback(tJAdUnitJSBridge.splitWebViewCallbackID, Boolean.TRUE);
                    TJAdUnitJSBridge.this.splitWebViewCallbackID = null;
                }
                ((ViewGroup) TJAdUnitJSBridge.this.h.getParent()).removeView(TJAdUnitJSBridge.this.h);
                TJAdUnitJSBridge.this.h = null;
            }
        });
    }

    public void dismissStoreView(JSONObject jSONObject, String str) {
        dismissSplitView(jSONObject, str);
    }

    public void display() {
        invokeJSAdunitMethod("display", new Object[0]);
    }

    public void displayStoreURL(JSONObject jSONObject, String str) {
        displayURL(jSONObject, str);
    }

    public void displayURL(final JSONObject jSONObject, final String str) {
        Exception exc;
        final String strOptString;
        final String str2;
        try {
            String strOptString2 = jSONObject.optString(TJAdUnitConstants.String.STYLE);
            final String string = jSONObject.getString("url");
            final JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(TJAdUnitConstants.String.SPLIT_VIEW_LAYOUT);
            final JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(TJAdUnitConstants.String.SPLIT_VIEW_EXIT_HOSTS);
            final String strOptString3 = jSONObject.optString(TJAdUnitConstants.String.USER_AGENT, null);
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(TJAdUnitConstants.String.SPLIT_VIEW_TRIGGER);
            if (jSONObjectOptJSONObject2 != null) {
                try {
                    String strOptString4 = jSONObjectOptJSONObject2.optString("on", null);
                    strOptString = jSONObjectOptJSONObject2.optString("to", null);
                    str2 = strOptString4;
                } catch (Exception e) {
                    exc = e;
                }
            } else {
                str2 = null;
                strOptString = null;
            }
            try {
                if (TJAdUnitConstants.String.STYLE_SPLIT.equals(strOptString2)) {
                    TapjoyUtil.runOnMainThread(new Runnable() { // from class: com.tapjoy.TJAdUnitJSBridge.6
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (TJAdUnitJSBridge.this.b != null) {
                                if (TJAdUnitJSBridge.this.h == null) {
                                    ViewParent parent = TJAdUnitJSBridge.this.b.getParent();
                                    if (parent instanceof ViewGroup) {
                                        ViewGroup viewGroup = (ViewGroup) parent;
                                        TJAdUnitJSBridge.this.h = new TJSplitWebView(TJAdUnitJSBridge.this.g, jSONObject, TJAdUnitJSBridge.this);
                                        viewGroup.addView(TJAdUnitJSBridge.this.h, new RelativeLayout.LayoutParams(-1, -1));
                                        TJAdUnitJSBridge.this.h.animateOpen(viewGroup);
                                    }
                                } else if (TJAdUnitJSBridge.this.h != null) {
                                    TJAdUnitJSBridge.this.h.setExitHosts(jSONArrayOptJSONArray);
                                    TJAdUnitJSBridge.this.h.applyLayoutOption(jSONObjectOptJSONObject);
                                }
                                if (TJAdUnitJSBridge.this.h != null) {
                                    if (strOptString3 != null) {
                                        TJAdUnitJSBridge.this.h.setUserAgent(strOptString3);
                                    }
                                    TJAdUnitJSBridge.this.h.setTrigger(str2, strOptString);
                                    TJAdUnitJSBridge.this.splitWebViewCallbackID = str;
                                    try {
                                        TJAdUnitJSBridge.this.h.loadUrl(string);
                                        return;
                                    } catch (Exception e2) {
                                        TapjoyLog.w("TJAdUnitJSBridge", e2.getMessage());
                                        return;
                                    }
                                }
                            }
                            TJAdUnitJSBridge.this.h = null;
                            TJAdUnitJSBridge.this.splitWebViewCallbackID = null;
                            TJAdUnitJSBridge.this.invokeJSCallback(str, Boolean.FALSE);
                        }
                    });
                    return;
                }
                this.didLaunchOtherActivity = true;
                this.otherActivityCallbackID = str;
                this.f.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(string)));
                return;
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Exception e3) {
            e = e3;
        }
        exc = e;
        invokeJSCallback(str, Boolean.TRUE);
        exc.printStackTrace();
    }

    public void displayVideo(JSONObject jSONObject, final String str) {
        try {
            String string = jSONObject.getString("url");
            if (string.length() <= 0 || string == "") {
                invokeJSCallback(str, Boolean.FALSE);
            } else {
                this.a.loadVideoUrl(string, new AdUnitAsyncTaskListner() { // from class: com.tapjoy.TJAdUnitJSBridge.9
                    @Override // com.tapjoy.TJAdUnitJSBridge.AdUnitAsyncTaskListner
                    public final void onComplete(boolean z) {
                        TJAdUnitJSBridge.this.invokeJSCallback(str, Boolean.valueOf(z));
                    }
                });
            }
        } catch (Exception e) {
            invokeJSCallback(str, Boolean.FALSE);
            e.printStackTrace();
        }
    }

    public void endUsageTrackingEvent(JSONObject jSONObject, String str) {
        try {
            String string = jSONObject.getString("name");
            if (string.isEmpty()) {
                TapjoyLog.d("TJAdUnitJSBridge", "Empty name for endUsageTrackingEvent");
                invokeJSCallback(str, Boolean.FALSE);
                return;
            }
            TJAdUnit tJAdUnit = this.a;
            if (tJAdUnit != null) {
                tJAdUnit.endAdContentTracking(string, jSONObject);
                invokeJSCallback(str, Boolean.TRUE);
                return;
            }
            invokeJSCallback(str, Boolean.FALSE);
        } catch (JSONException e) {
            TapjoyLog.w("TJAdUnitJSBridge", "Unable to endUsageTrackingEvent. Invalid parameters: ".concat(String.valueOf(e)));
        }
    }

    public void flushBacklogMessageQueue() {
        while (true) {
            Pair<String, JSONObject> pairPoll = this.c.poll();
            if (pairPoll == null) {
                return;
            } else {
                onDispatchMethod((String) pairPoll.first, (JSONObject) pairPoll.second);
            }
        }
    }

    public void flushMessageQueue() {
        TJWebViewJSInterface tJWebViewJSInterface = this.d;
        if (tJWebViewJSInterface == null) {
            return;
        }
        tJWebViewJSInterface.flushMessageQueue();
    }

    public void getCachedAssets(JSONObject jSONObject, String str) {
        if (TapjoyCache.getInstance() != null) {
            invokeJSCallback(str, TapjoyCache.getInstance().cachedAssetsToJSON());
        } else {
            invokeJSCallback(str, "");
        }
    }

    public void getOrientation(JSONObject jSONObject, String str) {
        TJAdUnit tJAdUnit = this.a;
        if (tJAdUnit == null) {
            TapjoyLog.d("TJAdUnitJSBridge", "No ad unit provided");
            invokeJSCallback(str, JSONObject.NULL);
            return;
        }
        String screenOrientationString = tJAdUnit.getScreenOrientationString();
        HashMap map = new HashMap();
        map.put("orientation", screenOrientationString);
        map.put("width", Integer.valueOf(this.a.getScreenWidth()));
        map.put("height", Integer.valueOf(this.a.getScreenHeight()));
        invokeJSCallback(str, map);
    }

    public void getSplitViewURL(JSONObject jSONObject, final String str) {
        TapjoyUtil.runOnMainThread(new Runnable() { // from class: com.tapjoy.TJAdUnitJSBridge.5
            @Override // java.lang.Runnable
            public final void run() {
                if (TJAdUnitJSBridge.this.h == null) {
                    TJAdUnitJSBridge.this.invokeJSCallback(str, JSONObject.NULL);
                } else {
                    TJAdUnitJSBridge tJAdUnitJSBridge = TJAdUnitJSBridge.this;
                    tJAdUnitJSBridge.invokeJSCallback(str, tJAdUnitJSBridge.h.getLastUrl());
                }
            }
        });
    }

    public void getVolume(JSONObject jSONObject, String str) {
        HashMap<String, Object> volumeArgs = getVolumeArgs();
        if (volumeArgs != null) {
            invokeJSCallback(str, volumeArgs);
        } else {
            invokeJSCallback(str, Boolean.FALSE);
        }
    }

    public HashMap<String, Object> getVolumeArgs() {
        TJAdUnit tJAdUnit = this.a;
        if (tJAdUnit == null) {
            TapjoyLog.d("TJAdUnitJSBridge", "No ad unit provided");
            return null;
        }
        String str = String.format("%.2f", Float.valueOf(tJAdUnit.getVolume()));
        boolean zIsMuted = this.a.isMuted();
        TapjoyLog.d("TJAdUnitJSBridge", "getVolumeArgs: volume=" + str + "; isMuted=" + zIsMuted);
        HashMap<String, Object> map = new HashMap<>();
        map.put(TJAdUnitConstants.String.CURRENT_VOLUME, str);
        map.put(TJAdUnitConstants.String.IS_MUTED, Boolean.valueOf(zIsMuted));
        return map;
    }

    public void hasSplitView(JSONObject jSONObject, final String str) {
        TapjoyUtil.runOnMainThread(new Runnable() { // from class: com.tapjoy.TJAdUnitJSBridge.3
            @Override // java.lang.Runnable
            public final void run() {
                if (TJAdUnitJSBridge.this.h != null) {
                    TJAdUnitJSBridge.this.invokeJSCallback(str, Boolean.TRUE);
                } else {
                    TJAdUnitJSBridge.this.invokeJSCallback(str, Boolean.FALSE);
                }
            }
        });
    }

    public void initMoatVideoTracker(JSONObject jSONObject, String str) {
        invokeJSCallback(str, Boolean.TRUE);
    }

    public void initViewabilityTracker(final JSONObject jSONObject, final String str) {
        final es esVar = this.l;
        if (!esVar.a(jSONObject)) {
            esVar.a.invokeJSCallback(str, Boolean.FALSE);
            return;
        }
        es.b(jSONObject);
        if (TextUtils.isEmpty(es.b)) {
            esVar.a.invokeJSCallback(str, Boolean.FALSE);
        } else {
            TapjoyUtil.runOnMainThread(new Runnable() { // from class: com.tapjoy.internal.es.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        if (!ce.b()) {
                            ce.a(es.this.a.b.getContext());
                        }
                        if (!ce.b()) {
                            TapjoyLog.d("TJOMViewabilityAgent", "Failed to initialize");
                            es.this.a.invokeJSCallback(str, Boolean.FALSE);
                            return;
                        }
                        TapjoyLog.d("TJOMViewabilityAgent", "initialized");
                        List listB = es.b(jSONObject.optJSONArray(TJAdUnitConstants.String.VENDORS));
                        cv cvVar = es.this.e;
                        String str2 = es.b;
                        dq.a(cvVar, "Partner is null");
                        dq.a((Object) str2, "OM SDK JS script content is null");
                        dq.a(listB, "VerificationScriptResources is null");
                        if ("".length() > 256) {
                            throw new IllegalArgumentException("CustomReferenceData is greater than 256 characters");
                        }
                        co coVar = new co(cvVar, str2, listB, "", "", cp.NATIVE);
                        cq cqVar = cq.VIDEO;
                        ct ctVar = ct.BEGIN_TO_RENDER;
                        cu cuVar = cu.NATIVE;
                        dq.a(cqVar, "CreativeType is null");
                        dq.a(ctVar, "ImpressionType is null");
                        dq.a(cuVar, "Impression owner is null");
                        if (cuVar == cu.NONE) {
                            throw new IllegalArgumentException("Impression owner is none");
                        }
                        if (cqVar == cq.DEFINED_BY_JAVASCRIPT && cuVar == cu.NATIVE) {
                            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
                        }
                        if (ctVar == ct.DEFINED_BY_JAVASCRIPT && cuVar == cu.NATIVE) {
                            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
                        }
                        cn cnVar = new cn(cqVar, ctVar, cuVar, cuVar);
                        es esVar2 = es.this;
                        if (!ce.b()) {
                            throw new IllegalStateException("Method called before OM SDK activation");
                        }
                        dq.a(cnVar, "AdSessionConfiguration is null");
                        dq.a(coVar, "AdSessionContext is null");
                        esVar2.d = new cx(cnVar, coVar);
                        es.this.d.a(es.this.a.a.getWebView());
                        es esVar3 = es.this;
                        cm cmVar = esVar3.d;
                        cx cxVar = (cx) cmVar;
                        dq.a(cmVar, "AdSession is null");
                        if (cu.NATIVE != cxVar.a.b) {
                            throw new IllegalStateException("Cannot create MediaEvents for JavaScript AdSession");
                        }
                        if (cxVar.d) {
                            throw new IllegalStateException("AdSession is started");
                        }
                        dq.a(cxVar);
                        if (cxVar.c.b != null) {
                            throw new IllegalStateException("MediaEvents already exists for AdSession");
                        }
                        cz czVar = new cz(cxVar);
                        cxVar.c.b = czVar;
                        esVar3.f = czVar;
                        es esVar4 = es.this;
                        cm cmVar2 = esVar4.d;
                        cx cxVar2 = (cx) cmVar2;
                        dq.a(cmVar2, "AdSession is null");
                        if (cxVar2.c.a != null) {
                            throw new IllegalStateException("AdEvents already exists for AdSession");
                        }
                        dq.a(cxVar2);
                        cl clVar = new cl(cxVar2);
                        cxVar2.c.a = clVar;
                        esVar4.c = clVar;
                        es.this.a.invokeJSCallback(str, Boolean.TRUE);
                    } catch (Exception e) {
                        TapjoyLog.d("TJOMViewabilityAgent", "Failed to init with exception: " + e.getMessage());
                        es.this.a.invokeJSCallback(str, Boolean.FALSE);
                    }
                }
            });
        }
    }

    public void invokeJSAdunitMethod(String str, Map<String, Object> map) {
        TJWebViewJSInterface tJWebViewJSInterface = this.d;
        if (tJWebViewJSInterface != null) {
            tJWebViewJSInterface.callback(map, str, (String) null);
        }
    }

    public void invokeJSAdunitMethod(String str, Object... objArr) {
        ArrayList<?> arrayList = new ArrayList<>(Arrays.asList(objArr));
        TJWebViewJSInterface tJWebViewJSInterface = this.d;
        if (tJWebViewJSInterface != null) {
            tJWebViewJSInterface.callback(arrayList, str, (String) null);
        }
    }

    public void invokeJSCallback(String str, Map<String, Object> map) {
        this.d.callback(map, "", str);
    }

    public void invokeJSCallback(String str, Object... objArr) {
        if (TextUtils.isEmpty(str)) {
            TapjoyLog.d("TJAdUnitJSBridge", "invokeJSCallback -- no callbackID provided");
            return;
        }
        ArrayList<?> arrayList = new ArrayList<>(Arrays.asList(objArr));
        TJWebViewJSInterface tJWebViewJSInterface = this.d;
        if (tJWebViewJSInterface != null) {
            tJWebViewJSInterface.callback(arrayList, "", str);
        }
    }

    public void isNetworkAvailable(JSONObject jSONObject, String str) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f.getSystemService("connectivity")).getActiveNetworkInfo();
            invokeJSCallback(str, Boolean.valueOf(activeNetworkInfo != null && activeNetworkInfo.isAvailable() && activeNetworkInfo.isConnected()));
        } catch (Exception unused) {
            invokeJSCallback(str, Boolean.FALSE);
        }
    }

    public void log(JSONObject jSONObject, String str) {
        try {
            TapjoyLog.d("TJAdUnitJSBridge", "Logging message=" + jSONObject.getString(TJAdUnitConstants.String.MESSAGE));
            invokeJSCallback(str, Boolean.TRUE);
        } catch (Exception e) {
            invokeJSCallback(str, Boolean.FALSE);
            e.printStackTrace();
        }
    }

    public void nativeEval(final JSONObject jSONObject, final String str) {
        TapjoyUtil.runOnMainThread(new Runnable() { // from class: com.tapjoy.TJAdUnitJSBridge.12
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    TJAdUnitJSBridge.this.b.evaluateJavascript(jSONObject.getString("command"), null);
                    TJAdUnitJSBridge.this.invokeJSCallback(str, Boolean.TRUE);
                } catch (Exception unused) {
                    TJAdUnitJSBridge.this.invokeJSCallback(str, Boolean.FALSE);
                }
            }
        });
    }

    public void notifyOrientationChanged(String str, int i, int i2) {
        HashMap map = new HashMap();
        map.put("orientation", str);
        map.put("width", Integer.valueOf(i));
        map.put("height", Integer.valueOf(i2));
        invokeJSAdunitMethod(TJAdUnitConstants.String.ORIENTATION_CHANGED_EVENT, map);
    }

    @Override // com.tapjoy.TJWebViewJSInterfaceListener
    public void onDispatchMethod(String str, JSONObject jSONObject) {
        if (!this.k) {
            TapjoyLog.d("TJAdUnitJSBridge", "Bridge currently disabled. Adding " + str + " to message queue");
            this.c.add(new Pair<>(str, jSONObject));
            return;
        }
        String strOptString = null;
        try {
            strOptString = jSONObject.optString(TJAdUnitConstants.String.CALLBACK_ID, null);
            JSONObject jSONObject2 = jSONObject.getJSONObject("data");
            Method method = TJAdUnitJSBridge.class.getMethod(str, JSONObject.class, String.class);
            TapjoyLog.d("TJAdUnitJSBridge", "Dispatching method: " + method + " with data=" + jSONObject2 + "; callbackID=" + strOptString);
            if (this.d == null) {
                return;
            }
            method.invoke(this.e, jSONObject2, strOptString);
        } catch (Exception e) {
            e.printStackTrace();
            invokeJSCallback(strOptString, Boolean.FALSE);
        }
    }

    public void onVideoCompletion() {
        HashMap map = new HashMap();
        map.put(TJAdUnitConstants.String.VIDEO_EVENT_NAME, TJAdUnitConstants.String.VIDEO_COMPLETE_EVENT);
        invokeJSAdunitMethod(TJAdUnitConstants.String.VIDEO_EVENT, map);
    }

    public void onVideoError(String str) {
        HashMap map = new HashMap();
        map.put(TJAdUnitConstants.String.VIDEO_EVENT_NAME, TJAdUnitConstants.String.VIDEO_ERROR_EVENT);
        map.put("error", str);
        invokeJSAdunitMethod(TJAdUnitConstants.String.VIDEO_EVENT, map);
    }

    public void onVideoInfo(String str) {
        HashMap map = new HashMap();
        map.put(TJAdUnitConstants.String.VIDEO_EVENT_NAME, TJAdUnitConstants.String.VIDEO_INFO_EVENT);
        map.put(TJAdUnitConstants.String.VIDEO_INFO, str);
        invokeJSAdunitMethod(TJAdUnitConstants.String.VIDEO_EVENT, map);
    }

    public void onVideoPaused(int i) {
        HashMap map = new HashMap();
        map.put(TJAdUnitConstants.String.VIDEO_EVENT_NAME, TJAdUnitConstants.String.VIDEO_PAUSE_EVENT);
        map.put(TJAdUnitConstants.String.VIDEO_CURRENT_TIME, Integer.valueOf(i));
        invokeJSAdunitMethod(TJAdUnitConstants.String.VIDEO_EVENT, map);
    }

    public void onVideoProgress(int i) {
        HashMap map = new HashMap();
        map.put(TJAdUnitConstants.String.VIDEO_EVENT_NAME, TJAdUnitConstants.String.VIDEO_PROGRESS_EVENT);
        map.put(TJAdUnitConstants.String.VIDEO_CURRENT_TIME, Integer.valueOf(i));
        invokeJSAdunitMethod(TJAdUnitConstants.String.VIDEO_EVENT, map);
    }

    public void onVideoReady(int i, int i2, int i3) {
        HashMap map = new HashMap();
        map.put(TJAdUnitConstants.String.VIDEO_EVENT_NAME, TJAdUnitConstants.String.VIDEO_READY_EVENT);
        map.put(TJAdUnitConstants.String.VIDEO_DURATION, Integer.valueOf(i));
        map.put(TJAdUnitConstants.String.VIDEO_WIDTH, Integer.valueOf(i2));
        map.put(TJAdUnitConstants.String.VIDEO_HEIGHT, Integer.valueOf(i3));
        invokeJSAdunitMethod(TJAdUnitConstants.String.VIDEO_EVENT, map);
    }

    public void onVideoStarted(int i) {
        HashMap map = new HashMap();
        map.put(TJAdUnitConstants.String.VIDEO_EVENT_NAME, TJAdUnitConstants.String.VIDEO_START_EVENT);
        map.put(TJAdUnitConstants.String.VIDEO_CURRENT_TIME, Integer.valueOf(i));
        invokeJSAdunitMethod(TJAdUnitConstants.String.VIDEO_EVENT, map);
    }

    public void onVolumeChanged() {
        invokeJSAdunitMethod(TJAdUnitConstants.String.VOLUME_CHANGED, getVolumeArgs());
    }

    public void openApp(JSONObject jSONObject, String str) {
        try {
            this.f.startActivity(this.f.getPackageManager().getLaunchIntentForPackage(jSONObject.getString(TJAdUnitConstants.String.BUNDLE)));
            invokeJSCallback(str, Boolean.TRUE);
        } catch (Exception e) {
            invokeJSCallback(str, Boolean.FALSE);
            e.printStackTrace();
        }
    }

    public void pauseVideo(JSONObject jSONObject, String str) {
        TJAdUnit tJAdUnit = this.a;
        if (tJAdUnit != null) {
            invokeJSCallback(str, Boolean.valueOf(tJAdUnit.pauseVideo()));
        }
    }

    public void playVideo(JSONObject jSONObject, String str) {
        TJAdUnit tJAdUnit = this.a;
        if (tJAdUnit != null) {
            invokeJSCallback(str, Boolean.valueOf(tJAdUnit.playVideo()));
        }
    }

    public void present(JSONObject jSONObject, String str) {
        try {
            Boolean bool = Boolean.FALSE;
            Boolean boolValueOf = Boolean.FALSE;
            Boolean boolValueOf2 = Boolean.valueOf(jSONObject.getString(TJAdUnitConstants.String.VISIBLE));
            try {
                boolValueOf = Boolean.valueOf(jSONObject.getString("transparent"));
            } catch (Exception unused) {
            }
            try {
                this.customClose = Boolean.valueOf(jSONObject.getString(TJAdUnitConstants.String.CUSTOM_CLOSE)).booleanValue();
            } catch (Exception unused2) {
            }
            new a(this.b).execute(boolValueOf2, boolValueOf);
            invokeJSCallback(str, Boolean.TRUE);
        } catch (Exception e) {
            invokeJSCallback(str, Boolean.FALSE);
            e.printStackTrace();
        }
    }

    public void removeAssetFromCache(JSONObject jSONObject, String str) {
        try {
            String string = jSONObject.getString("url");
            if (TapjoyCache.getInstance() != null) {
                invokeJSCallback(str, Boolean.valueOf(TapjoyCache.getInstance().removeAssetFromCache(string)));
            } else {
                invokeJSCallback(str, Boolean.FALSE);
            }
        } catch (Exception unused) {
            TapjoyLog.w("TJAdUnitJSBridge", "Unable to cache video. Invalid parameters.");
            invokeJSCallback(str, Boolean.FALSE);
        }
    }

    public void sendUsageTrackingEvent(JSONObject jSONObject, String str) {
        try {
            String string = jSONObject.getString("name");
            if (string.isEmpty()) {
                TapjoyLog.d("TJAdUnitJSBridge", "Empty name for sendUsageTrackingEvent");
                invokeJSCallback(str, Boolean.FALSE);
                return;
            }
            TJAdUnit tJAdUnit = this.a;
            if (tJAdUnit != null) {
                tJAdUnit.sendAdContentTracking(string, jSONObject);
                invokeJSCallback(str, Boolean.TRUE);
                return;
            }
            invokeJSCallback(str, Boolean.FALSE);
        } catch (JSONException e) {
            TapjoyLog.w("TJAdUnitJSBridge", "Unable to sendUsageTrackingEvent. Invalid parameters: ".concat(String.valueOf(e)));
        }
    }

    public void setAdUnitActivity(TJAdUnitActivity tJAdUnitActivity) {
        this.g = tJAdUnitActivity;
    }

    public void setAllowRedirect(JSONObject jSONObject, String str) {
        boolean z;
        try {
            z = jSONObject.getBoolean("enabled");
        } catch (Exception unused) {
            z = true;
        }
        this.allowRedirect = z;
        invokeJSCallback(str, Boolean.TRUE);
    }

    public void setBackgroundColor(JSONObject jSONObject, final String str) {
        try {
            String string = jSONObject.getString(TJAdUnitConstants.String.BACKGROUND_COLOR);
            TJAdUnit tJAdUnit = this.a;
            if (tJAdUnit != null) {
                tJAdUnit.setBackgroundColor(string, new AdUnitAsyncTaskListner() { // from class: com.tapjoy.TJAdUnitJSBridge.7
                    @Override // com.tapjoy.TJAdUnitJSBridge.AdUnitAsyncTaskListner
                    public final void onComplete(boolean z) {
                        TJAdUnitJSBridge.this.invokeJSCallback(str, Boolean.valueOf(z));
                    }
                });
            } else {
                invokeJSCallback(str, Boolean.FALSE);
            }
        } catch (Exception unused) {
            TapjoyLog.w("TJAdUnitJSBridge", "Unable to set background color. Invalid parameters.");
            invokeJSCallback(str, Boolean.FALSE);
        }
    }

    public void setBackgroundWebViewContent(JSONObject jSONObject, final String str) {
        TapjoyLog.d("TJAdUnitJSBridge", "setBackgroundWebViewContent");
        try {
            String string = jSONObject.getString(TJAdUnitConstants.String.BACKGROUND_CONTENT);
            TJAdUnit tJAdUnit = this.a;
            if (tJAdUnit != null) {
                tJAdUnit.setBackgroundContent(string, new AdUnitAsyncTaskListner() { // from class: com.tapjoy.TJAdUnitJSBridge.8
                    @Override // com.tapjoy.TJAdUnitJSBridge.AdUnitAsyncTaskListner
                    public final void onComplete(boolean z) {
                        TJAdUnitJSBridge.this.invokeJSCallback(str, Boolean.valueOf(z));
                    }
                });
            } else {
                invokeJSCallback(str, Boolean.FALSE);
            }
        } catch (Exception unused) {
            TapjoyLog.w("TJAdUnitJSBridge", "Unable to set background content. Invalid parameters.");
            invokeJSCallback(str, Boolean.FALSE);
        }
    }

    public void setCloseButtonClickable(JSONObject jSONObject, String str) {
        try {
            final boolean zOptBoolean = jSONObject.optBoolean(TJAdUnitConstants.String.CLICKABLE);
            TapjoyUtil.runOnMainThread(new Runnable() { // from class: com.tapjoy.TJAdUnitJSBridge.2
                @Override // java.lang.Runnable
                public final void run() {
                    TJAdUnitActivity tJAdUnitActivity = TJAdUnitJSBridge.this.g;
                    if (tJAdUnitActivity != null) {
                        tJAdUnitActivity.setCloseButtonClickable(zOptBoolean);
                    } else {
                        TapjoyLog.d("TJAdUnitJSBridge", "Cannot setCloseButtonClickable -- TJAdUnitActivity is null");
                    }
                }
            });
            invokeJSCallback(str, Boolean.TRUE);
        } catch (Exception e) {
            invokeJSCallback(str, Boolean.FALSE);
            e.printStackTrace();
        }
    }

    public void setCloseButtonVisible(JSONObject jSONObject, String str) {
        try {
            final boolean z = jSONObject.getBoolean(TJAdUnitConstants.String.VISIBLE);
            TapjoyUtil.runOnMainThread(new Runnable() { // from class: com.tapjoy.TJAdUnitJSBridge.13
                @Override // java.lang.Runnable
                public final void run() {
                    TJAdUnitActivity tJAdUnitActivity = TJAdUnitJSBridge.this.g;
                    if (tJAdUnitActivity != null) {
                        tJAdUnitActivity.setCloseButtonVisibility(z);
                    } else {
                        TapjoyLog.d("TJAdUnitJSBridge", "Cannot setCloseButtonVisible -- TJAdUnitActivity is null");
                    }
                }
            });
            invokeJSCallback(str, Boolean.TRUE);
        } catch (Exception e) {
            invokeJSCallback(str, Boolean.FALSE);
            e.printStackTrace();
        }
    }

    public void setEnabled(boolean z) {
        this.k = z;
        if (z) {
            flushBacklogMessageQueue();
        }
    }

    public void setEventPreloadLimit(JSONObject jSONObject, String str) {
        if (TapjoyCache.getInstance() == null) {
            invokeJSCallback(str, Boolean.FALSE);
            return;
        }
        try {
            TJPlacementManager.setCachedPlacementLimit(jSONObject.getInt(TJAdUnitConstants.String.TJC_PLACEMENT_CACHE_LIMIT));
            invokeJSCallback(str, Boolean.TRUE);
        } catch (Exception unused) {
            TapjoyLog.w("TJAdUnitJSBridge", "Unable to set Tapjoy cache's event preload limit. Invalid parameters.");
            invokeJSCallback(str, Boolean.FALSE);
        }
    }

    public void setLoggingLevel(JSONObject jSONObject, String str) {
        try {
            TapjoyAppSettings.getInstance().saveLoggingLevel(String.valueOf(jSONObject.getString(TJAdUnitConstants.String.LOGGING_LEVEL)));
        } catch (Exception e) {
            TapjoyLog.d("TJAdUnitJSBridge", "setLoggingLevel exception " + e.getLocalizedMessage());
            invokeJSCallback(str, Boolean.FALSE);
            e.printStackTrace();
        }
    }

    public void setOrientation(JSONObject jSONObject, String str) {
        int i;
        if (this.a == null) {
            TapjoyLog.d("TJAdUnitJSBridge", "No ad unit provided");
            invokeJSCallback(str, Boolean.FALSE);
            return;
        }
        try {
            String string = jSONObject.getString("orientation");
            if (string.equals("landscape") || string.equals(TJAdUnitConstants.String.LANDSCAPE_LEFT)) {
                i = 0;
            } else {
                i = string.equals(TJAdUnitConstants.String.LANDSCAPE_RIGHT) ? 8 : 1;
            }
            this.a.setOrientation(i);
            invokeJSCallback(str, Boolean.TRUE);
        } catch (Exception unused) {
            invokeJSCallback(str, Boolean.FALSE);
        }
    }

    public void setPrerenderLimit(JSONObject jSONObject, String str) {
        try {
            TJPlacementManager.setPreRenderedPlacementLimit(jSONObject.getInt(TJAdUnitConstants.String.TJC_PLACEMENT_PRE_RENDERED_LIMIT));
            invokeJSCallback(str, Boolean.TRUE);
        } catch (Exception unused) {
            TapjoyLog.w("TJAdUnitJSBridge", "Unable to set Tapjoy placement pre-render limit. Invalid parameters.");
            invokeJSCallback(str, Boolean.FALSE);
        }
    }

    public void setSpinnerVisible(JSONObject jSONObject, String str) {
        try {
            boolean z = jSONObject.getBoolean(TJAdUnitConstants.String.VISIBLE);
            String strOptString = jSONObject.optString("title");
            String strOptString2 = jSONObject.optString(TJAdUnitConstants.String.MESSAGE);
            TJAdUnitActivity tJAdUnitActivity = this.g;
            if (tJAdUnitActivity == null) {
                TapjoyLog.d("TJAdUnitJSBridge", "Cannot setSpinnerVisible -- TJAdUnitActivity is null");
                invokeJSCallback(str, Boolean.FALSE);
                return;
            }
            if (z) {
                this.i = ProgressDialog.show(tJAdUnitActivity, strOptString, strOptString2);
            } else {
                ProgressDialog progressDialog = this.i;
                if (progressDialog != null) {
                    progressDialog.dismiss();
                }
            }
            invokeJSCallback(str, Boolean.TRUE);
        } catch (Exception e) {
            invokeJSCallback(str, Boolean.FALSE);
            e.printStackTrace();
        }
    }

    public void setVideoMargins(JSONObject jSONObject, String str) {
        try {
            final float fOptDouble = (float) jSONObject.optDouble(TJAdUnitConstants.String.TOP, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
            final float fOptDouble2 = (float) jSONObject.optDouble(TJAdUnitConstants.String.RIGHT, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
            final float fOptDouble3 = (float) jSONObject.optDouble(TJAdUnitConstants.String.BOTTOM, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
            final float fOptDouble4 = (float) jSONObject.optDouble(TJAdUnitConstants.String.LEFT, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
            final TJAdUnitActivity tJAdUnitActivity = this.g;
            try {
                if (tJAdUnitActivity != null) {
                    TapjoyUtil.runOnMainThread(new Runnable() { // from class: com.tapjoy.TJAdUnitJSBridge.11
                        @Override // java.lang.Runnable
                        public final void run() {
                            TJAdUnitActivity tJAdUnitActivity2 = tJAdUnitActivity;
                            float f = fOptDouble4;
                            float f2 = fOptDouble;
                            float f3 = fOptDouble2;
                            float f4 = fOptDouble3;
                            DisplayMetrics displayMetrics = tJAdUnitActivity2.getResources().getDisplayMetrics();
                            int iApplyDimension = (int) TypedValue.applyDimension(1, f, displayMetrics);
                            int iApplyDimension2 = (int) TypedValue.applyDimension(1, f2, displayMetrics);
                            int iApplyDimension3 = (int) TypedValue.applyDimension(1, f3, displayMetrics);
                            int iApplyDimension4 = (int) TypedValue.applyDimension(1, f4, displayMetrics);
                            ViewGroup viewGroup = (ViewGroup) tJAdUnitActivity2.a.getVideoView().getParent();
                            ((ViewGroup.MarginLayoutParams) viewGroup.getLayoutParams()).setMargins(iApplyDimension, iApplyDimension2, iApplyDimension3, iApplyDimension4);
                            viewGroup.requestLayout();
                        }
                    });
                    invokeJSCallback(str, Boolean.TRUE);
                    return;
                } else {
                    TapjoyLog.d("TJAdUnitJSBridge", "Cannot setVideoMargins -- TJAdUnitActivity is null");
                    invokeJSCallback(str, Boolean.FALSE);
                    return;
                }
            } catch (Exception e) {
                e = e;
            }
        } catch (Exception e2) {
            e = e2;
        }
        invokeJSCallback(str, Boolean.FALSE);
        e.printStackTrace();
    }

    public void setVideoMute(JSONObject jSONObject, String str) {
        try {
            this.a.a(jSONObject.getBoolean("enabled"));
            invokeJSCallback(str, Boolean.TRUE);
        } catch (JSONException unused) {
            TapjoyLog.d("TJAdUnitJSBridge", "Failed to parse 'enabled' from json params.");
            invokeJSCallback(str, Boolean.FALSE);
        }
    }

    public void setupSdkBeacons(JSONObject jSONObject, String str) {
        TapjoyLog.d("TJAdUnitJSBridge", "setupSdkBeacons_method: ".concat(String.valueOf(jSONObject)));
        try {
            String string = jSONObject.getString("url");
            JSONObject jSONObject2 = jSONObject.getJSONObject(TJAdUnitConstants.String.BEACON_PATH_MAP);
            this.a.setSdkBeacon(new ga(string, jSONObject.getJSONObject("params"), jSONObject2));
            invokeJSCallback(str, Boolean.TRUE);
        } catch (Exception e) {
            invokeJSCallback(str, Boolean.FALSE);
            e.printStackTrace();
        }
    }

    public void shouldClose(JSONObject jSONObject, String str) {
        TJAdUnitActivity tJAdUnitActivity = this.g;
        try {
            Boolean bool = Boolean.FALSE;
            if (Boolean.valueOf(jSONObject.getString(TJAdUnitConstants.String.CLOSE)).booleanValue() && tJAdUnitActivity != null) {
                tJAdUnitActivity.finish();
            }
            invokeJSCallback(str, Boolean.TRUE);
        } catch (Exception e) {
            invokeJSCallback(str, Boolean.FALSE);
            if (tJAdUnitActivity != null) {
                tJAdUnitActivity.finish();
            }
            e.printStackTrace();
        }
        this.closeRequested = false;
    }

    public void startMoatVideoTracker(JSONObject jSONObject, String str) {
        invokeJSCallback(str, Boolean.TRUE);
    }

    public void startUsageTrackingEvent(JSONObject jSONObject, String str) {
        try {
            String string = jSONObject.getString("name");
            if (string.isEmpty()) {
                TapjoyLog.d("TJAdUnitJSBridge", "Empty name for startUsageTrackingEvent");
                invokeJSCallback(str, Boolean.FALSE);
                return;
            }
            TJAdUnit tJAdUnit = this.a;
            if (tJAdUnit != null) {
                tJAdUnit.startAdContentTracking(string, jSONObject);
                invokeJSCallback(str, Boolean.TRUE);
                return;
            }
            invokeJSCallback(str, Boolean.FALSE);
        } catch (JSONException e) {
            TapjoyLog.w("TJAdUnitJSBridge", "Unable to startUsageTrackingEvent. Invalid parameters: ".concat(String.valueOf(e)));
        }
    }

    public void startViewabilityTracker(JSONObject jSONObject, String str) {
        final es esVar = this.l;
        if (ce.b()) {
            esVar.a.invokeJSCallback(str, Boolean.TRUE);
            TapjoyUtil.runOnMainThread(new Runnable() { // from class: com.tapjoy.internal.es.2
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        es.this.d.a();
                    } catch (Exception e) {
                        TapjoyLog.d("TJOMViewabilityAgent", "Failed to start with exception: " + e.getMessage());
                    }
                }
            });
        } else {
            TapjoyLog.d("TJOMViewabilityAgent", "Can not start -- TJOMViewabilityAgent is not initialized");
            esVar.a.invokeJSCallback(str, Boolean.FALSE);
        }
    }

    public void triggerEvent(JSONObject jSONObject, String str) {
        if (this.a != null) {
            try {
                String string = jSONObject.getString("eventName");
                if (string.equals(TJAdUnitConstants.String.VIDEO_START)) {
                    this.a.fireOnVideoStart();
                    return;
                }
                if (string.equals(TJAdUnitConstants.String.VIDEO_COMPLETE)) {
                    this.a.fireOnVideoComplete();
                } else if (string.equals("error")) {
                    this.a.fireOnVideoError("Error while trying to play video.");
                } else if (string.equals("click")) {
                    this.a.fireOnClick();
                }
            } catch (Exception unused) {
                TapjoyLog.w("TJAdUnitJSBridge", "Unable to triggerEvent. No event name.");
            }
        }
    }

    public void triggerMoatVideoEvent(JSONObject jSONObject, String str) {
        invokeJSCallback(str, Boolean.TRUE);
    }

    public void triggerViewabilityEvent(final JSONObject jSONObject, final String str) {
        final es esVar = this.l;
        if (!ce.b()) {
            TapjoyLog.d("TJOMViewabilityAgent", "Can not triggerEvent -- TJOMViewabilityAgent is not initialized");
            esVar.a.invokeJSCallback(str, Boolean.FALSE);
        } else {
            if (jSONObject == null) {
                TapjoyLog.d("TJOMViewabilityAgent", "Can not triggerEvent -- json parameter is null");
                esVar.a.invokeJSCallback(str, Boolean.FALSE);
                return;
            }
            final String strOptString = jSONObject.optString("eventName", null);
            if (strOptString != null) {
                TapjoyUtil.runOnMainThread(new Runnable() { // from class: com.tapjoy.internal.es.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        float f;
                        try {
                            if (strOptString.equals("loaded")) {
                                cl clVar = es.this.c;
                                da daVar = da.STANDALONE;
                                dq.a(daVar, "Position is null");
                                db dbVar = new db(daVar);
                                dq.a(dbVar, "VastProperties is null");
                                dq.b(clVar.a);
                                dq.c(clVar.a);
                                cx cxVar = clVar.a;
                                JSONObject jSONObjectA = dbVar.a();
                                if (cxVar.h) {
                                    throw new IllegalStateException("Loaded event can only be sent once");
                                }
                                dh.a().a(cxVar.c.c(), "publishLoadedEvent", jSONObjectA);
                                cxVar.h = true;
                            } else if (strOptString.equals("impression")) {
                                cl clVar2 = es.this.c;
                                dq.a(clVar2.a);
                                dq.c(clVar2.a);
                                if (!clVar2.a.d()) {
                                    try {
                                        clVar2.a.a();
                                    } catch (Exception unused) {
                                    }
                                }
                                if (clVar2.a.d()) {
                                    cx cxVar2 = clVar2.a;
                                    if (cxVar2.g) {
                                        throw new IllegalStateException("Impression event can only be sent once");
                                    }
                                    dh.a().a(cxVar2.c.c(), "publishImpressionEvent", new Object[0]);
                                    cxVar2.g = true;
                                }
                            } else if (strOptString.equals(TJAdUnitConstants.String.VIDEO_BUFFER_START)) {
                                cz czVar = es.this.f;
                                dq.b(czVar.a);
                                czVar.a.c.a(TJAdUnitConstants.String.VIDEO_BUFFER_START);
                            } else if (strOptString.equals(TJAdUnitConstants.String.VIDEO_BUFFER_END)) {
                                cz czVar2 = es.this.f;
                                dq.b(czVar2.a);
                                czVar2.a.c.a("bufferFinish");
                            } else {
                                if (strOptString.equals(TJAdUnitConstants.String.VIDEO_START)) {
                                    f = es.this.a.a.isMuted() ? 0.0f : 1.0f;
                                    cz czVar3 = es.this.f;
                                    float duration = es.this.a.a.getVideoView().getDuration();
                                    if (duration <= 0.0f) {
                                        throw new IllegalArgumentException("Invalid Media duration");
                                    }
                                    cz.a(f);
                                    dq.b(czVar3.a);
                                    JSONObject jSONObject2 = new JSONObject();
                                    Cdo.a(jSONObject2, "duration", Float.valueOf(duration));
                                    Cdo.a(jSONObject2, "mediaPlayerVolume", Float.valueOf(f));
                                    Cdo.a(jSONObject2, C3510b4.j.P, Float.valueOf(di.a().a));
                                    czVar3.a.c.a(TJAdUnitConstants.String.VIDEO_START, jSONObject2);
                                } else if (strOptString.equals(TJAdUnitConstants.String.VIDEO_FIRST_QUARTILE)) {
                                    cz czVar4 = es.this.f;
                                    dq.b(czVar4.a);
                                    czVar4.a.c.a(TJAdUnitConstants.String.VIDEO_FIRST_QUARTILE);
                                } else if (strOptString.equals(TJAdUnitConstants.String.VIDEO_MIDPOINT)) {
                                    cz czVar5 = es.this.f;
                                    dq.b(czVar5.a);
                                    czVar5.a.c.a(TJAdUnitConstants.String.VIDEO_MIDPOINT);
                                } else if (strOptString.equals(TJAdUnitConstants.String.VIDEO_THIRD_QUARTILE)) {
                                    cz czVar6 = es.this.f;
                                    dq.b(czVar6.a);
                                    czVar6.a.c.a(TJAdUnitConstants.String.VIDEO_THIRD_QUARTILE);
                                } else if (strOptString.equals("paused")) {
                                    cz czVar7 = es.this.f;
                                    dq.b(czVar7.a);
                                    czVar7.a.c.a("pause");
                                } else if (strOptString.equals("playing")) {
                                    cz czVar8 = es.this.f;
                                    dq.b(czVar8.a);
                                    czVar8.a.c.a("resume");
                                } else if (strOptString.equals(TJAdUnitConstants.String.VIDEO_SKIPPED)) {
                                    cz czVar9 = es.this.f;
                                    dq.b(czVar9.a);
                                    czVar9.a.c.a(TJAdUnitConstants.String.VIDEO_SKIPPED);
                                } else if (strOptString.equals(TJAdUnitConstants.String.VOLUME_CHANGED)) {
                                    f = es.this.a.a.isMuted() ? 0.0f : 1.0f;
                                    cz czVar10 = es.this.f;
                                    cz.a(f);
                                    dq.b(czVar10.a);
                                    JSONObject jSONObject3 = new JSONObject();
                                    Cdo.a(jSONObject3, "mediaPlayerVolume", Float.valueOf(f));
                                    Cdo.a(jSONObject3, C3510b4.j.P, Float.valueOf(di.a().a));
                                    czVar10.a.c.a("volumeChange", jSONObject3);
                                } else if (strOptString.equals(TJAdUnitConstants.String.AD_USER_INTERACTION)) {
                                    cz czVar11 = es.this.f;
                                    cy cyVar = cy.CLICK;
                                    dq.a(cyVar, "InteractionType is null");
                                    dq.b(czVar11.a);
                                    JSONObject jSONObject4 = new JSONObject();
                                    Cdo.a(jSONObject4, "interactionType", cyVar);
                                    czVar11.a.c.a(TJAdUnitConstants.String.AD_USER_INTERACTION, jSONObject4);
                                } else if (strOptString.equals(TJAdUnitConstants.String.VIDEO_COMPLETE)) {
                                    cz czVar12 = es.this.f;
                                    dq.b(czVar12.a);
                                    czVar12.a.c.a(TJAdUnitConstants.String.VIDEO_COMPLETE);
                                } else if (strOptString.equals(TJAdUnitConstants.String.SESSION_ERROR)) {
                                    try {
                                        if (jSONObject.getString("errorType").equals(MimeTypes.BASE_TYPE_VIDEO)) {
                                            es.this.d.a(cr.VIDEO, jSONObject.getString(TJAdUnitConstants.String.MESSAGE));
                                        } else {
                                            es.this.d.a(cr.GENERIC, jSONObject.getString(TJAdUnitConstants.String.MESSAGE));
                                        }
                                        TapjoyLog.d("TJOMViewabilityAgent", "Session Error: " + jSONObject.getString("errorType") + ", " + jSONObject.getString(TJAdUnitConstants.String.MESSAGE));
                                    } catch (JSONException e) {
                                        TapjoyLog.d("TJOMViewabilityAgent", "Failed to getting session error information: " + e.getMessage());
                                    }
                                } else if (!strOptString.equals(TJAdUnitConstants.String.SESSION_FINISH)) {
                                    TapjoyLog.d("TJOMViewabilityAgent", "triggerEvent: event name '" + strOptString + "' not found");
                                    es.this.a.invokeJSCallback(str, Boolean.FALSE);
                                    return;
                                } else {
                                    es.this.d.b();
                                    es.this.d = null;
                                }
                            }
                            TapjoyLog.d("TJOMViewabilityAgent", "triggerEvent: event name '" + strOptString + "'");
                            es.this.a.invokeJSCallback(str, Boolean.TRUE);
                        } catch (Exception e2) {
                            TapjoyLog.d("TJOMViewabilityAgent", "triggerEvent exception:" + e2.getMessage());
                            es.this.a.invokeJSCallback(str, Boolean.FALSE);
                        }
                    }
                });
            } else {
                TapjoyLog.d("TJOMViewabilityAgent", "triggerEvent: params json did not contain 'eventName'");
                esVar.a.invokeJSCallback(str, Boolean.FALSE);
            }
        }
    }

    public void unsetOrientation(JSONObject jSONObject, String str) {
        TJAdUnit tJAdUnit = this.a;
        if (tJAdUnit == null) {
            TapjoyLog.d("TJAdUnitJSBridge", "No ad unit provided");
            invokeJSCallback(str, Boolean.FALSE);
        } else {
            try {
                tJAdUnit.unsetOrientation();
                invokeJSCallback(str, Boolean.TRUE);
            } catch (Exception unused) {
                invokeJSCallback(str, Boolean.FALSE);
            }
        }
    }
}
