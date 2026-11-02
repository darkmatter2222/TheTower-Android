package com.ironsource.adqualitysdk.sdk.i;

import android.graphics.Bitmap;
import android.os.Message;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class W extends WebChromeClient implements InterfaceC0497 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final WebChromeClient f231;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static final String f230 = StringFog.decrypt("OzGX17ttmJYJF5n9tnGDvwk3muaya5iJ\n", "bFT1lNMf9/s=\n");

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f229 = StringFog.decrypt("NyN5HGABJWE1IloucCM9Yz8raAh+CTB/JA==\n", "UEYNSxJgVRE=\n");

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final String f228 = StringFog.decrypt("LjKQiUy8ESYKP5ayQ443KCAyiqk=\n", "SVfk3S7rdEQ=\n");

    public W(WebChromeClient webChromeClient) {
        this.f231 = webChromeClient;
    }

    @Override // android.webkit.WebChromeClient
    public final Bitmap getDefaultVideoPoster() {
        try {
            this.f231.getDefaultVideoPoster();
        } catch (Throwable th) {
            AbstractC1071.m2435(f230, StringFog.decrypt("ajxbjQ3ItAEPI32AM4GuG0ogTJBfj7gbaytPgwqEqTlGKkyNL4euG0o8\n", "L04p4n/o3W8=\n"), th, false);
        }
        return super.getDefaultVideoPoster();
    }

    @Override // android.webkit.WebChromeClient
    public final View getVideoLoadingProgressView() {
        try {
            this.f231.getVideoLoadingProgressView();
        } catch (Throwable th) {
            AbstractC1071.m2435(f230, StringFog.decrypt("VXv3/HiwFJEwZNHxRvkOi3Vn4OEq9xiLRmDh9mXcEp50YOv0WuISmGJs9uBc+RiI\n", "EAmFkwqQff8=\n"), th, false);
        }
        return super.getVideoLoadingProgressView();
    }

    @Override // android.webkit.WebChromeClient
    public final void getVisitedHistory(ValueCallback valueCallback) {
        try {
            this.f231.getVisitedHistory(valueCallback);
        } catch (Throwable th) {
            AbstractC1071.m2435(f230, StringFog.decrypt("3LdsKYWogSm5qEoku+GbM/yrezTX740zz6xtL4PtjA/wtmophfE=\n", "mcUeRveI6Ec=\n"), th, false);
        }
        super.getVisitedHistory(valueCallback);
    }

    @Override // android.webkit.WebChromeClient
    public final void onCloseWindow(WebView webView) {
        try {
            this.f231.onCloseWindow(webView);
        } catch (Throwable th) {
            AbstractC1071.m2435(f230, StringFog.decrypt("7u7T3/hIWmqL8fXSxgFAcM7yxMKqB11Hx/PS1d0BXWDE6w==\n", "q5yhsIpoMwQ=\n"), th, false);
        }
        super.onCloseWindow(webView);
    }

    @Override // android.webkit.WebChromeClient
    public final void onConsoleMessage(String str, int i, String str2) {
        try {
            this.f231.onConsoleMessage(str, i, str2);
        } catch (Throwable th) {
            AbstractC1071.m2435(f230, StringFog.decrypt("FfAcXmZ6cS1w7zpTWDNrNzXsC0M0NXYAP+wdXng/VSYj8Q9WcQ==\n", "UIJuMRRaGEM=\n"), th, false);
        }
        super.onConsoleMessage(str, i, str2);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        try {
            this.f231.onConsoleMessage(consoleMessage);
        } catch (Throwable th) {
            AbstractC1071.m2435(f230, StringFog.decrypt("L9Ut3z4DcoBKygvSAEpomg/JOsJsTHWtBcks3yBGVosZ1D7XKQ==\n", "aqdfsEwjG+4=\n"), th, false);
        }
        return super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        try {
            this.f231.onCreateWindow(webView, z, z2, message);
        } catch (Throwable th) {
            AbstractC1071.m2435(f230, StringFog.decrypt("Ly87Za/HM89KMB1okY4p1Q8zLHj9iDTiGDgofriwM88OMj4=\n", "al1JCt3nWqE=\n"), th, false);
        }
        return super.onCreateWindow(webView, z, z2, message);
    }

    @Override // android.webkit.WebChromeClient
    public final void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, WebStorage.QuotaUpdater quotaUpdater) {
        try {
            this.f231.onExceededDatabaseQuota(str, str2, j, j2, j3, quotaUpdater);
        } catch (Throwable th) {
            AbstractC1071.m2435(f230, StringFog.decrypt("0tSGy4cUzzi3y6DGuV3VIvLIkdbVW8gT78WRwZFRwhL20pXGlEfDB+LJgMU=\n", "l6b0pPU0plY=\n"), th, false);
        }
        super.onExceededDatabaseQuota(str, str2, j, j2, j3, quotaUpdater);
    }

    @Override // android.webkit.WebChromeClient
    public final void onGeolocationPermissionsHidePrompt() {
        try {
            this.f231.onGeolocationPermissionsHidePrompt();
        } catch (Throwable th) {
            AbstractC1071.m2435(f230, StringFog.decrypt("g2X/V4zDauTmetlasopw/qN56ErejG3No3jhV52Cd+Oped1djI5q+bV+4laNq2ruo0f/V5OTdw==\n", "xheNOP7jA4o=\n"), th, false);
        }
        super.onGeolocationPermissionsHidePrompt();
    }

    @Override // android.webkit.WebChromeClient
    public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        try {
            this.f231.onGeolocationPermissionsShowPrompt(str, callback);
        } catch (Throwable th) {
            AbstractC1071.m2435(f230, StringFog.decrypt("D/1/Z0K1Azlq4llqfPwZIy/haHoQ+gQQL+BhZ1P0Hj4l4V1tQvgDJDnmYmZDxgI4Pd9/Z13lHg==\n", "So8NCDCValc=\n"), th, false);
        }
        super.onGeolocationPermissionsShowPrompt(str, callback);
    }

    @Override // android.webkit.WebChromeClient
    public final void onHideCustomView() {
        try {
            this.f231.onHideCustomView();
        } catch (Throwable th) {
            AbstractC1071.m2435(f230, StringFog.decrypt("KJ6XXfKlny1NgbFQzOyFNwiCgECg6pgLBIiAcfX2giwAuoxX9w==\n", "bezlMoCF9kM=\n"), th, false);
        }
        super.onHideCustomView();
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        try {
            this.f231.onJsAlert(webView, str, str2, jsResult);
        } catch (Throwable th) {
            AbstractC1071.m2435(f230, StringFog.decrypt("iG7ARB5gtD7tceZJICmuJKhy11lML7Mavl3eTh40\n", "zRyyK2xA3VA=\n"), th, false);
        }
        return super.onJsAlert(webView, str, str2, jsResult);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        try {
            this.f231.onJsBeforeUnload(webView, str, str2, jsResult);
        } catch (Throwable th) {
            AbstractC1071.m2435(f230, StringFog.decrypt("oI9iYdomSyjFkERs5G9RMoCTdXyIaUwMlr91aMd0RxOLkX9vzA==\n", "5f0QDqgGIkY=\n"), th, false);
        }
        return super.onJsBeforeUnload(webView, str, str2, jsResult);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        try {
            this.f231.onJsConfirm(webView, str, str2, jsResult);
        } catch (Throwable th) {
            AbstractC1071.m2435(f230, StringFog.decrypt("KnraaBBbDb1PZfxlLhIXpwpmzXVCFAqZHEvHaQQSFr4=\n", "bwioB2J7ZNM=\n"), th, false);
        }
        return super.onJsConfirm(webView, str, str2, jsResult);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        try {
            try {
                this.f231.onJsPrompt(webView, str, str2, str3, jsPromptResult);
                webView = webView;
                str = str;
                str2 = str2;
                str3 = str3;
                jsPromptResult = jsPromptResult;
            } catch (Throwable th) {
                th = th;
                webView = webView;
                str = str;
                str2 = str2;
                str3 = str3;
                jsPromptResult = jsPromptResult;
                AbstractC1071.m2435(f230, StringFog.decrypt("uMALKMp08CXd3y0l9D3qP5jcHDWYO/cBjuILKNUk7Q==\n", "/bJ5R7hUmUs=\n"), th, false);
            }
        } catch (Throwable th2) {
            th = th2;
        }
        return super.onJsPrompt(webView, str, str2, str3, jsPromptResult);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsTimeout() {
        try {
            this.f231.onJsTimeout();
        } catch (Throwable th) {
            AbstractC1071.m2435(f230, StringFog.decrypt("QpAqPkDBNvgnjwwzfogs4mKMPSMSjjHcdLYxPFeOKuI=\n", "B+JYUTLhX5Y=\n"), th, false);
        }
        return super.onJsTimeout();
    }

    @Override // android.webkit.WebChromeClient
    public final void onPermissionRequest(PermissionRequest permissionRequest) {
        try {
            this.f231.onPermissionRequest(permissionRequest);
        } catch (Throwable th) {
            AbstractC1071.m2435(f230, StringFog.decrypt("wOR7pQDLyfyl+12oPoLT5uD4bLhShM7C4ORkowGYyf3rxGy7B47T5g==\n", "hZYJynLroJI=\n"), th, false);
        }
        try {
            super.onPermissionRequest(permissionRequest);
        } catch (Throwable th2) {
            AbstractC1071.m2435(f230, StringFog.decrypt("e/RVCPvSIpge5UYL5ZslkR7pVQ7umyXWUeh3AvufIoVN70gJ25c6g1v1Uw==\n", "PoYnZ4nyS/Y=\n"), th2, false);
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onPermissionRequestCanceled(PermissionRequest permissionRequest) {
        try {
            this.f231.onPermissionRequestCanceled(permissionRequest);
        } catch (Throwable th) {
            AbstractC1071.m2435(f230, StringFog.decrypt("vvOzulXQCtPb7JW3a5kQyZ7vpKcHnw3tnvOsvFSDCtKV06SkUpUQybjgr7ZCnAbZ\n", "+4HB1SfwY70=\n"), th, false);
        }
        try {
            super.onPermissionRequestCanceled(permissionRequest);
        } catch (Throwable th2) {
            AbstractC1071.m2435(f230, StringFog.decrypt("bJpQqYAJ2qUJi0OqnkDdrAmHUK+VQN3rRoZyo4BE2rhagU2ooEzCvkybVoWTR9CuRY1G\n", "KegixvIps8s=\n"), th2, false);
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onProgressChanged(WebView webView, int i) {
        try {
            this.f231.onProgressChanged(webView, i);
        } catch (Throwable th) {
            AbstractC1071.m2435(f230, StringFog.decrypt("IMOD6hfOtXxF3KXnKYevZgDflPdFgbJCF96W9wCdr1EN0J/iAIo=\n", "ZbHxhWXu3BI=\n"), th, false);
        }
        super.onProgressChanged(webView, i);
    }

    @Override // android.webkit.WebChromeClient
    public final void onReceivedIcon(WebView webView, Bitmap bitmap) {
        try {
            this.f231.onReceivedIcon(webView, bitmap);
        } catch (Throwable th) {
            AbstractC1071.m2435(f230, StringFog.decrypt("KHiSoL2x8J1NZ7Stg/jqhwhkhb3v/vehCGmFprn0/boOZY4=\n", "bQrgz8+RmfM=\n"), th, false);
        }
        super.onReceivedIcon(webView, bitmap);
    }

    @Override // android.webkit.WebChromeClient
    public final void onReceivedTitle(WebView webView, String str) {
        try {
            this.f231.onReceivedTitle(webView, str);
        } catch (Throwable th) {
            AbstractC1071.m2435(f230, StringFog.decrypt("VQ7FCvzc5uAwEeMHwpX8+nUS0heuk+HcdR/SDPiZ69p5CNsA\n", "EHy3ZY78j44=\n"), th, false);
        }
        super.onReceivedTitle(webView, str);
    }

    @Override // android.webkit.WebChromeClient
    public final void onReceivedTouchIconUrl(WebView webView, String str, boolean z) {
        try {
            this.f231.onReceivedTouchIconUrl(webView, str, z);
        } catch (Throwable th) {
            AbstractC1071.m2435(f230, StringFog.decrypt("+ACAeSwr3BudH6Z0EmLGAdgcl2R+ZNsn2BGXfyhu0SHSB5F+F2jaG+gAng==\n", "vXLyFl4LtXU=\n"), th, false);
        }
        super.onReceivedTouchIconUrl(webView, str, z);
    }

    @Override // android.webkit.WebChromeClient
    public final void onRequestFocus(WebView webView) {
        try {
            this.f231.onRequestFocus(webView);
        } catch (Throwable th) {
            AbstractC1071.m2435(f230, StringFog.decrypt("mCCZl6LFq6v9P7+anIyxsbg8jorwiqyXuCOenaORhKq+J5g=\n", "3VLr+NDlwsU=\n"), th, false);
        }
        super.onRequestFocus(webView);
    }

    @Override // android.webkit.WebChromeClient
    public final void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
        try {
            this.f231.onShowCustomView(view, i, customViewCallback);
        } catch (Throwable th) {
            AbstractC1071.m2435(f230, StringFog.decrypt("orudsIZVRgLHpLu9uBxcGIKniq3UGkE/j6aYnIEGWwOKn4a6gw==\n", "58nv3/R1L2w=\n"), th, false);
        }
        super.onShowCustomView(view, i, customViewCallback);
    }

    @Override // android.webkit.WebChromeClient
    public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        try {
            this.f231.onShowCustomView(view, customViewCallback);
        } catch (Throwable th) {
            AbstractC1071.m2435(f230, StringFog.decrypt("Ld50emI/zqVIwVJ3XHbUvw3CY2cwcMmYAMNxVmVs06QF+m9wZw==\n", "aKwGFRAfp8s=\n"), th, false);
        }
        super.onShowCustomView(view, customViewCallback);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onShowFileChooser(WebView webView, ValueCallback valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        try {
            this.f231.onShowFileChooser(webView, valueCallback, fileChooserParams);
        } catch (Throwable th) {
            AbstractC1071.m2435(f230, StringFog.decrypt("bHQDSc4R2nMJayVE8FjAaUxoFFScXt1OQWkGYNVd1l5BaR5V2UM=\n", "KQZxJrwxsx0=\n"), th, false);
        }
        return super.onShowFileChooser(webView, valueCallback, fileChooserParams);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0025  */
    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0497
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Object mo1855(C0116 c0116, String str, ArrayList arrayList, C0943 c0943, C0983 c0983) {
        byte b;
        try {
            int iHashCode = str.hashCode();
            if (iHashCode != 1395849045) {
                if (iHashCode == 1442029578 && str.equals(f229)) {
                    b = 0;
                } else {
                    b = -1;
                }
            } else if (str.equals(f228)) {
                b = 1;
            } else {
                b = -1;
            }
            if (b == 0) {
                return null;
            }
            if (b == 1) {
                return this.f231;
            }
            new C3491q(c0116, c0983, f230, str).m2264(c0116.m1903());
            return null;
        } catch (Exception e) {
            AbstractC0991.m2386(c0116.m1903(), AbstractC0897.m2299("oA==\n", "h3Q58x3snNA=\n", AbstractC0662.m2192("ISAcps8jUoANPgvp2HtAixEmB6faI3KNBhEGu9JuQKsIOwunyUdAiwsgD73ScQWGBSYHv9gjSI0Q\nOgGtnSQ=\n", "ZFJuyb0DJeg=\n", new StringBuilder(), str)), e, null);
        }
    }
}
