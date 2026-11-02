package kotlin;

import com.google.android.libraries.ads.mobile.sdk.appopen.AppOpenSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import com.google.gson.Gson;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class by2 extends yx2 {
    public final cw2 y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public by2(dw2 componentProvider, yf3 signalGenerationMap, p70 cryptoUtil, String adString, CoroutineScope loadScope, CoroutineScope backgroundScope, ks3 traceMetaSet, ex0 flags, g83 rootTraceCreator, String publisherRequestId, j53 requestType, ja1 initializationConfigWrapper, md1 inspectorAdLifecycleMonitor, Gson gson, e01 httpClient, vw3 urlPinger, SharedFlow cancellationChannel, qn appState) {
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

    @Override // kotlin.yx2
    public final Object a(String str, tf3 tf3Var, vx2 vx2Var) {
        SignalRequest signalRequest = tf3Var.b;
        if (!(signalRequest instanceof AppOpenSignalRequest)) {
            return FlowKt.flowOf(new p005kotlin.Pair(yx2.v, null));
        }
        Object obj = this.y.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        cg0 cg0Var = (cg0) ((uj1) a((mj1) obj, signalRequest, str, tf3Var));
        kq2.a(cg0Var.b, tf3.class);
        kq2.a(cg0Var.c, String.class);
        kq2.a(cg0Var.d, BaseRequest.class);
        kq2.a(cg0Var.e, j53.class);
        kq2.a(cg0Var.f, Boolean.class);
        kq2.a(cg0Var.g, n03.class);
        kq2.a(cg0Var.h, tn1.class);
        kq2.a(cg0Var.i, md1.class);
        return ((si1) ((mi1) new dg0(cg0Var.a, cg0Var.b, cg0Var.c, cg0Var.d, cg0Var.e, cg0Var.f, cg0Var.g, cg0Var.h, cg0Var.i).A.get())).a(vx2Var);
    }
}
