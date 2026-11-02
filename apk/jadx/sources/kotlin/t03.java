package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialAdRequest;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.SharedFlow;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class t03 extends px2 {
    public final SwipeableInterstitialAdRequest n;
    public final cw2 o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t03(CoroutineScope loadScope, CoroutineScope backgroundScope, SwipeableInterstitialAdRequest adRequest, ks3 traceMetaSet, ex0 flags, g83 rootTraceCreator, String publisherRequestId, j53 requestType, ja1 initializationConfigWrapper, boolean z, md1 inspectorAdLifecycleMonitor, dw2 componentProvider, SharedFlow cancellationChannel, qn appState) {
        super(loadScope, backgroundScope, traceMetaSet, flags, rootTraceCreator, publisherRequestId, requestType, adRequest, z, initializationConfigWrapper, inspectorAdLifecycleMonitor, cancellationChannel, appState);
        Intrinsics.checkNotNullParameter(loadScope, "loadScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(publisherRequestId, "publisherRequestId");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        Intrinsics.checkNotNullParameter(inspectorAdLifecycleMonitor, "inspectorAdLifecycleMonitor");
        Intrinsics.checkNotNullParameter(componentProvider, "componentProvider");
        Intrinsics.checkNotNullParameter(cancellationChannel, "cancellationChannel");
        Intrinsics.checkNotNullParameter(appState, "appState");
        this.n = adRequest;
        this.o = componentProvider;
    }

    @Override // kotlin.px2
    public final Object b(Continuation continuation) {
        Object obj = this.o.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        eo1 eo1Var = (eo1) a((bn1) obj, this.n);
        SwipeableInterstitialAdRequest swipeableInterstitialAdRequest = this.n;
        ch0 ch0Var = (ch0) eo1Var;
        swipeableInterstitialAdRequest.getClass();
        ch0Var.l = swipeableInterstitialAdRequest;
        kq2.a(ch0Var.b, j53.class);
        kq2.a(ch0Var.c, BaseRequest.class);
        kq2.a(ch0Var.d, n03.class);
        kq2.a(ch0Var.e, tn1.class);
        kq2.a(ch0Var.f, md1.class);
        kq2.a(ch0Var.g, Boolean.class);
        kq2.a(ch0Var.h, m13.class);
        kq2.a(ch0Var.i, Boolean.class);
        kq2.a(ch0Var.j, Boolean.class);
        kq2.a(ch0Var.k, pb.class);
        kq2.a(ch0Var.l, SwipeableInterstitialRequest.class);
        return ((si1) ((mi1) new dh0(ch0Var.a, ch0Var.b, ch0Var.c, ch0Var.d, ch0Var.e, ch0Var.f, ch0Var.g, ch0Var.h, ch0Var.i, ch0Var.j, ch0Var.k, ch0Var.l).G0.get())).a(continuation);
    }
}
