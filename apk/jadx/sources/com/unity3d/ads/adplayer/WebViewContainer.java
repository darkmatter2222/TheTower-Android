package com.unity3d.ads.adplayer;

import android.view.InputEvent;
import android.webkit.WebView;
import com.tapjoy.TJAdUnitConstants;
import kotlinx.coroutines.flow.StateFlow;
import org.json.JSONArray;
import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: WebViewContainer.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH¦@¢\u0006\u0002\u0010\nJ\u001e\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH¦@¢\u0006\u0002\u0010\u0010J\u001e\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\tH¦@¢\u0006\u0002\u0010\u0015J\u000e\u0010\u0016\u001a\u00020\u0007H¦@¢\u0006\u0002\u0010\u0017R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u0019X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u0018\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001e0\u0019X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001c¨\u0006\u001f"}, d2 = {"Lcom/unity3d/ads/adplayer/WebViewContainer;", "", "webView", "Landroid/webkit/WebView;", "getWebView", "()Landroid/webkit/WebView;", "loadUrl", "", "url", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "evaluateJavascript", "handlerType", "Lcom/unity3d/ads/adplayer/HandlerType;", TJAdUnitConstants.String.ARGUMENTS, "Lorg/json/JSONArray;", "(Lcom/unity3d/ads/adplayer/HandlerType;Lorg/json/JSONArray;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addJavascriptInterface", "webViewBridgeInterface", "Lcom/unity3d/ads/adplayer/WebViewBridge;", "name", "(Lcom/unity3d/ads/adplayer/WebViewBridge;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "destroy", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "lastInputEvent", "Lkotlinx/coroutines/flow/StateFlow;", "Landroid/view/InputEvent;", "getLastInputEvent", "()Lkotlinx/coroutines/flow/StateFlow;", "isRenderProcessGone", "", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface WebViewContainer {
    Object addJavascriptInterface(WebViewBridge webViewBridge, String str, Continuation<? super Unit> continuation);

    Object destroy(Continuation<? super Unit> continuation);

    Object evaluateJavascript(HandlerType handlerType, JSONArray jSONArray, Continuation<? super Unit> continuation);

    StateFlow<InputEvent> getLastInputEvent();

    WebView getWebView();

    StateFlow<Boolean> isRenderProcessGone();

    Object loadUrl(String str, Continuation<? super Unit> continuation);
}
