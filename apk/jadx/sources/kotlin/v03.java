package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest;
import com.google.gson.Gson;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class v03 extends yx2 {
    public final cw2 y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v03(dw2 componentProvider, yf3 signalGenerationMap, p70 cryptoUtil, String adString, CoroutineScope loadScope, CoroutineScope backgroundScope, ks3 traceMetaSet, ex0 flags, g83 rootTraceCreator, String publisherRequestId, j53 requestType, ja1 initializationConfigWrapper, md1 inspectorAdLifecycleMonitor, Gson gson, e01 httpClient, vw3 urlPinger, SharedFlow cancellationChannel, qn appState) {
        super(signalGenerationMap, cryptoUtil, adString, gson, httpClient, urlPinger, loadScope, backgroundScope, traceMetaSet, flags, rootTraceCreator, publisherRequestId, requestType, initializationConfigWrapper, inspectorAdLifecycleMonitor, cancellationChannel, appState);
        Intrinsics.checkNotNullParameter(componentProvider, "componentProvider");
        Intrinsics.checkNotNullParameter(signalGenerationMap, "signalGenerationMap");
        Intrinsics.checkNotNullParameter(cryptoUtil, "cryptoUtil");
        Intrinsics.checkNotNullParameter(adString, "adString");
        Intrinsics.checkNotNullParameter(loadScope, "loadScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(publisherRequestId, "publisherRequestId");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        Intrinsics.checkNotNullParameter(inspectorAdLifecycleMonitor, "inspectorAdLifecycleMonitor");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(urlPinger, "urlPinger");
        Intrinsics.checkNotNullParameter(cancellationChannel, "cancellationChannel");
        Intrinsics.checkNotNullParameter(appState, "appState");
        this.y = componentProvider;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.yx2
    public final Object a(String str, tf3 tf3Var, vx2 vx2Var) {
        SignalRequest signalRequest = tf3Var.b;
        SwipeableInterstitialRequest swipeableInterstitialRequest = signalRequest instanceof SwipeableInterstitialRequest ? (SwipeableInterstitialRequest) signalRequest : null;
        if (swipeableInterstitialRequest == null) {
            return FlowKt.flowOf(new p005kotlin.Pair(yx2.v, null));
        }
        Object obj = this.y.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        ah0 ah0Var = (ah0) ((co1) a((mj1) obj, signalRequest, str, tf3Var));
        ah0Var.j = swipeableInterstitialRequest;
        kq2.a(ah0Var.b, tf3.class);
        kq2.a(ah0Var.c, String.class);
        kq2.a(ah0Var.d, BaseRequest.class);
        kq2.a(ah0Var.e, j53.class);
        kq2.a(ah0Var.f, Boolean.class);
        kq2.a(ah0Var.g, n03.class);
        kq2.a(ah0Var.h, tn1.class);
        kq2.a(ah0Var.i, md1.class);
        kq2.a(ah0Var.j, SwipeableInterstitialRequest.class);
        return ((si1) ((mi1) new bh0(ah0Var.a, ah0Var.b, ah0Var.c, ah0Var.d, ah0Var.e, ah0Var.f, ah0Var.g, ah0Var.h, ah0Var.i, ah0Var.j).A.get())).a(vx2Var);
    }
}
