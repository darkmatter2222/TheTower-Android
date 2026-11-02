package kotlin;

import android.os.Build;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.ironsource.Ue;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class c22 extends n2 {
    public final mb0 l;
    public final cw2 m;
    public final cw2 n;
    public final t52 o;
    public final g12 p;
    public final NativeRequest q;
    public final bq2 r;
    public final g83 s;
    public final CoroutineScope t;
    public final int u;
    public final cw2 v;

    /* JADX WARN: Illegal instructions before constructor call */
    public c22(mb0 csiTicker, dw2 adComponentProvider, dw2 mediaAdComponentProvider, t52 nativeJavascriptEngineFactory, g12 nativeAdAssetsFactory, NativeRequest nativeRequest, bq2 preRenderNativeJavascriptEngineConfigurator, g83 rootTraceCreator, ks3 traceMetaSet, BaseRequest baseRequest, j53 requestType, long j, int i, i2 adConfiguration, zy commonConfiguration, ec3 serverTransaction, String renderId, CoroutineScope backgroundScope, int i2, dw2 placementIdWrapperProvider) {
        Intrinsics.checkNotNullParameter(csiTicker, "csiTicker");
        Intrinsics.checkNotNullParameter(adComponentProvider, "adComponentProvider");
        Intrinsics.checkNotNullParameter(mediaAdComponentProvider, "mediaAdComponentProvider");
        Intrinsics.checkNotNullParameter(nativeJavascriptEngineFactory, "nativeJavascriptEngineFactory");
        Intrinsics.checkNotNullParameter(nativeAdAssetsFactory, "nativeAdAssetsFactory");
        Intrinsics.checkNotNullParameter(nativeRequest, "nativeRequest");
        Intrinsics.checkNotNullParameter(preRenderNativeJavascriptEngineConfigurator, "preRenderNativeJavascriptEngineConfigurator");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(serverTransaction, "serverTransaction");
        Intrinsics.checkNotNullParameter(renderId, "renderId");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(placementIdWrapperProvider, "placementIdWrapperProvider");
        Object obj = placementIdWrapperProvider.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        super(traceMetaSet, baseRequest, requestType, j, i, adConfiguration, commonConfiguration, serverTransaction, renderId, (eo2) obj);
        this.l = csiTicker;
        this.m = adComponentProvider;
        this.n = mediaAdComponentProvider;
        this.o = nativeJavascriptEngineFactory;
        this.p = nativeAdAssetsFactory;
        this.q = nativeRequest;
        this.r = preRenderNativeJavascriptEngineConfigurator;
        this.s = rootTraceCreator;
        this.t = backgroundScope;
        this.u = i2;
        this.v = placementIdWrapperProvider;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:39:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:41:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:43:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:48:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00de, code lost:
    
        if (r12 == r1) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00f8, code lost:
    
        if (r12 == r1) goto L50;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object a(kotlin.c22 r11, p005kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.c22.a(ads_mobile_sdk.c22, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(q52 q52Var, i2 i2Var, Continuation continuation) {
        x12 x12Var;
        JsonArray jsonArrayE;
        if (continuation instanceof x12) {
            x12Var = (x12) continuation;
            int i = x12Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                x12Var.c = i - Integer.MIN_VALUE;
            } else {
                x12Var = new x12(this, continuation);
            }
        } else {
            x12Var = new x12(this, continuation);
        }
        Object objA = x12Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = x12Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("isNonagon", Boxing.boxBoolean(true));
            if (Build.VERSION.SDK_INT >= 30) {
                jsonObject.addProperty("skipDeepLinkValidation", Boxing.boxBoolean(true));
            }
            JsonObject jsonObject2 = new JsonObject();
            vc1 vc1Var = i2Var.J;
            Intrinsics.checkNotNull(vc1Var);
            jsonObject2.add(Ue.n, vc1Var.d);
            jsonObject2.add("sdk_params", jsonObject);
            x12Var.c = 1;
            q52Var.getClass();
            String string = jsonObject2.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            objA = q52Var.a("google.afma.nativeAds.preProcessJson", string, x12Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objA);
        }
        v01 v01Var = (v01) objA;
        if (v01Var instanceof i01) {
            return (i01) v01Var;
        }
        Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
        JsonObject jsonObject3 = (JsonObject) ((q01) v01Var).b;
        ds1 ds1Var = ds1.a;
        if (!ds1.a(jsonObject3, "success", false)) {
            return new m01("Process native ad json failed", kk1.INTERNAL_ERROR);
        }
        JsonObject jsonObjectA = ds1.a(jsonObject3, "json", (JsonObject) null);
        if (jsonObjectA == null || (jsonArrayE = ds1.e(jsonObjectA, "ads")) == null) {
            return new m01("Invalid processed native ad json", kk1.INTERNAL_ERROR);
        }
        return jsonArrayE.isEmpty() ? new n01((String) null, 3) : new q01(jsonArrayE);
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0260  */
    /* JADX WARN: Code duplicated, block: B:45:0x0263  */
    /* JADX WARN: Code duplicated, block: B:47:0x0266  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0275, code lost:
    
        if (r6.a(r5, r3) == r4) goto L50;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.google.gson.JsonObject r17, kotlin.q52 r18, com.google.android.libraries.ads.mobile.sdk.internal.webview.PerAdNativeJavscriptEngineJsContext r19, p005kotlin.coroutines.Continuation r20) {
        /*
            Method dump skipped, instruction units count: 648
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.c22.a(com.google.gson.JsonObject, ads_mobile_sdk.q52, com.google.android.libraries.ads.mobile.sdk.internal.webview.PerAdNativeJavscriptEngineJsContext, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlin.n2
    public final Object a(boolean z, Continuation continuation) {
        return a(this, continuation);
    }

    @Override // kotlin.j2
    public final boolean b() {
        vc1 vc1Var = this.f.J;
        return (vc1Var != null ? vc1Var.d : null) != null;
    }
}
