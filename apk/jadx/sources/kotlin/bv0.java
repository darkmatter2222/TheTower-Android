package kotlin;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig;
import com.google.android.libraries.ads.mobile.sdk.nativead.DisplayOpenMeasurement;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import com.google.common.base.Splitter;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class bv0 extends j12 {
    public final Gson A;
    public final ur3 B;
    public final eo2 C;
    public Point D;
    public Point E;
    public long F;
    public long G;
    public final AtomicBoolean H;
    public final JsonObject g;
    public final CoroutineScope h;
    public final CoroutineScope i;
    public final rb j;
    public final s02 k;
    public final k32 l;
    public final NativeRequest m;
    public final g83 n;
    public final ks3 o;
    public final tx p;
    public final q52 q;
    public final vf2 r;
    public final fm0 s;
    public final n72 t;
    public final t72 u;
    public final j53 v;
    public final i2 w;
    public final ja1 x;
    public final ex0 y;
    public final s93 z;

    public bv0(JsonObject nativeAdJson, CoroutineScope uiScope, CoroutineScope backgroundScope, rb adSpamClient, s02 nativeAdAssets, k32 nativeAdUtil, NativeRequest nativeRequest, g83 rootTraceCreator, ks3 traceMetaSet, tx clock, q52 nativeJavascriptEngine, vf2 omidMonitor, fm0 delegatingAdEventListener, d63 urlPinger, v3 adEventEmitter, n72 nativeOnePointFiveOverlayFactory, t72 nativePolicyValidatorOverlayFactory, j53 requestType, i2 adConfiguration, ja1 initializationConfigWrapper, ex0 flags, s93 safeBrowsingManager, Gson gson, ur3 traceLogger, eo2 placementIdWrapper) {
        Intrinsics.checkNotNullParameter(nativeAdJson, "nativeAdJson");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(adSpamClient, "adSpamClient");
        Intrinsics.checkNotNullParameter(nativeAdAssets, "nativeAdAssets");
        Intrinsics.checkNotNullParameter(nativeAdUtil, "nativeAdUtil");
        Intrinsics.checkNotNullParameter(nativeRequest, "nativeRequest");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(nativeJavascriptEngine, "nativeJavascriptEngine");
        Intrinsics.checkNotNullParameter(omidMonitor, "omidMonitor");
        Intrinsics.checkNotNullParameter(delegatingAdEventListener, "delegatingAdEventListener");
        Intrinsics.checkNotNullParameter(urlPinger, "urlPinger");
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        Intrinsics.checkNotNullParameter(nativeOnePointFiveOverlayFactory, "nativeOnePointFiveOverlayFactory");
        Intrinsics.checkNotNullParameter(nativePolicyValidatorOverlayFactory, "nativePolicyValidatorOverlayFactory");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(safeBrowsingManager, "safeBrowsingManager");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(placementIdWrapper, "placementIdWrapper");
        this.g = nativeAdJson;
        this.h = uiScope;
        this.i = backgroundScope;
        this.j = adSpamClient;
        this.k = nativeAdAssets;
        this.l = nativeAdUtil;
        this.m = nativeRequest;
        this.n = rootTraceCreator;
        this.o = traceMetaSet;
        this.p = clock;
        this.q = nativeJavascriptEngine;
        this.r = omidMonitor;
        this.s = delegatingAdEventListener;
        this.t = nativeOnePointFiveOverlayFactory;
        this.u = nativePolicyValidatorOverlayFactory;
        this.v = requestType;
        this.w = adConfiguration;
        this.x = initializationConfigWrapper;
        this.y = flags;
        this.z = safeBrowsingManager;
        this.A = gson;
        this.B = traceLogger;
        this.C = placementIdWrapper;
        this.D = new Point();
        this.E = new Point();
        new AtomicBoolean(false);
        this.H = new AtomicBoolean(false);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object a(bv0 bv0Var, o32 o32Var, Continuation continuation) {
        yu0 yu0Var;
        WindowManager windowManager;
        bv0Var.getClass();
        if (continuation instanceof yu0) {
            yu0Var = (yu0) continuation;
            int i = yu0Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                yu0Var.e = i - Integer.MIN_VALUE;
            } else {
                yu0Var = new yu0(bv0Var, continuation);
            }
        } else {
            yu0Var = new yu0(bv0Var, continuation);
        }
        Object objA = yu0Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = yu0Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            if (bv0Var.w.r0) {
                InitializationConfig initializationConfigA = bv0Var.x.a();
                if (!(initializationConfigA != null ? initializationConfigA.getNativeAdDebuggerDisabled() : false)) {
                    FrameLayout frameLayoutC = ((p32) o32Var).c();
                    Context context = frameLayoutC != null ? frameLayoutC.getContext() : null;
                    Activity activity = context instanceof Activity ? (Activity) context : null;
                    if (activity == null) {
                        return p005kotlin.Unit.INSTANCE;
                    }
                    windowManager = (WindowManager) activity.getSystemService(WindowManager.class);
                    t72 t72Var = bv0Var.u;
                    yu0Var.a = bv0Var;
                    yu0Var.b = windowManager;
                    yu0Var.e = 1;
                    t72Var.getClass();
                    objA = t72.a(t72Var, yu0Var);
                    if (objA == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            }
            return p005kotlin.Unit.INSTANCE;
        }
        if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        WindowManager windowManager2 = yu0Var.b;
        bv0 bv0Var2 = yu0Var.a;
        p005kotlin.ResultKt.throwOnFailure(objA);
        windowManager = windowManager2;
        bv0Var = bv0Var2;
        v01 v01Var = (v01) objA;
        if (v01Var instanceof i01) {
            return p005kotlin.Unit.INSTANCE;
        }
        Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
        r31 r31Var = (r31) ((q01) v01Var).b;
        k32 k32Var = bv0Var.l;
        k32Var.getClass();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 0, 0, -2);
        ex0 ex0Var = k32Var.b;
        layoutParams.flags = ((Number) ex0Var.a("gads:policy_validator_layoutparam:flags", by0.a(ex0Var, "gads:policy_validator_layoutparam:flags", C3510b4.i.W, 808), yr.f)).intValue();
        layoutParams.type = 2;
        layoutParams.gravity = 8388659;
        windowManager.addView(r31Var, layoutParams);
        WeakReference weakReference = new WeakReference(r31Var);
        Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
        bv0Var.e = weakReference;
        return p005kotlin.Unit.INSTANCE;
    }

    public static void a(bv0 bv0Var, FrameLayout frameLayout, g32 g32Var, String str, JsonObject jsonObject, boolean z, int i) {
        if ((i & 32) != 0) {
            z = false;
        }
        BuildersKt__Builders_commonKt.launch$default(bv0Var.h, null, null, new qu0(bv0Var, g32Var, jsonObject, null, str, frameLayout, z, null), 3, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object b(bv0 bv0Var, o32 o32Var, Continuation continuation) {
        zu0 zu0Var;
        FrameLayout frameLayoutD;
        AtomicBoolean atomicBoolean;
        bv0Var.getClass();
        if (continuation instanceof zu0) {
            zu0Var = (zu0) continuation;
            int i = zu0Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                zu0Var.e = i - Integer.MIN_VALUE;
            } else {
                zu0Var = new zu0(bv0Var, continuation);
            }
        } else {
            zu0Var = new zu0(bv0Var, continuation);
        }
        Object objA = zu0Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zu0Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            if (bv0Var.v == j53.g) {
                return p005kotlin.Unit.INSTANCE;
            }
            ds1 ds1Var = ds1.a;
            Boolean boolBoxBoolean = null;
            JsonObject jsonObjectA = ds1.a(bv0Var.g, "overlay", (JsonObject) null);
            if (jsonObjectA == null || jsonObjectA.isEmpty()) {
                return p005kotlin.Unit.INSTANCE;
            }
            r31 r31Var = (r31) bv0Var.d.get();
            if (r31Var != null && (atomicBoolean = r31Var.k) != null) {
                boolBoxBoolean = Boxing.boxBoolean(atomicBoolean.get());
            }
            if (r31Var != null && Intrinsics.areEqual(boolBoxBoolean, Boxing.boxBoolean(false))) {
                return p005kotlin.Unit.INSTANCE;
            }
            if (r31Var != null && Intrinsics.areEqual(boolBoxBoolean, Boxing.boxBoolean(true)) && (frameLayoutD = ((p32) o32Var).d()) != null) {
                frameLayoutD.removeView(r31Var);
            }
            n72 n72Var = bv0Var.t;
            zu0Var.a = bv0Var;
            zu0Var.b = o32Var;
            zu0Var.e = 1;
            n72Var.getClass();
            objA = n72.a(n72Var, zu0Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            o32Var = zu0Var.b;
            bv0Var = zu0Var.a;
            p005kotlin.ResultKt.throwOnFailure(objA);
        }
        v01 v01Var = (v01) objA;
        if (v01Var instanceof i01) {
            return p005kotlin.Unit.INSTANCE;
        }
        Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
        r31 r31Var2 = (r31) ((q01) v01Var).b;
        WeakReference weakReference = new WeakReference(r31Var2);
        bv0Var.getClass();
        Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
        bv0Var.d = weakReference;
        FrameLayout frameLayoutD2 = ((p32) o32Var).d();
        if (frameLayoutD2 != null) {
            frameLayoutD2.addView(r31Var2);
        }
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.j12
    public final JsonObject a(FrameLayout frameLayout, ImageView.ScaleType mediaViewScaleType, LinkedHashMap assetViews) {
        Intrinsics.checkNotNullParameter(assetViews, "assetViews");
        Intrinsics.checkNotNullParameter(mediaViewScaleType, "mediaViewScaleType");
        g32 g32VarA = f32.a(this.n, this.o, this.l, frameLayout, assetViews, mediaViewScaleType);
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("asset_view_signal", g32VarA.a);
        jsonObject.add("ad_view_signal", g32VarA.b);
        jsonObject.add("scroll_view_signal", g32VarA.c);
        jsonObject.add("lock_screen_signal", g32VarA.d);
        return jsonObject;
    }

    public final String a(View view, Map map) {
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            if (Intrinsics.areEqual(view, (View) ((WeakReference) entry.getValue()).get())) {
                return str;
            }
        }
        q02 q02Var = this.k.b;
        if (q02Var != null && ou0.a[q02Var.ordinal()] == 1) {
            return "3099";
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String a(FrameLayout frameLayout) {
        g83 g83Var = this.n;
        s11 s11Var = s11.CUI_NAME_VIEW_SIGNALS;
        ks3 ks3Var = this.o;
        List listEmptyList = CollectionsKt.emptyList();
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                String strA = this.j.a(frameLayout);
                if (strA instanceof i01) {
                    xs3.a((i01) strA, false);
                }
                CloseableKt.closeFinally(tu2VarA, null);
                return strA;
            } catch (Throwable th) {
                try {
                    tu2VarA.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        tu2VarA.a(th);
                    }
                    if (th instanceof TimeoutCancellationException) {
                        throw new i21(th);
                    }
                    if (th instanceof CancellationException) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.closeFinally(tu2VarA, th2);
                        throw th3;
                    }
                }
            }
        }
        rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
        try {
            String strA2 = this.j.a(frameLayout);
            if (strA2 instanceof i01) {
                xs3.a((i01) strA2, false);
            }
            CloseableKt.closeFinally(rr3VarA, null);
            return strA2;
        } catch (Throwable th4) {
            try {
                rr3VarA.b(th4);
                if (th4 instanceof v24) {
                    throw th4;
                }
                if (!(th4 instanceof TimeoutCancellationException) && !(th4 instanceof CancellationException)) {
                    rr3VarA.a(th4);
                }
                if (th4 instanceof TimeoutCancellationException) {
                    throw new i21(th4);
                }
                if (th4 instanceof CancellationException) {
                    throw new wz0(th4);
                }
                if (th4 instanceof w01) {
                    throw th4;
                }
                throw new b01(th4);
            } catch (Throwable th5) {
                try {
                    throw th5;
                } catch (Throwable th6) {
                    CloseableKt.closeFinally(rr3VarA, th5);
                    throw th6;
                }
            }
        }
    }

    @Override // kotlin.j12
    public final void a() {
    }

    @Override // kotlin.j12
    public final void a(Bundle clickData) {
        Intrinsics.checkNotNullParameter(clickData, "clickData");
        JsonObject asJsonObject = null;
        if (!b("click_reporting")) {
            Splitter splitter = f01.a;
            f01.a("The ad slot cannot handle external click events. You must be in the allow list to be able to report your click events.", (Throwable) null);
            return;
        }
        Bundle bundle = clickData.getBundle("click_signal");
        String string = bundle != null ? bundle.getString("asset_id") : null;
        try {
            asJsonObject = this.A.toJsonTree(clickData).getAsJsonObject();
        } catch (Exception e) {
            ((as3) this.B).a("Failed to parse click data for Immersive", (Throwable) e);
        }
        BuildersKt__Builders_commonKt.launch$default(this.h, null, null, new qu0(this, null, null, asJsonObject, string, null, false, null), 3, null);
    }

    @Override // kotlin.j12
    public final void a(View view, int i) {
        boolean z = this.m.getCustomClickGestureDirection() != null;
        ds1 ds1Var = ds1.a;
        boolean zA = ds1.a(this.g, "allow_sdk_custom_click_gesture", false);
        JsonObject jsonObject = null;
        if (!zA) {
            if (z || !j()) {
                Splitter splitter = f01.a;
                f01.c("Custom click reporting failed. Ad unit id is not in the allow list.", null);
                return;
            } else if (!this.H.get()) {
                Splitter splitter2 = f01.a;
                f01.c("Custom click reporting failed. enableCustomClickGesture is not set.", null);
                return;
            }
        }
        o32 o32Var = (o32) this.c.get();
        if (o32Var == null) {
            f01.a("Ad should be associated with an ad view before calling performClickForCustomGesture()", null, null, 6);
            return;
        }
        g83 g83Var = this.n;
        ks3 ks3Var = this.o;
        k32 k32Var = this.l;
        p32 p32Var = (p32) o32Var;
        FrameLayout frameLayoutC = p32Var.c();
        Map mapB = p32Var.b();
        ImageView.ScaleType scaleTypeE = p32Var.e();
        if (scaleTypeE == null) {
            scaleTypeE = ImageView.ScaleType.CENTER_INSIDE;
        }
        g32 g32VarA = f32.a(g83Var, ks3Var, k32Var, frameLayoutC, mapB, scaleTypeE);
        String strA = a(view, p32Var.b());
        JsonObject jsonObjectA = this.l.a(strA, this.E, this.D);
        if (zA) {
            JsonObject jsonObject2 = this.g;
            k32 k32Var2 = this.l;
            Point point = this.E;
            Point point2 = this.D;
            k32Var2.getClass();
            try {
                JsonObject jsonObject3 = new JsonObject();
                if (point != null) {
                    jsonObject3.addProperty("x", Integer.valueOf(point.x));
                    jsonObject3.addProperty("y", Integer.valueOf(point.y));
                }
                JsonObject jsonObject4 = new JsonObject();
                if (point2 != null) {
                    jsonObject4.addProperty("x", Integer.valueOf(point2.x));
                    jsonObject4.addProperty("y", Integer.valueOf(point2.y));
                }
                JsonObject jsonObject5 = new JsonObject();
                jsonObject5.add("start_point", jsonObject3);
                jsonObject5.add("end_point", jsonObject4);
                jsonObject5.addProperty("duration_ms", Integer.valueOf(i));
                jsonObject = jsonObject5;
            } catch (Exception e) {
                Splitter splitter3 = f01.a;
                f01.a("Error occurred while grabbing custom click gesture signals.", e);
            }
            jsonObject2.add("custom_click_gesture_signal", jsonObject);
        }
        a(this, p32Var.c(), g32VarA, strA, jsonObjectA, true, 16);
    }

    @Override // kotlin.j12
    public final void a(View clickedView, FrameLayout frameLayout, LinkedHashMap assetViews, ImageView.ScaleType mediaViewScaleType) {
        Intrinsics.checkNotNullParameter(clickedView, "clickedView");
        Intrinsics.checkNotNullParameter(assetViews, "assetViews");
        Intrinsics.checkNotNullParameter(mediaViewScaleType, "mediaViewScaleType");
        BuildersKt__Builders_commonKt.launch$default(this.h, null, null, new pu0(this, null), 3, null);
        g32 g32VarA = f32.a(this.n, this.o, this.l, frameLayout, assetViews, mediaViewScaleType);
        String strA = a(clickedView, assetViews);
        a(this, frameLayout, g32VarA, strA, this.l.a(strA, this.E, this.D), false, 48);
    }

    @Override // kotlin.j12
    public final void a(FrameLayout frameLayout, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        this.l.getClass();
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        int[] iArr = new int[2];
        if (frameLayout != null) {
            frameLayout.getLocationOnScreen(iArr);
        }
        this.D = new Point(((int) motionEvent.getRawX()) - iArr[0], ((int) motionEvent.getRawY()) - iArr[1]);
        this.p.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.G = jCurrentTimeMillis;
        if (motionEvent.getAction() == 0) {
            this.F = jCurrentTimeMillis;
            this.E = this.D;
        }
        MotionEvent inputEvent = MotionEvent.obtain(motionEvent);
        Point point = this.D;
        inputEvent.setLocation(point.x, point.y);
        rb rbVar = this.j;
        Intrinsics.checkNotNull(inputEvent);
        rbVar.getClass();
        Intrinsics.checkNotNullParameter(inputEvent, "inputEvent");
        rbVar.g().a(inputEvent);
        inputEvent.recycle();
    }

    @Override // kotlin.j12
    public final void a(FrameLayout nativeAdView, ImageView.ScaleType mediaviewScaleType, Map assetViews) {
        Intrinsics.checkNotNullParameter(nativeAdView, "nativeAdView");
        Intrinsics.checkNotNullParameter(assetViews, "assetViews");
        Intrinsics.checkNotNullParameter(mediaviewScaleType, "mediaviewScaleType");
        BuildersKt__Builders_commonKt.launch$default(this.h, null, null, new ru0(this, null), 3, null);
        g32 g32VarA = f32.a(this.n, this.o, this.l, nativeAdView, assetViews, mediaviewScaleType);
        String strA = a(nativeAdView);
        boolean z = false;
        if (this.w.r0) {
            InitializationConfig initializationConfigA = this.x.a();
            z = !(initializationConfigA != null ? initializationConfigA.getNativeAdDebuggerDisabled() : false);
        }
        BuildersKt__Builders_commonKt.launch$default(this.h, null, null, new su0(this, g32VarA, null, strA, z, null), 3, null);
    }

    @Override // kotlin.j12
    public final void a(FrameLayout frameLayout, LinkedHashMap assetViews) {
        Intrinsics.checkNotNullParameter(assetViews, "assetViews");
        WeakReference weakReference = new WeakReference(null);
        Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
        this.c = weakReference;
        WeakReference weakReference2 = new WeakReference(null);
        Intrinsics.checkNotNullParameter(weakReference2, "<set-?>");
        this.d = weakReference2;
        this.D = new Point();
        this.E = new Point();
    }

    @Override // kotlin.j12
    public final void a(String assetName) {
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        a(this, null, null, assetName, null, false, 48);
    }

    @Override // kotlin.j12
    public final void a(WeakReference nativeAdViewContainer, FrameLayout frameLayout, LinkedHashMap assetViews, View.OnTouchListener touchListener, View.OnClickListener clickListener) {
        Intrinsics.checkNotNullParameter(nativeAdViewContainer, "nativeAdViewContainer");
        Intrinsics.checkNotNullParameter(assetViews, "assetViews");
        Intrinsics.checkNotNullParameter(touchListener, "touchListener");
        Intrinsics.checkNotNullParameter(clickListener, "clickListener");
        Intrinsics.checkNotNullParameter(nativeAdViewContainer, "<set-?>");
        this.c = nativeAdViewContainer;
        this.D = new Point();
        this.E = new Point();
        if (frameLayout != null) {
            BuildersKt__Builders_commonKt.launch$default(this.i, null, null, new av0(this, frameLayout, nativeAdViewContainer, null), 3, null);
        }
        if (frameLayout != null) {
            frameLayout.setOnTouchListener(touchListener);
            frameLayout.setClickable(true);
            frameLayout.setOnClickListener(clickListener);
        }
        Iterator it = assetViews.entrySet().iterator();
        while (it.hasNext()) {
            View view = (View) ((WeakReference) ((Map.Entry) it.next()).getValue()).get();
            if (view != null) {
                view.setOnTouchListener(touchListener);
                view.setClickable(true);
                view.setOnClickListener(clickListener);
            }
        }
    }

    @Override // kotlin.j12
    public final JsonObject b(FrameLayout frameLayout, ImageView.ScaleType mediaViewScaleType, LinkedHashMap assetViews) {
        Intrinsics.checkNotNullParameter(assetViews, "assetViews");
        Intrinsics.checkNotNullParameter(mediaViewScaleType, "mediaViewScaleType");
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("nas", a(frameLayout, mediaViewScaleType, assetViews));
        if (this.H.get() && j()) {
            jsonObject.addProperty("custom_click_gesture_eligible", Boolean.TRUE);
        }
        return jsonObject;
    }

    @Override // kotlin.j12
    public final void b() {
        BuildersKt__Builders_commonKt.launch$default(this.h, null, null, new su0(this, null, null, null, false, null), 3, null);
    }

    @Override // kotlin.j12
    public final void b(FrameLayout nativeAdView, ImageView.ScaleType mediaviewScaleType, Map assetViews) {
        Intrinsics.checkNotNullParameter(nativeAdView, "nativeAdView");
        Intrinsics.checkNotNullParameter(assetViews, "assetViews");
        Intrinsics.checkNotNullParameter(mediaviewScaleType, "mediaviewScaleType");
        g32 g32VarA = f32.a(this.n, this.o, this.l, nativeAdView, assetViews, mediaviewScaleType);
        String strA = a(nativeAdView);
        boolean z = false;
        if (this.w.r0) {
            InitializationConfig initializationConfigA = this.x.a();
            z = !(initializationConfigA != null ? initializationConfigA.getNativeAdDebuggerDisabled() : false);
        }
        BuildersKt__Builders_commonKt.launch$default(this.h, null, null, new tu0(this, g32VarA, null, strA, z, null), 3, null);
    }

    @Override // kotlin.j12
    public final boolean b(Bundle impressionData) {
        JsonObject asJsonObject;
        Intrinsics.checkNotNullParameter(impressionData, "impressionData");
        if (!b("impression_reporting")) {
            Splitter splitter = f01.a;
            f01.a("The ad slot cannot handle external impression events. You must be in the allow list to be able to report your impression events.", (Throwable) null);
            return false;
        }
        try {
            asJsonObject = this.A.toJsonTree(impressionData).getAsJsonObject();
        } catch (Exception e) {
            ((as3) this.B).a("Failed to parse impression data for Immersive", (Throwable) e);
            asJsonObject = null;
        }
        BuildersKt__Builders_commonKt.launch$default(this.h, null, null, new su0(this, null, asJsonObject, a((FrameLayout) null), false, null), 3, null);
        return true;
    }

    public final boolean b(String str) {
        ds1 ds1Var = ds1.a;
        JsonObject jsonObjectA = ds1.a(this.g, "allow_pub_event_reporting", (JsonObject) null);
        return jsonObjectA != null && ds1.a(jsonObjectA, str, false);
    }

    @Override // kotlin.j12
    public final void c() {
        o32 o32Var = (o32) this.c.get();
        if (o32Var == null) {
            f01.a("Ad should be associated with an ad view before click happens.", null, null, 6);
            return;
        }
        g83 g83Var = this.n;
        ks3 ks3Var = this.o;
        k32 k32Var = this.l;
        p32 p32Var = (p32) o32Var;
        FrameLayout frameLayoutC = p32Var.c();
        Map mapB = p32Var.b();
        ImageView.ScaleType scaleTypeE = p32Var.e();
        if (scaleTypeE == null) {
            scaleTypeE = ImageView.ScaleType.CENTER_INSIDE;
        }
        g32 g32VarA = f32.a(g83Var, ks3Var, k32Var, frameLayoutC, mapB, scaleTypeE);
        String strA = a((View) this.f.get(), p32Var.b());
        a(this, p32Var.c(), g32VarA, strA, this.l.a(strA, this.E, this.D), false, 48);
    }

    @Override // kotlin.j12
    public final void c(Bundle touchEventData) {
        Intrinsics.checkNotNullParameter(touchEventData, "touchEventData");
        if (!b("touch_reporting")) {
            Splitter splitter = f01.a;
            f01.a("The ad slot cannot handle external touch events. You must be in the allow list to be able to report your click events.", (Throwable) null);
            return;
        }
        this.j.a((int) touchEventData.getFloat("x"), (int) touchEventData.getFloat("y"), touchEventData.getInt("duration_ms"));
        ex0 ex0Var = this.y;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:native_click_protection:enabled", C3510b4.i.W);
        if (((Boolean) ex0Var.a("gads:native_click_protection:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
            this.z.g.set(true);
        }
    }

    @Override // kotlin.j12
    public final boolean d() {
        if (e() == 0) {
            return true;
        }
        return this.m.getCustomClickGestureAllowTaps();
    }

    @Override // kotlin.j12
    public final int e() {
        NativeAd.SwipeGestureDirection customClickGestureDirection = this.m.getCustomClickGestureDirection();
        if (customClickGestureDirection != null) {
            return customClickGestureDirection.getValue();
        }
        return 0;
    }

    @Override // kotlin.j12
    public final DisplayOpenMeasurement f() {
        if (((Boolean) BuildersKt__BuildersKt.runBlocking$default(null, new xu0(this, null), 1, null)).booleanValue()) {
            return new wu0(this);
        }
        return null;
    }

    @Override // kotlin.j12
    public final boolean j() {
        ds1 ds1Var = ds1.a;
        return ds1.a(this.g, "allow_custom_click_gesture", false);
    }

    @Override // kotlin.j12
    public final boolean k() {
        return (this.k.p.isEmpty() || this.k.q == null) ? false : true;
    }

    @Override // kotlin.j12
    public final void l() {
        this.H.set(true);
    }
}
