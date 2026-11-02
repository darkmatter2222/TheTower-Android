package kotlin;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import java.util.Map;
import kotlinx.coroutines.flow.FlowKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class q13 extends l13 {
    public final bl n;
    public final boolean o;
    public final md1 p;
    public final pb q;

    /* JADX WARN: Illegal instructions before constructor call */
    public q13(bl recursiveAdLoader, ks3 traceMetaSet, BaseRequest baseRequest, j53 requestType, long j, int i, i2 adConfiguration, zy commonConfiguration, ec3 serverTransaction, String renderId, boolean z, md1 inspectorAdLifecycleMonitor, pb adSourceResponseInfoCollector, dw2 placementIdWrapperProvider) {
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
    @Override // kotlin.n2
    public final Object a(boolean z, Continuation continuation) {
        p13 p13Var;
        if (continuation instanceof p13) {
            p13Var = (p13) continuation;
            int i = p13Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                p13Var.c = i - Integer.MIN_VALUE;
            } else {
                p13Var = new p13(this, continuation);
            }
        } else {
            p13Var = new p13(this, continuation);
        }
        p13 p13Var2 = p13Var;
        Object objA = p13Var2.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = p13Var2.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            ds1 ds1Var = ds1.a;
            String strA = ds1.a(this.f.c, "pubid");
            Intrinsics.checkNotNullParameter(strA, "<set-?>");
            this.l = strA;
            h();
            Bundle googleExtrasBundle = g();
            Intrinsics.checkNotNullParameter(googleExtrasBundle, "googleExtrasBundle");
            Map mutableMap = MapsKt.toMutableMap(this.b.getAdSourceExtrasBundles());
            mutableMap.put("com.google.ads.mediation.admob.AdMobAdapter", googleExtrasBundle);
            bl blVar = this.n;
            AdRequest adRequestA = a(googleExtrasBundle, mutableMap);
            j53 j53Var = this.c;
            ks3 ks3Var = this.a;
            boolean z2 = this.o;
            m13 m13Var = this.m;
            md1 md1Var = this.p;
            pb pbVar = this.q;
            p13Var2.c = 1;
            objA = ((dl) blVar).a(adRequestA, j53Var, ks3Var, z2, m13Var, md1Var, pbVar, p13Var2);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objA);
        }
        v01 v01Var = (v01) ((p005kotlin.Pair) objA).component1();
        if (v01Var instanceof q01) {
            return new q01(FlowKt.flowOf(v01Var));
        }
        if (v01Var instanceof i01) {
            return v01Var;
        }
        throw new p005kotlin.NoWhenBranchMatchedException();
    }
}
