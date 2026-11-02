package com.google.android.libraries.ads.mobile.sdk;

import android.app.Activity;
import android.content.Context;
import android.webkit.WebView;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsSession;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener;
import com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration;
import com.google.android.libraries.ads.mobile.sdk.common.VersionInfo;
import com.google.android.libraries.ads.mobile.sdk.iconad.IconRequest;
import com.google.android.libraries.ads.mobile.sdk.iconad.IconSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig;
import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig;
import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationStatus;
import com.google.android.libraries.ads.mobile.sdk.initialization.OnAdapterInitializationCompleteListener;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalError;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalGenerationCallback;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalGenerationResult;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialSignalRequest;
import com.google.common.base.Splitter;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.ironsource.C3813rg;
import com.tapjoy.TapjoyConstants;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.a01;
import kotlin.a13;
import kotlin.ag0;
import kotlin.aj0;
import kotlin.as3;
import kotlin.au;
import kotlin.bm1;
import kotlin.bu;
import kotlin.cm1;
import kotlin.ee0;
import kotlin.eh3;
import kotlin.ex0;
import kotlin.f01;
import kotlin.g83;
import kotlin.h01;
import kotlin.i01;
import kotlin.jl1;
import kotlin.km;
import kotlin.l43;
import kotlin.o21;
import kotlin.ow2;
import kotlin.q01;
import kotlin.qh0;
import kotlin.qw2;
import kotlin.rb;
import kotlin.rf3;
import kotlin.rw2;
import kotlin.sc0;
import kotlin.uc0;
import kotlin.ui0;
import kotlin.ul1;
import kotlin.ur3;
import kotlin.vf0;
import kotlin.vw3;
import kotlin.w41;
import kotlin.ws3;
import kotlin.xe3;
import kotlin.xl1;
import kotlin.yl1;
import kotlin.z03;
import kotlin.zg3;
import kotlin.zz0;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;", "", "Companion", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class MobileAds {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(0);
    private static final Object a = new Object();
    private static volatile boolean b;

    @Metadata(d1 = {"\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\f\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0007¢\u0006\u0004\b\f\u0010\rJ)\u0010\f\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0007¢\u0006\u0004\b\f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u0013\u0010\u0014J!\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0007¢\u0006\u0004\b\u0013\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u0019H\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fH\u0007¢\u0006\u0004\b!\u0010\"J\u0017\u0010%\u001a\u00020\u00022\u0006\u0010$\u001a\u00020#H\u0007¢\u0006\u0004\b%\u0010&J\u0017\u0010)\u001a\u00020\u00022\u0006\u0010(\u001a\u00020'H\u0007¢\u0006\u0004\b)\u0010*J+\u00102\u001a\u0004\u0018\u0001012\u0006\u0010,\u001a\u00020+2\u0006\u0010.\u001a\u00020-2\b\u00100\u001a\u0004\u0018\u00010/H\u0007¢\u0006\u0004\b2\u00103J\u0017\u00105\u001a\u00020#2\u0006\u00104\u001a\u00020#H\u0007¢\u0006\u0004\b5\u00106J\u001b\u0010:\u001a\u0002092\u0006\u00108\u001a\u000207H\u0086@ø\u0001\u0000¢\u0006\u0004\b:\u0010;J\u001f\u0010:\u001a\u00020\u00022\u0006\u00108\u001a\u0002072\u0006\u00100\u001a\u00020<H\u0007¢\u0006\u0004\b:\u0010=J\u001f\u0010A\u001a\u00020\u00022\u0006\u0010?\u001a\u00020>2\u0006\u0010@\u001a\u00020-H\u0007¢\u0006\u0004\bA\u0010BJ\u0017\u0010D\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020CH\u0007¢\u0006\u0004\bD\u0010ER0\u0010G\u001a\u00020#2\u0006\u0010F\u001a\u00020#8F@BX\u0087\u000e¢\u0006\u0018\n\u0004\bG\u0010H\u0012\u0004\bK\u0010\u0004\u001a\u0004\bG\u0010I\"\u0004\bJ\u0010&R\u0014\u0010L\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bL\u0010M\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006N"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;", "", "", "stop", "()V", "Lcom/google/android/libraries/ads/mobile/sdk/common/VersionInfo;", C3813rg.b, "()Lcom/google/android/libraries/ads/mobile/sdk/common/VersionInfo;", "Landroid/content/Context;", "context", "Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;", "initializationConfig", "initialize", "(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;)V", "Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;)V", "Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;", "adapterInitializationConfig", "initializeAdapters", "(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;)V", "(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;)V", "Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationStatus;", "getInitializationStatus", "()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationStatus;", "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;", "getRequestConfiguration", "()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;", "requestConfiguration", "setRequestConfiguration", "(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;)V", "", TapjoyConstants.TJC_VOLUME, "setUserControlledAppVolume", "(F)V", "", "muted", "setUserMutedApp", "(Z)V", "Landroid/webkit/WebView;", "webView", "registerWebView", "(Landroid/webkit/WebView;)V", "Landroidx/browser/customtabs/CustomTabsClient;", "client", "", "origin", "Landroidx/browser/customtabs/CustomTabsCallback;", "callback", "Landroidx/browser/customtabs/CustomTabsSession;", "registerCustomTabsSession", "(Landroidx/browser/customtabs/CustomTabsClient;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;", "enabled", "putPublisherFirstPartyIdEnabled", "(Z)Z", "Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;", "request", "Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationResult;", "generateSignal", "(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;", "(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;)V", "Landroid/app/Activity;", "activity", "adUnitId", "openDebugMenu", "(Landroid/app/Activity;Ljava/lang/String;)V", "Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;", "openAdInspector", "(Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)V", "value", "isInitialized", "Z", "()Z", "setInitialized", "isInitialized$annotations", "lock", "Ljava/lang/Object;", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(int i) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private static eh3 a(SignalRequest signalRequest) {
            rf3 ui0Var;
            if (signalRequest instanceof BannerSignalRequest) {
                a01.a.getClass();
                ee0 ee0Var = new ee0(((vf0) zz0.a()).c);
                BannerRequest bannerRequest = (BannerRequest) signalRequest;
                bannerRequest.getClass();
                ee0Var.f = bannerRequest;
                ui0Var = ee0Var;
            } else if (signalRequest instanceof NativeSignalRequest) {
                a01.a.getClass();
                qh0 qh0Var = new qh0(((vf0) zz0.a()).c);
                NativeRequest nativeRequest = (NativeRequest) signalRequest;
                nativeRequest.getClass();
                qh0Var.f = nativeRequest;
                ui0Var = qh0Var;
            } else if (signalRequest instanceof IconSignalRequest) {
                a01.a.getClass();
                ag0 ag0Var = new ag0(((vf0) zz0.a()).c);
                IconRequest iconRequest = (IconRequest) signalRequest;
                iconRequest.getClass();
                ag0Var.g = iconRequest;
                IconSignalRequest iconSignalRequest = (IconSignalRequest) signalRequest;
                Intrinsics.checkNotNullParameter(iconSignalRequest, "<this>");
                NativeSignalRequest.Builder nativeAdTypes = new NativeSignalRequest.Builder(iconSignalRequest.getSignalType()).setNativeAdTypes(CollectionsKt.listOf(NativeAd.NativeAdType.NATIVE));
                if (iconSignalRequest.getIsImageLoadingDisabled()) {
                    nativeAdTypes.disableImageDownloading();
                }
                nativeAdTypes.setAdChoicesPlacement(iconSignalRequest.getAdChoicesPlacement());
                NativeSignalRequest nativeSignalRequestBuild = nativeAdTypes.build();
                nativeSignalRequestBuild.getClass();
                ag0Var.f = nativeSignalRequestBuild;
                ui0Var = ag0Var;
            } else if (signalRequest instanceof SwipeableInterstitialSignalRequest) {
                a01.a.getClass();
                aj0 aj0Var = new aj0(((vf0) zz0.a()).c);
                SwipeableInterstitialRequest swipeableInterstitialRequest = (SwipeableInterstitialRequest) signalRequest;
                swipeableInterstitialRequest.getClass();
                aj0Var.f = swipeableInterstitialRequest;
                ui0Var = aj0Var;
            } else {
                a01.a.getClass();
                ui0Var = new ui0(((vf0) zz0.a()).c);
            }
            return ui0Var.a((BaseRequest) signalRequest).a(signalRequest).c().b().a().a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        @KeepForSdk
        public final void stop() {
            if (isInitialized()) {
                synchronized (MobileAds.a) {
                    MobileAds.b = false;
                    Unit unit = Unit.INSTANCE;
                }
                a01.a.getClass();
                cm1 cm1Var = (cm1) ((vf0) zz0.a()).q3.get();
                if (cm1Var.l.O()) {
                    CoroutineScope coroutineScope = cm1Var.b;
                    bm1 block = new bm1(cm1Var, null);
                    EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                    Intrinsics.checkNotNullParameter(context, "context");
                    Intrinsics.checkNotNullParameter(block, "block");
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
                }
                zz0.c = true;
            }
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public final Object generateSignal(SignalRequest request, Continuation<? super SignalGenerationResult> continuation) {
            a aVar;
            Object q01Var;
            Companion companion;
            if (continuation instanceof a) {
                aVar = (a) continuation;
                int i = aVar.e;
                if ((i & Integer.MIN_VALUE) != 0) {
                    aVar.e = i - Integer.MIN_VALUE;
                } else {
                    aVar = new a(this, continuation);
                }
            } else {
                aVar = new a(this, continuation);
            }
            Object obj = aVar.c;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = aVar.e;
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                a01.a.getClass();
                ((cm1) ((vf0) zz0.a()).q3.get()).getClass();
                Intrinsics.checkNotNullParameter(request, "request");
                if (request instanceof NativeSignalRequest) {
                    NativeSignalRequest nativeSignalRequest = (NativeSignalRequest) request;
                    List<NativeAd.NativeAdType> nativeAdTypes = nativeSignalRequest.getNativeAdTypes();
                    q01Var = nativeAdTypes.isEmpty() ? new q01(Unit.INSTANCE) : jl1.a(nativeAdTypes, nativeSignalRequest.getCustomFormatIds(), nativeSignalRequest.getCom.ironsource.b4.i.O java.lang.String(), null);
                } else {
                    q01Var = new q01(Unit.INSTANCE);
                }
                if (q01Var instanceof i01) {
                    return new SignalGenerationResult.Failure(new SignalError(SignalError.ErrorCode.INVALID_REQUEST, h01.a((i01) q01Var)));
                }
                cm1 cm1Var = (cm1) ((vf0) zz0.a()).q3.get();
                aVar.a = this;
                aVar.b = request;
                aVar.e = 1;
                Object objJoin = cm1Var.z.join(aVar);
                if (objJoin != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    objJoin = Unit.INSTANCE;
                }
                if (objJoin != coroutine_suspended) {
                    companion = this;
                }
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            request = aVar.b;
            companion = aVar.a;
            ResultKt.throwOnFailure(obj);
            companion.getClass();
            eh3 eh3VarA = a(request);
            aVar.a = null;
            aVar.b = null;
            aVar.e = 2;
            Object objWithContext = BuildersKt.withContext(eh3VarA.a.getCoroutineContext(), new zg3(eh3VarA, null), aVar);
            return objWithContext == coroutine_suspended ? coroutine_suspended : objWithContext;
        }

        @JvmStatic
        public final void generateSignal(SignalRequest request, SignalGenerationCallback callback) {
            Object q01Var;
            Intrinsics.checkNotNullParameter(request, "request");
            Intrinsics.checkNotNullParameter(callback, "callback");
            a01.a.getClass();
            ((cm1) ((vf0) zz0.a()).q3.get()).getClass();
            Intrinsics.checkNotNullParameter(request, "request");
            if (request instanceof NativeSignalRequest) {
                NativeSignalRequest nativeSignalRequest = (NativeSignalRequest) request;
                List<NativeAd.NativeAdType> nativeAdTypes = nativeSignalRequest.getNativeAdTypes();
                q01Var = nativeAdTypes.isEmpty() ? new q01(Unit.INSTANCE) : jl1.a(nativeAdTypes, nativeSignalRequest.getCustomFormatIds(), nativeSignalRequest.getCom.ironsource.b4.i.O java.lang.String(), null);
            } else {
                q01Var = new q01(Unit.INSTANCE);
            }
            if (q01Var instanceof i01) {
                callback.onFailure(new SignalError(SignalError.ErrorCode.INVALID_REQUEST, h01.a((i01) q01Var)));
            } else {
                ((cm1) ((vf0) zz0.a()).q3.get()).a((Function1) new b(a(request), callback, null));
            }
        }

        @JvmStatic
        public final InitializationStatus getInitializationStatus() {
            a01.a.getClass();
            return zz0.b.b() ? (InitializationStatus) BuildersKt__BuildersKt.runBlocking$default(null, new c(null), 1, null) : new d();
        }

        @JvmStatic
        public final RequestConfiguration getRequestConfiguration() {
            a01.a.getClass();
            return ((l43) ((vf0) zz0.a()).J0.get()).a();
        }

        @JvmStatic
        public final VersionInfo getVersion() {
            bu buVar = au.a;
            return new VersionInfo(1, 5, 0);
        }

        @JvmStatic
        public final void initialize(Context context, InitializationConfig initializationConfig) throws InterruptedException {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(initializationConfig, "initializationConfig");
            initialize(context, initializationConfig, null);
        }

        @JvmStatic
        public final void initialize(Context context, InitializationConfig initializationConfig, OnAdapterInitializationCompleteListener listener) throws InterruptedException {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(initializationConfig, "initializationConfig");
            a01.a.getClass();
            vf0 vf0Var = (vf0) zz0.a(context, initializationConfig, true);
            ((l43) vf0Var.J0.get()).a(initializationConfig.getRequestConfiguration());
            cm1 cm1Var = (cm1) vf0Var.q3.get();
            cm1Var.getClass();
            BuildersKt__BuildersKt.runBlocking$default(null, new ul1(cm1Var, listener, null), 1, null);
            synchronized (MobileAds.a) {
                MobileAds.b = true;
                Unit unit = Unit.INSTANCE;
            }
        }

        @JvmStatic
        public final void initializeAdapters(AdapterInitializationConfig adapterInitializationConfig) {
            Intrinsics.checkNotNullParameter(adapterInitializationConfig, "adapterInitializationConfig");
            initializeAdapters(adapterInitializationConfig, null);
        }

        @JvmStatic
        public final void initializeAdapters(AdapterInitializationConfig adapterInitializationConfig, OnAdapterInitializationCompleteListener listener) {
            Intrinsics.checkNotNullParameter(adapterInitializationConfig, "adapterInitializationConfig");
            a01.a.getClass();
            ((cm1) ((vf0) zz0.a()).q3.get()).a((Function1) new e(adapterInitializationConfig, listener, null));
        }

        public final boolean isInitialized() {
            boolean z;
            synchronized (MobileAds.a) {
                z = MobileAds.b;
            }
            return z;
        }

        @JvmStatic
        public final void openAdInspector(OnAdInspectorClosedListener listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            a01.a.getClass();
            cm1 cm1Var = (cm1) ((vf0) zz0.a()).q3.get();
            cm1Var.getClass();
            Intrinsics.checkNotNullParameter(listener, "listener");
            CoroutineScope coroutineScope = cm1Var.b;
            xl1 block = new xl1(cm1Var, listener, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }

        @JvmStatic
        public final void openDebugMenu(Activity activity, String adUnitId) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
            a01.a.getClass();
            cm1 cm1Var = (cm1) ((vf0) zz0.a()).q3.get();
            cm1Var.getClass();
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
            CoroutineScope coroutineScope = cm1Var.b;
            yl1 block = new yl1(cm1Var, activity, adUnitId, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }

        @JvmStatic
        public final boolean putPublisherFirstPartyIdEnabled(boolean enabled) {
            a01.a.getClass();
            km kmVar = (km) ((vf0) zz0.a()).T0.get();
            kmVar.getClass();
            try {
                w41.a(kmVar.a).a(enabled);
                return true;
            } catch (IOException e) {
                ((as3) kmVar.b).a("Failed to persist the publisher first party id option", (Throwable) e);
                return false;
            }
        }

        @JvmStatic
        public final CustomTabsSession registerCustomTabsSession(CustomTabsClient client, String origin, CustomTabsCallback callback) {
            Intrinsics.checkNotNullParameter(client, "client");
            Intrinsics.checkNotNullParameter(origin, "origin");
            CustomTabsSession customTabsSession = null;
            if (StringsKt.isBlank(origin)) {
                Splitter splitter = f01.a;
                f01.c("Custom tabs origin can not be blank.", null);
                return null;
            }
            a01.a.getClass();
            uc0 uc0Var = (uc0) ((vf0) zz0.a()).H1.get();
            uc0Var.getClass();
            Intrinsics.checkNotNullParameter(client, "client");
            Intrinsics.checkNotNullParameter(origin, "origin");
            CoroutineScope coroutineScope = uc0Var.a;
            sc0 block = new sc0(uc0Var, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            synchronized (uc0Var.e) {
                if (StringsKt.isBlank(origin)) {
                    return null;
                }
                uc0Var.j = origin;
                uc0Var.f = false;
                Job job = uc0Var.g;
                if (job != null) {
                    Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
                }
                uc0Var.l = callback;
                CustomTabsSession customTabsSessionNewSession = client.newSession(uc0Var);
                if (customTabsSessionNewSession != null) {
                    Intrinsics.checkNotNull(customTabsSessionNewSession);
                    uc0Var.k = customTabsSessionNewSession;
                    customTabsSession = customTabsSessionNewSession;
                }
                return customTabsSession;
            }
        }

        @JvmStatic
        public final void registerWebView(WebView webView) {
            Intrinsics.checkNotNullParameter(webView, "webView");
            a01.a.getClass();
            a13 a13Var = (a13) ((vf0) zz0.a()).r3.get();
            a13Var.getClass();
            Intrinsics.checkNotNullParameter(webView, "webView");
            CoroutineScope coroutineScope = a13Var.a;
            z03 block = new z03(a13Var, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            a13Var.b.f.incrementAndGet();
            rw2 rw2Var = ((qw2) a13Var.d).a;
            webView.addJavascriptInterface(new ow2(webView, (CoroutineScope) rw2Var.a.get(), (CoroutineContext) rw2Var.b.get(), (g83) rw2Var.c.get(), (rb) rw2Var.d.get(), (ur3) rw2Var.e.get(), (xe3) rw2Var.f.get(), (vw3) rw2Var.g.get(), (o21) rw2Var.h.get(), (ex0) rw2Var.i.get()), "gmaSdk");
        }

        @JvmStatic
        public final void setRequestConfiguration(RequestConfiguration requestConfiguration) {
            Intrinsics.checkNotNullParameter(requestConfiguration, "requestConfiguration");
            a01.a.getClass();
            ((l43) ((vf0) zz0.a()).J0.get()).a(requestConfiguration);
        }

        @JvmStatic
        public final void setUserControlledAppVolume(float volume) {
            double d = volume;
            if (FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE > d || d > 1.0d) {
                throw new IllegalArgumentException(("App volume: " + volume + " is not in the range [0, 1]").toString());
            }
            a01.a.getClass();
            ((vf0) zz0.a()).a().a(volume);
        }

        @JvmStatic
        public final void setUserMutedApp(boolean muted) {
            a01.a.getClass();
            ((km) ((vf0) zz0.a()).T0.get()).d = muted;
        }
    }

    @JvmStatic
    public static final void generateSignal(SignalRequest signalRequest, SignalGenerationCallback signalGenerationCallback) {
        INSTANCE.generateSignal(signalRequest, signalGenerationCallback);
    }

    @JvmStatic
    public static final InitializationStatus getInitializationStatus() {
        return INSTANCE.getInitializationStatus();
    }

    @JvmStatic
    public static final RequestConfiguration getRequestConfiguration() {
        return INSTANCE.getRequestConfiguration();
    }

    @JvmStatic
    public static final VersionInfo getVersion() {
        return INSTANCE.getVersion();
    }

    @JvmStatic
    public static final void initialize(Context context, InitializationConfig initializationConfig) throws InterruptedException {
        INSTANCE.initialize(context, initializationConfig);
    }

    @JvmStatic
    public static final void initialize(Context context, InitializationConfig initializationConfig, OnAdapterInitializationCompleteListener onAdapterInitializationCompleteListener) throws InterruptedException {
        INSTANCE.initialize(context, initializationConfig, onAdapterInitializationCompleteListener);
    }

    @JvmStatic
    public static final void initializeAdapters(AdapterInitializationConfig adapterInitializationConfig) {
        INSTANCE.initializeAdapters(adapterInitializationConfig);
    }

    @JvmStatic
    public static final void initializeAdapters(AdapterInitializationConfig adapterInitializationConfig, OnAdapterInitializationCompleteListener onAdapterInitializationCompleteListener) {
        INSTANCE.initializeAdapters(adapterInitializationConfig, onAdapterInitializationCompleteListener);
    }

    public static final boolean isInitialized() {
        return INSTANCE.isInitialized();
    }

    @JvmStatic
    public static final void openAdInspector(OnAdInspectorClosedListener onAdInspectorClosedListener) {
        INSTANCE.openAdInspector(onAdInspectorClosedListener);
    }

    @JvmStatic
    public static final void openDebugMenu(Activity activity, String str) {
        INSTANCE.openDebugMenu(activity, str);
    }

    @JvmStatic
    public static final boolean putPublisherFirstPartyIdEnabled(boolean z) {
        return INSTANCE.putPublisherFirstPartyIdEnabled(z);
    }

    @JvmStatic
    public static final CustomTabsSession registerCustomTabsSession(CustomTabsClient customTabsClient, String str, CustomTabsCallback customTabsCallback) {
        return INSTANCE.registerCustomTabsSession(customTabsClient, str, customTabsCallback);
    }

    @JvmStatic
    public static final void registerWebView(WebView webView) {
        INSTANCE.registerWebView(webView);
    }

    @JvmStatic
    public static final void setRequestConfiguration(RequestConfiguration requestConfiguration) {
        INSTANCE.setRequestConfiguration(requestConfiguration);
    }

    @JvmStatic
    public static final void setUserControlledAppVolume(float f) {
        INSTANCE.setUserControlledAppVolume(f);
    }

    @JvmStatic
    public static final void setUserMutedApp(boolean z) {
        INSTANCE.setUserMutedApp(z);
    }

    @JvmStatic
    @KeepForSdk
    private static final void stop() {
        INSTANCE.stop();
    }
}
