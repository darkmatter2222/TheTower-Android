package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.iconad.IconRequest;
import com.google.android.libraries.ads.mobile.sdk.iconad.IconSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import com.google.gson.Gson;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class iz2 extends yx2 {
    public final cw2 y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public iz2(dw2 componentProvider, yf3 signalGenerationMap, p70 cryptoUtil, String adString, CoroutineScope loadScope, CoroutineScope backgroundScope, ks3 traceMetaSet, ex0 flags, g83 rootTraceCreator, String publisherRequestId, j53 requestType, ja1 initializationConfigWrapper, md1 inspectorAdLifecycleMonitor, Gson gson, e01 httpClient, vw3 urlPinger, SharedFlow cancellationChannel, qn appState) {
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
        if (!(signalRequest instanceof IconSignalRequest)) {
            return FlowKt.flowOf(new p005kotlin.Pair(yx2.v, null));
        }
        Object obj = this.y.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        nk1 nk1Var = (nk1) a((mj1) obj, signalRequest, str, tf3Var);
        IconRequest iconRequest = (IconRequest) signalRequest;
        kg0 kg0Var = (kg0) nk1Var;
        iconRequest.getClass();
        kg0Var.k = iconRequest;
        IconSignalRequest iconSignalRequest = (IconSignalRequest) signalRequest;
        Intrinsics.checkNotNullParameter(iconSignalRequest, "<this>");
        NativeSignalRequest.Builder nativeAdTypes = new NativeSignalRequest.Builder(iconSignalRequest.getSignalType()).setNativeAdTypes(CollectionsKt.listOf(NativeAd.NativeAdType.NATIVE));
        if (iconSignalRequest.getIsImageLoadingDisabled()) {
            nativeAdTypes.disableImageDownloading();
        }
        nativeAdTypes.setAdChoicesPlacement(iconSignalRequest.getAdChoicesPlacement());
        NativeSignalRequest nativeSignalRequestBuild = nativeAdTypes.build();
        nativeSignalRequestBuild.getClass();
        kg0Var.j = nativeSignalRequestBuild;
        kg0Var.l = Boolean.FALSE;
        kg0Var.m = new hz2();
        kq2.a(kg0Var.b, tf3.class);
        kq2.a(kg0Var.c, String.class);
        kq2.a(kg0Var.d, BaseRequest.class);
        kq2.a(kg0Var.e, j53.class);
        kq2.a(kg0Var.f, Boolean.class);
        kq2.a(kg0Var.g, n03.class);
        kq2.a(kg0Var.h, tn1.class);
        kq2.a(kg0Var.i, md1.class);
        kq2.a(kg0Var.j, NativeRequest.class);
        kq2.a(kg0Var.k, IconRequest.class);
        kq2.a(kg0Var.l, Boolean.class);
        kq2.a(kg0Var.m, gj1.class);
        return ((si1) ((mi1) new lg0(kg0Var.a, kg0Var.b, kg0Var.c, kg0Var.d, kg0Var.e, kg0Var.f, kg0Var.g, kg0Var.h, kg0Var.i, kg0Var.j, kg0Var.l, kg0Var.m).G.get())).a(vx2Var);
    }
}
