package kotlin;

import com.google.android.libraries.ads.mobile.sdk.iconad.IconAdRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdRequest;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.SharedFlow;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class fz2 extends px2 {
    public final NativeAdRequest n;
    public final IconAdRequest o;
    public final cw2 p;
    public final int q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fz2(CoroutineScope loadScope, CoroutineScope backgroundScope, NativeAdRequest nativeAdRequest, IconAdRequest iconAdRequest, ks3 traceMetaSet, ex0 flags, g83 rootTraceCreator, String publisherRequestId, j53 requestType, ja1 initializationConfigWrapper, boolean z, md1 inspectorAdLifecycleMonitor, dw2 componentProvider, int i, SharedFlow cancellationChannel, qn appState) {
        super(loadScope, backgroundScope, traceMetaSet, flags, rootTraceCreator, publisherRequestId, requestType, nativeAdRequest, z, initializationConfigWrapper, inspectorAdLifecycleMonitor, cancellationChannel, appState);
        Intrinsics.checkNotNullParameter(loadScope, "loadScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(nativeAdRequest, "nativeAdRequest");
        Intrinsics.checkNotNullParameter(iconAdRequest, "iconAdRequest");
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
        this.n = nativeAdRequest;
        this.o = iconAdRequest;
        this.p = componentProvider;
        this.q = i;
    }

    @Override // kotlin.px2
    public final Object b(Continuation continuation) {
        Object obj = this.p.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        mg0 mg0VarB = ((mg0) ((ok1) a((bn1) obj, this.o))).a(this.o).a(this.n).a(this.q).b();
        mg0VarB.p = new ez2();
        return ((si1) ((mi1) mg0VarB.a().L0.get())).a(continuation);
    }
}
