package com.ironsource;

import android.os.Build;
import android.webkit.WebView;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.ya, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public interface InterfaceC3935ya {

    /* JADX INFO: renamed from: com.ironsource.ya$a */
    public static final class a implements InterfaceC3935ya {
        private WebView a;
        private boolean b;

        public a() {
            this(0, 1, null);
        }

        public a(int i) {
            this.b = i >= 19;
        }

        public /* synthetic */ a(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? Build.VERSION.SDK_INT : i);
        }

        private final void b(String str) {
            WebView webView = this.a;
            if (webView != null) {
                webView.evaluateJavascript(str, null);
            }
        }

        private final void c(String str) {
            WebView webView = this.a;
            if (webView != null) {
                webView.loadUrl("javascript:" + str);
            }
        }

        @Override // com.ironsource.InterfaceC3935ya
        public void a(WebView webView) {
            Intrinsics.checkNotNullParameter(webView, "webView");
            this.a = webView;
        }

        @Override // com.ironsource.InterfaceC3935ya
        public void a(String script) {
            Intrinsics.checkNotNullParameter(script, "script");
            try {
                if (this.b) {
                    b(script);
                } else {
                    c(script);
                }
            } catch (Throwable th) {
                C3801r4.d().a(th);
                this.b = false;
                c(script);
            }
        }

        @Override // com.ironsource.InterfaceC3935ya
        public boolean a() {
            return this.a != null;
        }
    }

    void a(WebView webView);

    void a(String str);

    boolean a();
}
