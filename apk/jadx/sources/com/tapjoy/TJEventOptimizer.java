package com.tapjoy;

import android.content.Context;
import android.view.ViewGroup;
import android.webkit.ConsoleMessage;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes4.dex */
public class TJEventOptimizer extends WebView {
    private static String a = "TJEventOptimizer";
    private static TJEventOptimizer b;
    private static CountDownLatch c;
    private Context d;
    private TJAdUnitJSBridge e;

    class a extends WebChromeClient {
        private a() {
        }

        /* synthetic */ a(TJEventOptimizer tJEventOptimizer, byte b) {
            this();
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            TapjoyLog.d(TJEventOptimizer.a, "JS CONSOLE: " + consoleMessage.message() + " -- From line " + consoleMessage.lineNumber() + " of " + consoleMessage.sourceId());
            return true;
        }
    }

    class b extends WebViewClient {
        private b() {
        }

        /* synthetic */ b(TJEventOptimizer tJEventOptimizer, byte b) {
            this();
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            TapjoyLog.d(TJEventOptimizer.a, "boostrap html loaded successfully");
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            TapjoyLog.e(TJEventOptimizer.a, new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.SDK_ERROR, "Error encountered when instantiating a WebViewClient"));
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            if (TJEventOptimizer.b != null) {
                ViewGroup viewGroup = (ViewGroup) TJEventOptimizer.b.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(TJEventOptimizer.b);
                }
                TJEventOptimizer.b.destroy();
                TJEventOptimizer unused = TJEventOptimizer.b = null;
            }
            TapjoyLog.e(TJEventOptimizer.a, new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.SDK_ERROR, "WebView rendering process exited while instantiating a WebViewClient unexpectedly"));
            return true;
        }
    }

    private TJEventOptimizer(Context context) {
        super(context);
        this.d = context;
        this.e = new TJAdUnitJSBridge(this.d, this);
        try {
            getSettings().setJavaScriptEnabled(true);
            byte b2 = 0;
            setWebViewClient(new b(this, b2));
            setWebChromeClient(new a(this, b2));
            loadUrl(TapjoyConnectCore.getHostURL() + TJAdUnitConstants.EVENTS_PROXY_PATH + TapjoyUtil.convertURLParams(TapjoyConnectCore.getGenericURLParams(), true));
        } catch (Exception e) {
            TapjoyLog.w(a, e.getMessage());
        }
    }

    /* synthetic */ TJEventOptimizer(Context context, byte b2) {
        this(context);
    }

    public static TJEventOptimizer getInstance() {
        return b;
    }

    public static void init(final Context context) throws InterruptedException {
        TapjoyLog.d(a, "Initializing event optimizer");
        c = new CountDownLatch(1);
        TapjoyUtil.runOnMainThread(new Runnable() { // from class: com.tapjoy.TJEventOptimizer.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    TJEventOptimizer unused = TJEventOptimizer.b = new TJEventOptimizer(context, (byte) 0);
                } catch (Exception e) {
                    TapjoyLog.w(TJEventOptimizer.a, e.getMessage());
                }
                TJEventOptimizer.c.countDown();
            }
        });
        c.await();
        if (b == null) {
            throw new RuntimeException("Failed to init TJEventOptimizer");
        }
    }
}
