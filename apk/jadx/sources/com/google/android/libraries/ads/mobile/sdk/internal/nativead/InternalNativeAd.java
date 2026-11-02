package com.google.android.libraries.ads.mobile.sdk.internal.nativead;

import android.os.Bundle;
import android.view.ViewGroup;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.internal.webview.PerAdNativeJavscriptEngineJsContext;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import java.util.List;
import java.util.Optional;
import kotlin.as3;
import kotlin.b42;
import kotlin.bn2;
import kotlin.ci1;
import kotlin.eo2;
import kotlin.ex0;
import kotlin.fm0;
import kotlin.hl1;
import kotlin.i2;
import kotlin.im1;
import kotlin.j12;
import kotlin.jm1;
import kotlin.ks3;
import kotlin.nr3;
import kotlin.q02;
import kotlin.r31;
import kotlin.s02;
import kotlin.s93;
import kotlin.t32;
import kotlin.ur3;
import kotlin.v3;
import kotlin.yr;
import kotlin.zy;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.optionals.OptionalsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0017\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;", "Lads_mobile_sdk/ci1;", "Ljava/util/Optional;", "Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;", "jsEngineContext", "Ljava/util/Optional;", "localJsEngineContext", "Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public class InternalNativeAd extends ci1 {
    private final Optional<PerAdNativeJavscriptEngineJsContext> jsEngineContext;
    private PerAdNativeJavscriptEngineJsContext localJsEngineContext;
    private final CoroutineScope n;
    private final s02 o;
    private final j12 p;
    private final t32 q;
    private final b42 r;
    private final hl1 s;
    private final Gson t;
    private final ur3 u;
    private final ex0 v;
    private final nr3 w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InternalNativeAd(CoroutineScope uiScope, String adId, i2 adConfiguration, zy commonConfiguration, ks3 traceMetaSet, Optional webView, v3 adEventEmitter, fm0 delegatingAdListener, s02 nativeAdAssets, j12 nativeAdCore, t32 nativeAdViewPopulator, b42 nativeAdViewabilityTracker, hl1 internalMediaContent, Optional jsEngineContext, bn2 phantomReferences, s93 safeBrowsingManager, Gson gson, ur3 traceLogger, eo2 placementIdWrapper, ex0 flags, BaseRequest baseRequest, nr3 nr3Var) {
        super(adId, adConfiguration, commonConfiguration, traceMetaSet, webView, adEventEmitter, delegatingAdListener, phantomReferences, safeBrowsingManager, placementIdWrapper, baseRequest);
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(adId, "adId");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        Intrinsics.checkNotNullParameter(delegatingAdListener, "delegatingAdListener");
        Intrinsics.checkNotNullParameter(nativeAdAssets, "nativeAdAssets");
        Intrinsics.checkNotNullParameter(nativeAdCore, "nativeAdCore");
        Intrinsics.checkNotNullParameter(nativeAdViewPopulator, "nativeAdViewPopulator");
        Intrinsics.checkNotNullParameter(nativeAdViewabilityTracker, "nativeAdViewabilityTracker");
        Intrinsics.checkNotNullParameter(internalMediaContent, "internalMediaContent");
        Intrinsics.checkNotNullParameter(jsEngineContext, "jsEngineContext");
        Intrinsics.checkNotNullParameter(phantomReferences, "phantomReferences");
        Intrinsics.checkNotNullParameter(safeBrowsingManager, "safeBrowsingManager");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(placementIdWrapper, "placementIdWrapper");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        this.n = uiScope;
        this.o = nativeAdAssets;
        this.p = nativeAdCore;
        this.q = nativeAdViewPopulator;
        this.r = nativeAdViewabilityTracker;
        this.s = internalMediaContent;
        this.jsEngineContext = jsEngineContext;
        this.t = gson;
        this.u = traceLogger;
        this.v = flags;
        this.w = nr3Var;
        this.localJsEngineContext = (PerAdNativeJavscriptEngineJsContext) OptionalsKt.getOrNull(jsEngineContext);
    }

    @Override // kotlin.ci1, kotlin.zh1
    public final Object a(Continuation continuation) {
        this.localJsEngineContext = (PerAdNativeJavscriptEngineJsContext) OptionalsKt.getOrNull(this.jsEngineContext);
        Object objA = super.a(continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    public final void a(Bundle clickData) {
        Intrinsics.checkNotNullParameter(clickData, "clickData");
        this.p.a(clickData);
    }

    public final void a(ViewGroup mediaViewContainer) {
        Intrinsics.checkNotNullParameter(mediaViewContainer, "mediaViewContainer");
        if (this.o.b != q02.CUSTOM_NATIVE || this.q.a(mediaViewContainer)) {
            return;
        }
        mediaViewContainer.removeAllViews();
    }

    public final void b(Bundle signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        r31 r31Var = this.o.j;
        if (r31Var != null) {
            try {
                BuildersKt__Builders_commonKt.launch$default(this.n, null, null, new jm1(r31Var, this.t.toJsonTree(signals).getAsJsonObject(), null), 3, null);
            } catch (Exception e) {
                ((as3) this.u).a("Failed to parse recordEvent data for Immersive", (Throwable) e);
            }
        }
    }

    public final boolean c(Bundle impressionData) {
        Intrinsics.checkNotNullParameter(impressionData, "impressionData");
        j12 j12Var = this.p;
        j12Var.getClass();
        Intrinsics.checkNotNullParameter(impressionData, "impressionData");
        if (j12Var.a.getAndSet(true)) {
            return false;
        }
        return j12Var.b(impressionData);
    }

    public final void d(Bundle touchEventData) {
        Intrinsics.checkNotNullParameter(touchEventData, "touchEventData");
        this.p.c(touchEventData);
    }

    @Override // kotlin.ci1, kotlin.zh1
    public final void destroy() {
        super.destroy();
        this.p.a();
    }

    @Override // kotlin.ci1, kotlin.zh1
    public final JsonObject g() {
        return this.o.w;
    }

    public final void m() {
        List list = this.o.p;
    }

    public final void n() {
        this.p.l();
    }

    /* JADX INFO: renamed from: o, reason: from getter */
    public final nr3 getW() {
        return this.w;
    }

    /* JADX INFO: renamed from: p, reason: from getter */
    public final hl1 getS() {
        return this.s;
    }

    /* JADX INFO: renamed from: q, reason: from getter */
    public final s02 getO() {
        return this.o;
    }

    /* JADX INFO: renamed from: r, reason: from getter */
    public final j12 getP() {
        return this.p;
    }

    /* JADX INFO: renamed from: s, reason: from getter */
    public final t32 getQ() {
        return this.q;
    }

    /* JADX INFO: renamed from: t, reason: from getter */
    public final b42 getR() {
        return this.r;
    }

    public final boolean u() {
        return this.p.j();
    }

    public final void v() {
        this.p.k();
    }

    public final boolean w() {
        ex0 ex0Var = this.v;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:native_ad_view:on_intercept_touch_event:enabled", C3510b4.i.W);
        return ((Boolean) ex0Var.a("gads:native_ad_view:on_intercept_touch_event:enabled", Boolean.TRUE, yr.b)).booleanValue();
    }

    public final void x() {
        BuildersKt__Builders_commonKt.launch$default(this.n, null, null, new im1(this, null), 3, null);
    }

    public final boolean y() {
        ex0 ex0Var = this.v;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:report_touch_event_on_intercept_touch:enabled", C3510b4.i.W);
        return ((Boolean) ex0Var.a("gads:report_touch_event_on_intercept_touch:enabled", Boolean.FALSE, yr.b)).booleanValue();
    }
}
