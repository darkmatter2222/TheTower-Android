package kotlin;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import com.ironsource.adapters.facebook.FacebookConstants;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public final class qd2 {
    public static final qd2 a = new qd2();

    public static void a(WebView webView, String str) {
        if (webView == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            try {
                webView.evaluateJavascript(str, null);
            } catch (IllegalStateException unused) {
                webView.loadUrl("javascript: " + str);
            }
        } catch (Exception e) {
            e.getMessage();
        }
    }

    public final void a(WebView webView, String str, Object... objArr) {
        if (webView != null) {
            StringBuilder sb = new StringBuilder(128);
            sb.append("if(window.omidBridge!==undefined){omidBridge.");
            sb.append(str);
            sb.append("(");
            if (objArr.length > 0) {
                for (Object obj : objArr) {
                    if (obj == null) {
                        sb.append(AbstractJsonLexerKt.NULL);
                    } else if (obj instanceof String) {
                        String string = obj.toString();
                        if (string.startsWith("{")) {
                            sb.append(string);
                        } else {
                            sb.append('\"').append(string).append('\"');
                        }
                    } else {
                        sb.append(obj);
                    }
                    sb.append(FacebookConstants.PLACEMENT_IDS_SEPARATOR);
                }
                sb.setLength(sb.length() - 1);
            }
            sb.append(")}");
            String string2 = sb.toString();
            Handler handler = webView.getHandler();
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            if (Looper.myLooper() == handler.getLooper()) {
                a(webView, string2);
            } else {
                handler.post(new pd2(this, webView, string2));
            }
        }
    }
}
