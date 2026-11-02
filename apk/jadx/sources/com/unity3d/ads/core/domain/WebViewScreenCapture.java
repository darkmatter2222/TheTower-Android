package com.unity3d.ads.core.domain;

import android.graphics.Bitmap;
import android.os.SystemClock;
import android.view.View;
import android.webkit.WebView;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.unity3d.ads.adplayer.AdPlayer;
import com.unity3d.ads.adplayer.AndroidWebViewContainer;
import com.unity3d.ads.adplayer.WebViewContainer;
import com.unity3d.ads.core.data.model.AdObject;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import java.io.ByteArrayOutputStream;
import java.lang.ref.WeakReference;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.math.MathKt;
import p005kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: WebViewScreenCapture.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 .2\u00020\u0001:\u0001.BK\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\u001e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0086@¢\u0006\u0002\u0010!J&\u0010\"\u001a\u00020#2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020 2\u0006\u0010%\u001a\u00020\u001cH\u0086@¢\u0006\u0002\u0010&J\u0016\u0010'\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u001eH\u0082@¢\u0006\u0002\u0010(J\u0016\u0010)\u001a\u00020\u00142\u0006\u0010*\u001a\u00020\u0017H\u0082@¢\u0006\u0002\u0010+J\b\u0010,\u001a\u00020-H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"Lcom/unity3d/ads/core/domain/WebViewScreenCapture;", "", "ioDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "mainDispatcher", "viewCapturer", "Lcom/unity3d/ads/core/domain/AndroidViewCapturer;", "uploader", "Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;", "cacheTtlMs", "", "elapsedRealtimeMs", "Lkotlin/Function0;", "backgroundScope", "Lkotlinx/coroutines/CoroutineScope;", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/AndroidViewCapturer;Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;JLkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;)V", "mutex", "Lkotlinx/coroutines/sync/Mutex;", "cachedBitmap", "Landroid/graphics/Bitmap;", "cachedViewRef", "Ljava/lang/ref/WeakReference;", "Landroid/view/View;", "cacheTimestamp", "evictionJob", "Lkotlinx/coroutines/Job;", "getBlackPixelPercentage", "", "adObject", "Lcom/unity3d/ads/core/data/model/AdObject;", "threshold", "", "(Lcom/unity3d/ads/core/data/model/AdObject;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "captureScreenshot", "", "quality", "samplingRate", "(Lcom/unity3d/ads/core/data/model/AdObject;IDLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "resolveTargetView", "(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getOrCapture", "targetView", "(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "scheduleEviction", "", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WebViewScreenCapture {
    public static final long CACHE_TTL_MS = 2000;
    public static final int DEFAULT_QUALITY = 50;
    public static final double DEFAULT_SAMPLING_RATE = 1.0d;
    public static final int DEFAULT_THRESHOLD = 10;
    public static final int PNG_QUALITY = 100;
    private final CoroutineScope backgroundScope;
    private long cacheTimestamp;
    private final long cacheTtlMs;
    private Bitmap cachedBitmap;
    private WeakReference<View> cachedViewRef;
    private final Function0<Long> elapsedRealtimeMs;
    private Job evictionJob;
    private final CoroutineDispatcher ioDispatcher;
    private final CoroutineDispatcher mainDispatcher;
    private final Mutex mutex;
    private final AndroidScreenshotUploader uploader;
    private final AndroidViewCapturer viewCapturer;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.WebViewScreenCapture$captureScreenshot$1, reason: invalid class name */
    /* JADX INFO: compiled from: WebViewScreenCapture.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.WebViewScreenCapture", f = "WebViewScreenCapture.kt", i = {0, 0, 1, 1}, l = {67, 67}, m = "captureScreenshot", n = {"quality", "samplingRate", "quality", "samplingRate"}, s = {"I$0", "D$0", "I$0", "D$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        double D$0;
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return WebViewScreenCapture.this.captureScreenshot(null, 0, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.WebViewScreenCapture$captureScreenshot$2, reason: invalid class name */
    /* JADX INFO: compiled from: WebViewScreenCapture.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.WebViewScreenCapture$captureScreenshot$2", f = "WebViewScreenCapture.kt", i = {}, l = {91}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Bitmap $bitmap;
        final /* synthetic */ String $id;
        final /* synthetic */ boolean $isPng;
        final /* synthetic */ int $quality;
        final /* synthetic */ double $samplingRate;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ WebViewScreenCapture this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(double d, Bitmap bitmap, boolean z, int i, WebViewScreenCapture webViewScreenCapture, String str, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$samplingRate = d;
            this.$bitmap = bitmap;
            this.$isPng = z;
            this.$quality = i;
            this.this$0 = webViewScreenCapture;
            this.$id = str;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$samplingRate, this.$bitmap, this.$isPng, this.$quality, this.this$0, this.$id, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    double d = this.$samplingRate;
                    Bitmap bitmap = this.$bitmap;
                    boolean z = this.$isPng;
                    int i2 = this.$quality;
                    WebViewScreenCapture webViewScreenCapture = this.this$0;
                    String str = this.$id;
                    Result.Companion companion = Result.INSTANCE;
                    Bitmap bitmapCreateScaledBitmap = d >= 1.0d ? bitmap : Bitmap.createScaledBitmap(bitmap, RangesKt.coerceAtLeast(MathKt.roundToInt(((double) bitmap.getWidth()) * d), 1), RangesKt.coerceAtLeast(MathKt.roundToInt(((double) bitmap.getHeight()) * d), 1), true);
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    if (z) {
                        bitmapCreateScaledBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                    } else {
                        bitmapCreateScaledBitmap.compress(Bitmap.CompressFormat.JPEG, i2, byteArrayOutputStream);
                    }
                    if (bitmapCreateScaledBitmap != bitmap) {
                        bitmapCreateScaledBitmap.recycle();
                    }
                    AndroidScreenshotUploader androidScreenshotUploader = webViewScreenCapture.uploader;
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
                    String str2 = z ? "image/png" : "image/jpeg";
                    this.label = 1;
                    if (androidScreenshotUploader.invoke(str, byteArray, str2, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                Result.m3022constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m3022constructorimpl(ResultKt.createFailure(th));
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.WebViewScreenCapture$getBlackPixelPercentage$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebViewScreenCapture.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.WebViewScreenCapture", f = "WebViewScreenCapture.kt", i = {0, 1}, l = {49, 49, 50}, m = "getBlackPixelPercentage", n = {"threshold", "threshold"}, s = {"I$0", "I$0"})
    static final class C40231 extends ContinuationImpl {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C40231(Continuation<? super C40231> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return WebViewScreenCapture.this.getBlackPixelPercentage(null, 0, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.WebViewScreenCapture$getBlackPixelPercentage$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebViewScreenCapture.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0006\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.WebViewScreenCapture$getBlackPixelPercentage$2", f = "WebViewScreenCapture.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C40242 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Double>, Object> {
        final /* synthetic */ Bitmap $bitmap;
        final /* synthetic */ int $threshold;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C40242(Bitmap bitmap, int i, Continuation<? super C40242> continuation) {
            super(2, continuation);
            this.$bitmap = bitmap;
            this.$threshold = i;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C40242(this.$bitmap, this.$threshold, continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Double> continuation) {
            return ((C40242) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            int width = this.$bitmap.getWidth();
            int height = this.$bitmap.getHeight();
            if (width <= 0 || height <= 0) {
                return Boxing.boxDouble(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
            }
            int[] iArr = new int[width * height];
            this.$bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            return Boxing.boxDouble(WebViewScreenCaptureKt.countBlackPixelRatio(iArr, this.$threshold));
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.WebViewScreenCapture$getOrCapture$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebViewScreenCapture.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.WebViewScreenCapture", f = "WebViewScreenCapture.kt", i = {0, 0, 1, 1, 1}, l = {172, 123}, m = "getOrCapture", n = {"targetView", "$this$withLock_u24default$iv", "targetView", "$this$withLock_u24default$iv", "now"}, s = {"L$0", "L$1", "L$0", "L$1", "J$0"})
    static final class C40251 extends ContinuationImpl {
        long J$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C40251(Continuation<? super C40251> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return WebViewScreenCapture.this.getOrCapture(null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.WebViewScreenCapture$resolveTargetView$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebViewScreenCapture.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.WebViewScreenCapture", f = "WebViewScreenCapture.kt", i = {}, l = {104}, m = "resolveTargetView", n = {}, s = {})
    static final class C40261 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C40261(Continuation<? super C40261> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return WebViewScreenCapture.this.resolveTargetView(null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.WebViewScreenCapture$resolveTargetView$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebViewScreenCapture.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Landroid/view/View;", "kotlin.jvm.PlatformType", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.WebViewScreenCapture$resolveTargetView$2", f = "WebViewScreenCapture.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C40272 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super View>, Object> {
        final /* synthetic */ AdObject $adObject;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C40272(AdObject adObject, Continuation<? super C40272> continuation) {
            super(2, continuation);
            this.$adObject = adObject;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C40272(this.$adObject, continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super View> continuation) {
            return ((C40272) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            WebView webView;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            AdPlayer adPlayer = this.$adObject.getAdPlayer();
            WebViewContainer webViewContainer = adPlayer != null ? adPlayer.getWebViewContainer() : null;
            AndroidWebViewContainer androidWebViewContainer = webViewContainer instanceof AndroidWebViewContainer ? (AndroidWebViewContainer) webViewContainer : null;
            if (androidWebViewContainer == null || (webView = androidWebViewContainer.getWebView()) == null) {
                throw new IllegalStateException("No web view container available to capture".toString());
            }
            if (this.$adObject.getAdType() != DiagnosticEventRequestOuterClass.DiagnosticAdType.DIAGNOSTIC_AD_TYPE_BANNER) {
                return webView.getRootView();
            }
            Object parent = webView.getParent();
            View view = parent instanceof View ? (View) parent : null;
            return view == null ? webView : view;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.WebViewScreenCapture$scheduleEviction$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebViewScreenCapture.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.WebViewScreenCapture$scheduleEviction$1", f = "WebViewScreenCapture.kt", i = {1}, l = {137, 172}, m = "invokeSuspend", n = {"$this$withLock_u24default$iv"}, s = {"L$0"})
    static final class C40281 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        Object L$1;
        int label;

        C40281(Continuation<? super C40281> continuation) {
            super(2, continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return WebViewScreenCapture.this.new C40281(continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C40281) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Mutex mutex;
            WebViewScreenCapture webViewScreenCapture;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (DelayKt.delay(WebViewScreenCapture.this.cacheTtlMs, this) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                webViewScreenCapture = (WebViewScreenCapture) this.L$1;
                mutex = (Mutex) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            try {
                webViewScreenCapture.cachedBitmap = null;
                webViewScreenCapture.cachedViewRef = null;
                Unit unit = Unit.INSTANCE;
                return Unit.INSTANCE;
            } finally {
                mutex.unlock(null);
            }
            mutex = WebViewScreenCapture.this.mutex;
            WebViewScreenCapture webViewScreenCapture2 = WebViewScreenCapture.this;
            this.L$0 = mutex;
            this.L$1 = webViewScreenCapture2;
            this.label = 2;
            if (mutex.lock(null, this) != coroutine_suspended) {
                webViewScreenCapture = webViewScreenCapture2;
                webViewScreenCapture.cachedBitmap = null;
                webViewScreenCapture.cachedViewRef = null;
                Unit unit2 = Unit.INSTANCE;
                return Unit.INSTANCE;
            }
            return coroutine_suspended;
        }
    }

    public WebViewScreenCapture(CoroutineDispatcher ioDispatcher, CoroutineDispatcher mainDispatcher, AndroidViewCapturer viewCapturer, AndroidScreenshotUploader uploader, long j, Function0<Long> elapsedRealtimeMs, CoroutineScope backgroundScope) {
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
        Intrinsics.checkNotNullParameter(viewCapturer, "viewCapturer");
        Intrinsics.checkNotNullParameter(uploader, "uploader");
        Intrinsics.checkNotNullParameter(elapsedRealtimeMs, "elapsedRealtimeMs");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        this.ioDispatcher = ioDispatcher;
        this.mainDispatcher = mainDispatcher;
        this.viewCapturer = viewCapturer;
        this.uploader = uploader;
        this.cacheTtlMs = j;
        this.elapsedRealtimeMs = elapsedRealtimeMs;
        this.backgroundScope = backgroundScope;
        this.mutex = MutexKt.Mutex$default(false, 1, null);
    }

    public /* synthetic */ WebViewScreenCapture(CoroutineDispatcher coroutineDispatcher, CoroutineDispatcher coroutineDispatcher2, AndroidViewCapturer androidViewCapturer, AndroidScreenshotUploader androidScreenshotUploader, long j, Function0 function0, CoroutineScope coroutineScope, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(coroutineDispatcher, coroutineDispatcher2, androidViewCapturer, androidScreenshotUploader, (i & 16) != 0 ? 2000L : j, (i & 32) != 0 ? new Function0() { // from class: com.unity3d.ads.core.domain.WebViewScreenCapture$$ExternalSyntheticLambda0
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Long.valueOf(SystemClock.elapsedRealtime());
            }
        } : function0, (i & 64) != 0 ? CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null).plus(coroutineDispatcher)) : coroutineScope);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object getOrCapture(View view, Continuation<? super Bitmap> continuation) throws Throwable {
        C40251 c40251;
        Mutex mutex;
        Throwable th;
        Mutex mutex2;
        View view2;
        long j;
        if (continuation instanceof C40251) {
            c40251 = (C40251) continuation;
            if ((c40251.label & Integer.MIN_VALUE) != 0) {
                c40251.label -= Integer.MIN_VALUE;
            } else {
                c40251 = new C40251(continuation);
            }
        } else {
            c40251 = new C40251(continuation);
        }
        Object obj = c40251.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c40251.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                mutex = this.mutex;
                c40251.L$0 = view;
                c40251.L$1 = mutex;
                c40251.label = 1;
                if (mutex.lock(null, c40251) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j = c40251.J$0;
                mutex2 = (Mutex) c40251.L$1;
                view2 = (View) c40251.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                    this.cachedBitmap = (Bitmap) obj;
                    this.cachedViewRef = new WeakReference<>(view2);
                    this.cacheTimestamp = j;
                    scheduleEviction();
                    Bitmap bitmap = (Bitmap) obj;
                    mutex2.unlock(null);
                    return bitmap;
                } catch (Throwable th2) {
                    th = th2;
                    mutex2.unlock(null);
                    throw th;
                }
            }
            Mutex mutex3 = (Mutex) c40251.L$1;
            View view3 = (View) c40251.L$0;
            ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            view = view3;
            long jLongValue = this.elapsedRealtimeMs.invoke().longValue();
            Bitmap bitmap2 = this.cachedBitmap;
            if (bitmap2 != null) {
                WeakReference<View> weakReference = this.cachedViewRef;
                if ((weakReference != null ? weakReference.get() : null) == view && jLongValue - this.cacheTimestamp < this.cacheTtlMs) {
                    mutex.unlock(null);
                    return bitmap2;
                }
            }
            AndroidViewCapturer androidViewCapturer = this.viewCapturer;
            c40251.L$0 = view;
            c40251.L$1 = mutex;
            c40251.J$0 = jLongValue;
            c40251.label = 2;
            Object objInvoke = androidViewCapturer.invoke(view, c40251);
            if (objInvoke != coroutine_suspended) {
                view2 = view;
                mutex2 = mutex;
                obj = objInvoke;
                j = jLongValue;
                this.cachedBitmap = (Bitmap) obj;
                this.cachedViewRef = new WeakReference<>(view2);
                this.cacheTimestamp = j;
                scheduleEviction();
                Bitmap bitmap3 = (Bitmap) obj;
                mutex2.unlock(null);
                return bitmap3;
            }
            return coroutine_suspended;
        } catch (Throwable th3) {
            Mutex mutex4 = mutex;
            th = th3;
            mutex2 = mutex4;
            mutex2.unlock(null);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object resolveTargetView(AdObject adObject, Continuation<? super View> continuation) {
        C40261 c40261;
        if (continuation instanceof C40261) {
            c40261 = (C40261) continuation;
            if ((c40261.label & Integer.MIN_VALUE) != 0) {
                c40261.label -= Integer.MIN_VALUE;
            } else {
                c40261 = new C40261(continuation);
            }
        } else {
            c40261 = new C40261(continuation);
        }
        Object objWithContext = c40261.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c40261.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objWithContext);
            CoroutineDispatcher coroutineDispatcher = this.mainDispatcher;
            C40272 c40272 = new C40272(adObject, null);
            c40261.label = 1;
            objWithContext = BuildersKt.withContext(coroutineDispatcher, c40272, c40261);
            if (objWithContext == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objWithContext);
        }
        Intrinsics.checkNotNullExpressionValue(objWithContext, "withContext(...)");
        return objWithContext;
    }

    private final void scheduleEviction() {
        Job job = this.evictionJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.evictionJob = BuildersKt__Builders_commonKt.launch$default(this.backgroundScope, null, null, new C40281(null), 3, null);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x008d  */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public final Object captureScreenshot(AdObject adObject, int i, double d, Continuation<? super String> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        int i2;
        double d2;
        Object objResolveTargetView;
        WebViewScreenCapture webViewScreenCapture;
        int i3;
        double d3;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object obj = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = anonymousClass1.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            anonymousClass1.L$0 = this;
            i2 = i;
            anonymousClass1.I$0 = i2;
            d2 = d;
            anonymousClass1.D$0 = d2;
            anonymousClass1.label = 1;
            objResolveTargetView = resolveTargetView(adObject, anonymousClass1);
            if (objResolveTargetView != coroutine_suspended) {
                webViewScreenCapture = this;
            }
            return coroutine_suspended;
        }
        if (i4 == 1) {
            d2 = anonymousClass1.D$0;
            int i5 = anonymousClass1.I$0;
            webViewScreenCapture = (WebViewScreenCapture) anonymousClass1.L$0;
            ResultKt.throwOnFailure(obj);
            objResolveTargetView = obj;
            i2 = i5;
        } else {
            if (i4 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d3 = anonymousClass1.D$0;
            i3 = anonymousClass1.I$0;
            ResultKt.throwOnFailure(obj);
        }
        Bitmap bitmap = (Bitmap) obj;
        String string = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        BuildersKt__Builders_commonKt.launch$default(this.backgroundScope, null, null, new AnonymousClass2(d3, bitmap, i3 >= 100, i3, this, string, null), 3, null);
        return string;
        anonymousClass1.L$0 = null;
        anonymousClass1.I$0 = i2;
        anonymousClass1.D$0 = d2;
        anonymousClass1.label = 2;
        Object orCapture = webViewScreenCapture.getOrCapture((View) objResolveTargetView, anonymousClass1);
        if (orCapture != coroutine_suspended) {
            i3 = i2;
            obj = orCapture;
            d3 = d2;
            Bitmap bitmap2 = (Bitmap) obj;
            String string2 = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
            BuildersKt__Builders_commonKt.launch$default(this.backgroundScope, null, null, new AnonymousClass2(d3, bitmap2, i3 >= 100, i3, this, string2, null), 3, null);
            return string2;
        }
        return coroutine_suspended;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0080 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object getBlackPixelPercentage(AdObject adObject, int i, Continuation<? super Double> continuation) throws Throwable {
        C40231 c40231;
        WebViewScreenCapture webViewScreenCapture;
        int i2;
        Object objWithContext;
        if (continuation instanceof C40231) {
            c40231 = (C40231) continuation;
            if ((c40231.label & Integer.MIN_VALUE) != 0) {
                c40231.label -= Integer.MIN_VALUE;
            } else {
                c40231 = new C40231(continuation);
            }
        } else {
            c40231 = new C40231(continuation);
        }
        Object objResolveTargetView = c40231.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = c40231.label;
        if (i3 == 0) {
            ResultKt.throwOnFailure(objResolveTargetView);
            c40231.L$0 = this;
            c40231.I$0 = i;
            c40231.label = 1;
            objResolveTargetView = resolveTargetView(adObject, c40231);
            if (objResolveTargetView != coroutine_suspended) {
                webViewScreenCapture = this;
            }
            return coroutine_suspended;
        }
        if (i3 == 1) {
            i = c40231.I$0;
            webViewScreenCapture = (WebViewScreenCapture) c40231.L$0;
            ResultKt.throwOnFailure(objResolveTargetView);
        } else {
            if (i3 != 2) {
                if (i3 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objResolveTargetView);
                return objResolveTargetView;
            }
            i2 = c40231.I$0;
            ResultKt.throwOnFailure(objResolveTargetView);
        }
        CoroutineDispatcher coroutineDispatcher = this.ioDispatcher;
        C40242 c40242 = new C40242((Bitmap) objResolveTargetView, i2, null);
        c40231.label = 3;
        objWithContext = BuildersKt.withContext(coroutineDispatcher, c40242, c40231);
        if (objWithContext != coroutine_suspended) {
            return coroutine_suspended;
        }
        return objWithContext;
        c40231.L$0 = null;
        c40231.I$0 = i;
        c40231.label = 2;
        objResolveTargetView = webViewScreenCapture.getOrCapture((View) objResolveTargetView, c40231);
        if (objResolveTargetView != coroutine_suspended) {
            i2 = i;
            CoroutineDispatcher coroutineDispatcher2 = this.ioDispatcher;
            C40242 c40243 = new C40242((Bitmap) objResolveTargetView, i2, null);
            c40231.label = 3;
            objWithContext = BuildersKt.withContext(coroutineDispatcher2, c40243, c40231);
            if (objWithContext != coroutine_suspended) {
                return objWithContext;
            }
        }
        return coroutine_suspended;
    }
}
