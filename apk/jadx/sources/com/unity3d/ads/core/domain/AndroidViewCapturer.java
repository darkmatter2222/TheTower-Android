package com.unity3d.ads.core.domain;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.PixelCopy;
import android.view.View;
import android.view.Window;
import com.unity3d.ads.core.data.datasource.CurrentActivityDataSource;
import com.unity3d.services.core.properties.ClientProperties;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.DebugProbesKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidViewCapturer.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0087B¢\u0006\u0002\u0010\u000eJ\u000e\u0010\u000f\u001a\u0004\u0018\u00010\u0010*\u00020\rH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidViewCapturer;", "", "mainDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "currentActivityDataSource", "Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;", "sdkInt", "", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;I)V", "invoke", "Landroid/graphics/Bitmap;", "view", "Landroid/view/View;", "(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "activity", "Landroid/app/Activity;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidViewCapturer {
    private final CurrentActivityDataSource currentActivityDataSource;
    private final CoroutineDispatcher mainDispatcher;
    private final int sdkInt;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidViewCapturer$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidViewCapturer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Landroid/graphics/Bitmap;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidViewCapturer$invoke$2", f = "AndroidViewCapturer.kt", i = {0, 0, 0}, l = {90}, m = "invokeSuspend", n = {"window", "srcRect", "bitmap"}, s = {"L$0", "L$1", "L$2"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Bitmap>, Object> {
        final /* synthetic */ View $view;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(View view, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$view = view;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidViewCapturer.this.new AnonymousClass2(this.$view, continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Bitmap> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Window window;
            Activity currentActivity;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            if (AndroidViewCapturer.this.sdkInt < 26) {
                throw new IllegalStateException(("Screen capture requires API 26+ (got " + AndroidViewCapturer.this.sdkInt + ')').toString());
            }
            int width = this.$view.getWidth();
            int height = this.$view.getHeight();
            if (width <= 0 || height <= 0) {
                throw new IllegalStateException(("Target view not laid out yet (" + width + 'x' + height + ')').toString());
            }
            CurrentActivityDataSource currentActivityDataSource = AndroidViewCapturer.this.currentActivityDataSource;
            if (currentActivityDataSource == null || (currentActivity = currentActivityDataSource.getCurrentActivity()) == null || (window = currentActivity.getWindow()) == null) {
                Activity activity = AndroidViewCapturer.this.activity(this.$view);
                window = activity != null ? activity.getWindow() : null;
                if (window == null) {
                    AndroidViewCapturer androidViewCapturer = AndroidViewCapturer.this;
                    View rootView = this.$view.getRootView();
                    Intrinsics.checkNotNullExpressionValue(rootView, "getRootView(...)");
                    Activity activity2 = androidViewCapturer.activity(rootView);
                    window = activity2 != null ? activity2.getWindow() : null;
                    if (window == null) {
                        Activity activity3 = ClientProperties.getActivity();
                        window = activity3 != null ? activity3.getWindow() : null;
                        if (window == null) {
                            throw new IllegalStateException("No window available to capture the ad view".toString());
                        }
                    }
                }
            }
            int[] iArr = new int[2];
            this.$view.getLocationInWindow(iArr);
            int i2 = iArr[0];
            int i3 = iArr[1];
            Rect rect = new Rect(i2, i3, i2 + width, i3 + height);
            final Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            this.L$0 = window;
            this.L$1 = rect;
            this.L$2 = bitmapCreateBitmap;
            this.label = 1;
            AnonymousClass2 anonymousClass2 = this;
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(anonymousClass2), 1);
            cancellableContinuationImpl.initCancellability();
            final CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
            PixelCopy.request(window, rect, bitmapCreateBitmap, new PixelCopy.OnPixelCopyFinishedListener() { // from class: com.unity3d.ads.core.domain.AndroidViewCapturer$invoke$2$2$1
                @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
                public final void onPixelCopyFinished(int i4) {
                    if (i4 == 0) {
                        CancellableContinuation<Bitmap> cancellableContinuation = cancellableContinuationImpl2;
                        Result.Companion companion = Result.INSTANCE;
                        cancellableContinuation.resumeWith(Result.m3022constructorimpl(bitmapCreateBitmap));
                    } else {
                        CancellableContinuation<Bitmap> cancellableContinuation2 = cancellableContinuationImpl2;
                        Result.Companion companion2 = Result.INSTANCE;
                        cancellableContinuation2.resumeWith(Result.m3022constructorimpl(ResultKt.createFailure(new IllegalStateException("PixelCopy failed with result " + i4))));
                    }
                }
            }, new Handler(Looper.getMainLooper()));
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(anonymousClass2);
            }
            return result == coroutine_suspended ? coroutine_suspended : result;
        }
    }

    public AndroidViewCapturer(CoroutineDispatcher mainDispatcher, CurrentActivityDataSource currentActivityDataSource, int i) {
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
        this.mainDispatcher = mainDispatcher;
        this.currentActivityDataSource = currentActivityDataSource;
        this.sdkInt = i;
    }

    public /* synthetic */ AndroidViewCapturer(CoroutineDispatcher coroutineDispatcher, CurrentActivityDataSource currentActivityDataSource, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(coroutineDispatcher, (i2 & 2) != 0 ? null : currentActivityDataSource, (i2 & 4) != 0 ? Build.VERSION.SDK_INT : i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Activity activity(View view) {
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }

    public final Object invoke(View view, Continuation<? super Bitmap> continuation) {
        return BuildersKt.withContext(this.mainDispatcher, new AnonymousClass2(view, null), continuation);
    }
}
