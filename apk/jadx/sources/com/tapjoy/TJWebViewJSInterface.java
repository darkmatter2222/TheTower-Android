package com.tapjoy;

import android.os.AsyncTask;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class TJWebViewJSInterface {
    WebView a;
    TJWebViewJSInterfaceListener b;
    private final ConcurrentLinkedQueue<String> c = new ConcurrentLinkedQueue<>();
    private boolean d;

    class a extends AsyncTask<String, Void, String> {
        WebView a;

        public a(WebView webView) {
            this.a = webView;
        }

        @Override // android.os.AsyncTask
        protected final /* bridge */ /* synthetic */ String doInBackground(String[] strArr) {
            return strArr[0];
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(String str) {
            String str2 = str;
            if (this.a != null) {
                if (!str2.startsWith("javascript:")) {
                    try {
                        this.a.loadUrl(str2);
                        return;
                    } catch (Exception e) {
                        TapjoyLog.e("TJWebViewJSInterface", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.INTERNAL_ERROR, "Exception in loadUrl. Device not supported. " + e.toString()));
                        return;
                    }
                }
                try {
                    String strReplaceFirst = str2.replaceFirst("javascript:", "");
                    WebView webView = this.a;
                    if (webView == null) {
                        return;
                    }
                    webView.evaluateJavascript(strReplaceFirst, null);
                } catch (Exception e2) {
                    TapjoyLog.e("TJWebViewJSInterface", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.INTERNAL_ERROR, "Exception in evaluateJavascript. Device not supported. " + e2.toString()));
                }
            }
        }
    }

    public TJWebViewJSInterface(WebView webView, TJWebViewJSInterfaceListener tJWebViewJSInterfaceListener) {
        this.a = webView;
        this.b = tJWebViewJSInterfaceListener;
    }

    public void callback(ArrayList<?> arrayList, String str, String str2) {
        try {
            callbackToJavaScript(new JSONArray((Collection) arrayList), str, str2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void callback(Map<?, ?> map, String str, String str2) {
        try {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(new JSONObject(map));
            callbackToJavaScript(jSONArray, str, str2);
        } catch (Exception e) {
            TapjoyLog.e("TJWebViewJSInterface", "Exception in callback to JS: " + e.toString());
            e.printStackTrace();
        }
    }

    public void callbackToJavaScript(Object obj, String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(TJAdUnitConstants.String.ARGUMENTS, obj);
            if (str != null && str.length() > 0) {
                jSONObject.put("method", str);
            }
            JSONObject jSONObject2 = new JSONObject();
            if (str2 != null && str2.length() > 0) {
                jSONObject2.put(TJAdUnitConstants.String.CALLBACK_ID, str2);
            }
            jSONObject2.put("data", jSONObject);
            String str3 = "javascript:if(window.AndroidWebViewJavascriptBridge) AndroidWebViewJavascriptBridge._handleMessageFromAndroid('" + jSONObject2 + "');";
            if (!this.d) {
                this.c.add(str3);
            } else if (this.a != null) {
                new a(this.a).execute(str3);
            } else {
                TapjoyLog.w("TJWebViewJSInterface", "No available webview to execute js");
            }
        } catch (Exception e) {
            TapjoyLog.e("TJWebViewJSInterface", "Exception in callback to JS: " + e.toString());
            e.printStackTrace();
        }
    }

    @JavascriptInterface
    public void dispatchMethod(String str) {
        TapjoyLog.d("TJWebViewJSInterface", "dispatchMethod params: ".concat(String.valueOf(str)));
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getJSONObject("data").getString("method");
            TapjoyLog.d("TJWebViewJSInterface", "method: ".concat(String.valueOf(string)));
            TJWebViewJSInterfaceListener tJWebViewJSInterfaceListener = this.b;
            if (tJWebViewJSInterfaceListener == null || this.a == null) {
                return;
            }
            tJWebViewJSInterfaceListener.onDispatchMethod(string, jSONObject);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void flushMessageQueue() {
        if (this.d) {
            return;
        }
        while (true) {
            String strPoll = this.c.poll();
            if (strPoll == null) {
                this.d = true;
                return;
            } else if (this.a != null) {
                new a(this.a).execute(strPoll);
            }
        }
    }
}
