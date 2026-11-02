package kotlin;

import com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import com.google.gson.Gson;
import java.util.List;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class zy2 extends yx2 {
    public final cw2 y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zy2(dw2 componentProvider, yf3 signalGenerationMap, p70 cryptoUtil, String adString, CoroutineScope loadScope, CoroutineScope backgroundScope, ks3 traceMetaSet, ex0 flags, g83 rootTraceCreator, String publisherRequestId, j53 requestType, ja1 initializationConfigWrapper, md1 inspectorAdLifecycleMonitor, Gson gson, e01 httpClient, vw3 urlPinger, SharedFlow cancellationChannel, qn appState) {
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

    /* JADX WARN: Code duplicated, block: B:16:0x002b  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.yx2
    public final Object a(String str, tf3 tf3Var, vx2 vx2Var) {
        boolean z;
        List<NativeAd.NativeAdType> nativeAdTypes;
        SignalRequest signalRequest = tf3Var.b;
        BannerRequest bannerRequest = signalRequest instanceof BannerRequest ? (BannerRequest) signalRequest : null;
        NativeSignalRequest nativeSignalRequest = signalRequest instanceof NativeSignalRequest ? (NativeSignalRequest) signalRequest : null;
        if (nativeSignalRequest != null && (nativeAdTypes = nativeSignalRequest.getNativeAdTypes()) != null) {
            z = nativeAdTypes.contains(NativeAd.NativeAdType.BANNER);
        }
        if (bannerRequest == null || !((signalRequest instanceof BannerSignalRequest) || z)) {
            return FlowKt.flowOf(new p005kotlin.Pair(yx2.v, null));
        }
        Object obj = this.y.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        gg0 gg0Var = (gg0) ((fk1) a((mj1) obj, signalRequest, str, tf3Var));
        gg0Var.k = bannerRequest;
        gg0Var.j = new xy2();
        gg0Var.l = new yy2();
        gg0Var.m = Boolean.FALSE;
        kq2.a(gg0Var.b, tf3.class);
        kq2.a(gg0Var.c, String.class);
        kq2.a(gg0Var.d, BaseRequest.class);
        kq2.a(gg0Var.e, j53.class);
        kq2.a(gg0Var.f, Boolean.class);
        kq2.a(gg0Var.g, n03.class);
        kq2.a(gg0Var.h, tn1.class);
        kq2.a(gg0Var.i, md1.class);
        kq2.a(gg0Var.j, g33.class);
        kq2.a(gg0Var.k, BannerRequest.class);
        kq2.a(gg0Var.l, gj1.class);
        kq2.a(gg0Var.m, Boolean.class);
        return ((si1) ((mi1) new hg0(gg0Var.a, gg0Var.b, gg0Var.c, gg0Var.d, gg0Var.e, gg0Var.f, gg0Var.g, gg0Var.h, gg0Var.i, gg0Var.j, gg0Var.k, gg0Var.l, gg0Var.m).D.get())).a(vx2Var);
    }
}
