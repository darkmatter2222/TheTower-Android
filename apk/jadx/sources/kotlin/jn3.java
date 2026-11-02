package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class jn3 implements k8 {
    public final cw2 a;
    public final ks3 b;
    public final BaseRequest c;
    public final SwipeableInterstitialRequest d;
    public final boolean e;
    public final long f;
    public final int g;
    public final String h;
    public final md1 i;
    public final pb j;

    public jn3(dw2 swipeableInterstitialRenderComponentProvider, ks3 traceMetaSet, BaseRequest baseRequest, SwipeableInterstitialRequest swipeableInterstitialRequest, boolean z, long j, int i, String requestId, md1 inspectorAdLifecycleMonitor, pb adSourceResponseInfoCollector) {
        Intrinsics.checkNotNullParameter(swipeableInterstitialRenderComponentProvider, "swipeableInterstitialRenderComponentProvider");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(swipeableInterstitialRequest, "swipeableInterstitialRequest");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(inspectorAdLifecycleMonitor, "inspectorAdLifecycleMonitor");
        Intrinsics.checkNotNullParameter(adSourceResponseInfoCollector, "adSourceResponseInfoCollector");
        this.a = swipeableInterstitialRenderComponentProvider;
        this.b = traceMetaSet;
        this.c = baseRequest;
        this.d = swipeableInterstitialRequest;
        this.e = z;
        this.f = j;
        this.g = i;
        this.h = requestId;
        this.i = inspectorAdLifecycleMonitor;
        this.j = adSourceResponseInfoCollector;
    }

    @Override // kotlin.k8
    public final h8 a(ec3 serverTransaction, i2 adConfiguration) {
        Intrinsics.checkNotNullParameter(serverTransaction, "serverTransaction");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        gn3 gn3Var = (gn3) this.a.get();
        BaseRequest baseRequest = this.c;
        yi0 yi0Var = (yi0) gn3Var;
        yi0Var.getClass();
        baseRequest.getClass();
        yi0Var.g = baseRequest;
        SwipeableInterstitialRequest swipeableInterstitialRequest = this.d;
        swipeableInterstitialRequest.getClass();
        yi0Var.o = swipeableInterstitialRequest;
        adConfiguration.getClass();
        yi0Var.c = adConfiguration;
        yi0Var.h = j53.l;
        zy zyVar = serverTransaction.b.b;
        zyVar.getClass();
        yi0Var.b = zyVar;
        yi0Var.d = serverTransaction;
        n03 n03Var = this.b.a;
        n03Var.getClass();
        yi0Var.j = n03Var;
        tn1 tn1Var = this.b.b;
        tn1Var.getClass();
        yi0Var.k = tn1Var;
        String str = this.h;
        str.getClass();
        yi0Var.i = str;
        yi0Var.e = Long.valueOf(this.f);
        yi0Var.f = Integer.valueOf(this.g);
        yi0Var.l = Boolean.valueOf(this.e);
        md1 md1Var = this.i;
        md1Var.getClass();
        yi0Var.m = md1Var;
        pb pbVar = this.j;
        pbVar.getClass();
        yi0Var.n = pbVar;
        kq2.a(yi0Var.b, zy.class);
        kq2.a(yi0Var.c, i2.class);
        kq2.a(yi0Var.d, ec3.class);
        kq2.a(yi0Var.e, Long.class);
        kq2.a(yi0Var.f, Integer.class);
        kq2.a(yi0Var.g, BaseRequest.class);
        kq2.a(yi0Var.h, j53.class);
        kq2.a(yi0Var.i, String.class);
        kq2.a(yi0Var.j, n03.class);
        kq2.a(yi0Var.k, tn1.class);
        kq2.a(yi0Var.l, Boolean.class);
        kq2.a(yi0Var.m, md1.class);
        kq2.a(yi0Var.n, pb.class);
        kq2.a(yi0Var.o, SwipeableInterstitialRequest.class);
        return (h8) new zi0(yi0Var.a, yi0Var.b, yi0Var.c, yi0Var.d, yi0Var.e, yi0Var.f, yi0Var.g, yi0Var.h, yi0Var.j, yi0Var.k, yi0Var.o).o.get();
    }
}
