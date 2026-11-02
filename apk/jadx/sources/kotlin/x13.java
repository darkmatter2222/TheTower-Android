package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class x13 extends l13 {
    public final vo1 n;
    public final boolean o;
    public final md1 p;
    public final pb q;

    /* JADX WARN: Illegal instructions before constructor call */
    public x13(vo1 recursiveAdLoader, ks3 traceMetaSet, BaseRequest baseRequest, j53 requestType, long j, int i, i2 adConfiguration, zy commonConfiguration, ec3 serverTransaction, String renderId, boolean z, md1 inspectorAdLifecycleMonitor, pb adSourceResponseInfoCollector, dw2 placementIdWrapperProvider) {
        Intrinsics.checkNotNullParameter(recursiveAdLoader, "recursiveAdLoader");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(serverTransaction, "serverTransaction");
        Intrinsics.checkNotNullParameter(renderId, "renderId");
        Intrinsics.checkNotNullParameter(inspectorAdLifecycleMonitor, "inspectorAdLifecycleMonitor");
        Intrinsics.checkNotNullParameter(adSourceResponseInfoCollector, "adSourceResponseInfoCollector");
        Intrinsics.checkNotNullParameter(placementIdWrapperProvider, "placementIdWrapperProvider");
        Object obj = placementIdWrapperProvider.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        super(traceMetaSet, baseRequest, requestType, j, i, adConfiguration, commonConfiguration, serverTransaction, renderId, (eo2) obj);
        this.n = recursiveAdLoader;
        this.o = z;
        this.p = inspectorAdLifecycleMonitor;
        this.q = adSourceResponseInfoCollector;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00fa, code lost:
    
        if (r12 == r0) goto L21;
     */
    @Override // kotlin.n2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(boolean r11, p005kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.x13.a(boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
