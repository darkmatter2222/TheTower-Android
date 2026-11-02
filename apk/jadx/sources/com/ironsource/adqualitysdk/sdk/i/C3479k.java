package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import com.unity3d.services.core.configuration.Configuration;
import com.unity3d.services.core.configuration.ErrorState;
import com.unity3d.services.core.webview.WebView;
import com.unity3d.services.core.webview.WebViewApp;
import com.unity3d.services.core.webview.bridge.Invocation;
import com.unity3d.services.core.webview.bridge.NativeCallback;
import java.lang.reflect.Method;
import java.util.Arrays;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3479k extends WebViewApp implements InterfaceC0513 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C3483m f281;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0943 f282;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final WebViewApp f283;

    public C3479k(C3483m c3483m, WebViewApp webViewApp, C0943 c0943) {
        this.f281 = c3483m;
        this.f283 = webViewApp;
        this.f282 = c0943;
    }

    public final void addCallback(NativeCallback nativeCallback) {
        this.f281.m2030(this, this.f282, StringFog.decrypt("xIQCrgy/g+njkU6ZAb63yf+NApkGsQ==\n", "k+Fg+GXa9Kg=\n"), nativeCallback);
        WebViewApp webViewApp = this.f283;
        if (webViewApp != null) {
            webViewApp.addCallback(nativeCallback);
        }
    }

    public final NativeCallback getCallback(String str) {
        this.f281.m2030(this, this.f282, StringFog.decrypt("oMa8wJkVP9+H0/DxlQQL/5vPvPeTGw==\n", "96PelvBwSJ4=\n"), str);
        WebViewApp webViewApp = this.f283;
        if (webViewApp != null) {
            return webViewApp.getCallback(str);
        }
        return null;
    }

    public final Configuration getConfiguration() {
        this.f281.m2030(this, this.f282, StringFog.decrypt("4vd0Jdq1CifF4jgU1qQ+Cdv0fxTGohwS3P14\n", "tZIWc7PQfWY=\n"), new Object[0]);
        WebViewApp webViewApp = this.f283;
        if (webViewApp != null) {
            return webViewApp.getConfiguration();
        }
        return null;
    }

    public final ErrorState getErrorStateFromWebAppCode() {
        this.f281.m2030(this, this.f282, StringFog.decrypt("5OxhGPHlDG/D+S0p/fQ+XMHmcR3s4Q9L9ftsI8/lGW/D+UAh/OU=\n", "s4kDTpiAey4=\n"), new Object[0]);
        WebViewApp webViewApp = this.f283;
        if (webViewApp != null) {
            return webViewApp.getErrorStateFromWebAppCode();
        }
        return null;
    }

    public final int getWebAppFailureCode() {
        this.f281.m2030(this, this.f282, StringFog.decrypt("havG3MDCkTeivortzNOxE7CP1Prvxo8ap7zBycbDgw==\n", "0s6kiqmn5nY=\n"), new Object[0]);
        WebViewApp webViewApp = this.f283;
        if (webViewApp != null) {
            return webViewApp.getWebAppFailureCode();
        }
        return 0;
    }

    public final String getWebAppFailureMessage() {
        this.f281.m2030(this, this.f282, StringFog.decrypt("mj6rWOTfUIy9K+dp6M5wqK8auX7L206huCmsQ+jJVKyqPg==\n", "zVvJDo26J80=\n"), new Object[0]);
        WebViewApp webViewApp = this.f283;
        if (webViewApp != null) {
            return webViewApp.getWebAppFailureMessage();
        }
        return null;
    }

    public final WebView getWebView() {
        this.f281.m2030(this, this.f282, StringFog.decrypt("tiMfOjC+p/+RNlMLPK+H24MQFAku\n", "4UZ9bFnb0L4=\n"), new Object[0]);
        WebViewApp webViewApp = this.f283;
        if (webViewApp != null) {
            return webViewApp.getWebView();
        }
        return null;
    }

    public final boolean invokeCallback(Invocation invocation) {
        this.f281.m2030(this, this.f282, StringFog.decrypt("lvegeh+M1eKx4uxFGJ/NyKTRo0Aai8PAqg==\n", "wZLCLHbpoqM=\n"), invocation);
        WebViewApp webViewApp = this.f283;
        if (webViewApp != null) {
            return webViewApp.invokeCallback(invocation);
        }
        return false;
    }

    public final boolean invokeMethod(String str, String str2, Method method, Object... objArr) {
        this.f281.m2030(this, this.f282, StringFog.decrypt("SL3aMUzRJGBvqJYOS8I8SnqV3RNN2zc=\n", "H9i4ZyW0UyE=\n"), str, str2, method, Arrays.asList(objArr));
        WebViewApp webViewApp = this.f283;
        if (webViewApp != null) {
            return webViewApp.invokeMethod(str, str2, method, objArr);
        }
        return false;
    }

    public final boolean isWebAppInitialized() {
        this.f281.m2030(this, this.f282, StringFog.decrypt("UlruPwKMdgJ1T6IAGL5kIURP/CAFgHUqZFPlEw6N\n", "BT+MaWvpAUM=\n"), new Object[0]);
        WebViewApp webViewApp = this.f283;
        if (webViewApp != null) {
            return webViewApp.isWebAppInitialized();
        }
        return false;
    }

    public final boolean isWebAppLoaded() {
        this.f281.m2030(this, this.f282, StringFog.decrypt("8tjtPFJCZn/VzaEDSHB0XOTN/yZURnVbwQ==\n", "pb2PajsnET4=\n"), new Object[0]);
        WebViewApp webViewApp = this.f283;
        if (webViewApp != null) {
            return webViewApp.isWebAppLoaded();
        }
        return false;
    }

    public final void removeCallback(NativeCallback nativeCallback) {
        this.f281.m2030(this, this.f282, StringFog.decrypt("X6EyR8bOzfJ4tH5jysbVxW2HMX3DydvQYw==\n", "CMRQEa+rurM=\n"), nativeCallback);
        WebViewApp webViewApp = this.f283;
        if (webViewApp != null) {
            webViewApp.removeCallback(nativeCallback);
        }
    }

    public final void resetWebViewAppInitialization() {
        this.f281.m2030(this, this.f282, StringFog.decrypt("2vb0sUEpuXn947iVTT+rTNr29LFBKbl5/ePfiUE4p1nh+uyGXCWhVg==\n", "jZOW5yhMzjg=\n"), new Object[0]);
        WebViewApp webViewApp = this.f283;
        if (webViewApp != null) {
            webViewApp.resetWebViewAppInitialization();
        }
    }

    public final boolean sendEvent(Enum r5, Enum r6, Object... objArr) {
        this.f281.m2030(this, this.f282, StringFog.decrypt("fz2mDrqppqBYKOortqK1pF49qiw=\n", "KFjEWNPM0eE=\n"), r5, r6, Arrays.asList(objArr));
        WebViewApp webViewApp = this.f283;
        if (webViewApp != null) {
            return webViewApp.sendEvent(r5, r6, objArr);
        }
        return false;
    }

    public final void setConfiguration(Configuration configuration) {
        this.f281.m2030(this, this.f282, StringFog.decrypt("Go/hngBwEmU9mq27DGEmSyOM6q8cZwRQJIXt\n", "TeqDyGkVZSQ=\n"), configuration);
        WebViewApp webViewApp = this.f283;
        if (webViewApp != null) {
            webViewApp.setConfiguration(configuration);
        }
    }

    public final void setWebAppFailureCode(int i) {
        this.f281.m2030(this, this.f282, StringFog.decrypt("ZQYrWME3LZ5CE2d9zSYNulAiOX7uMzOzRxEsTcc2Pw==\n", "MmNJDqhSWt8=\n"), Integer.valueOf(i));
        WebViewApp webViewApp = this.f283;
        if (webViewApp != null) {
            webViewApp.setWebAppFailureCode(i);
        }
    }

    public final void setWebAppFailureMessage(String str) {
        this.f281.m2030(this, this.f282, StringFog.decrypt("g2sQolC+coGkflyHXK9SpbZPAoR/umysoXwXuVyodqGzaw==\n", "1A5y9DnbBcA=\n"), str);
        WebViewApp webViewApp = this.f283;
        if (webViewApp != null) {
            webViewApp.setWebAppFailureMessage(str);
        }
    }

    public final void setWebAppInitialized(boolean z) {
        this.f281.m2030(this, this.f282, StringFog.decrypt("6S9WM8qyjrvOOhoWxqOun9wLRBXquZCO1ytYDNmynQ==\n", "vko0ZaPX+fo=\n"), Boolean.valueOf(z));
        WebViewApp webViewApp = this.f283;
        if (webViewApp != null) {
            webViewApp.setWebAppInitialized(z);
        }
    }

    public final void setWebAppLoaded(boolean z) {
        this.f281.m2030(this, this.f282, StringFog.decrypt("FKH13pearHsztLn7m4uMXyGF5/iykLpeJqA=\n", "Q8SXiP7/2zo=\n"), Boolean.valueOf(z));
        WebViewApp webViewApp = this.f283;
        if (webViewApp != null) {
            webViewApp.setWebAppLoaded(z);
        }
    }

    public final void setWebView(WebView webView) {
        this.f281.m2030(this, this.f282, StringFog.decrypt("T/p3cnQOJDVo7ztXeB8EEXrJfEFq\n", "GJ8VJB1rU3Q=\n"), webView);
        WebViewApp webViewApp = this.f283;
        if (webViewApp != null) {
            webViewApp.setWebView(webView);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0513
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Object mo1868() {
        return this.f283;
    }
}
