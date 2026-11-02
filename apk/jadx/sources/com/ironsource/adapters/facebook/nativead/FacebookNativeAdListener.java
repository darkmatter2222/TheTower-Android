package com.ironsource.adapters.facebook.nativead;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdListener;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.ironsource.Yf;
import com.ironsource.adapters.facebook.FacebookAdapter;
import com.ironsource.adapters.facebook.FacebookConstants;
import com.ironsource.environment.workerthread.WorkerManager;
import com.ironsource.environment.workerthread.WorkerResult;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdOptionsPosition;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.ironsource.mediationsdk.logger.IronLog;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import p005kotlin.Metadata;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FacebookNativeAdListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0018\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u001a\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;", "Lcom/facebook/ads/NativeAdListener;", "context", "Landroid/content/Context;", "adOptionsPosition", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;", "<init>", "(Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;)V", "onMediaDownloaded", "", "ad", "Lcom/facebook/ads/Ad;", Yf.j, "onError", "adError", "Lcom/facebook/ads/AdError;", "onLoggingImpression", Yf.f, "downloadIconAndSendLoadSuccess", "nativeAd", "Lcom/facebook/ads/NativeAd;", "sendLoadSuccess", "iconDrawable", "Landroid/graphics/drawable/Drawable;", "Companion", "facebookadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FacebookNativeAdListener implements NativeAdListener {
    private static final Companion Companion = new Companion(null);
    private static final long ICON_DOWNLOAD_TIMEOUT_SECONDS = 3;
    private final AdOptionsPosition adOptionsPosition;
    private final Context context;
    private final com.ironsource.mediationsdk.adunit.adapter.listener.NativeAdListener listener;

    /* JADX INFO: compiled from: FacebookNativeAdListener.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener$Companion;", "", "<init>", "()V", "ICON_DOWNLOAD_TIMEOUT_SECONDS", "", "facebookadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    private static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public FacebookNativeAdListener(Context context, AdOptionsPosition adOptionsPosition, com.ironsource.mediationsdk.adunit.adapter.listener.NativeAdListener listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adOptionsPosition, "adOptionsPosition");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.context = context;
        this.adOptionsPosition = adOptionsPosition;
        this.listener = listener;
    }

    private final void downloadIconAndSendLoadSuccess(final NativeAd nativeAd) {
        WorkerManager workerManager = new WorkerManager(Executors.newSingleThreadExecutor());
        workerManager.addCallable(new Callable() { // from class: com.ironsource.adapters.facebook.nativead.FacebookNativeAdListener$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return FacebookNativeAdListener.downloadIconAndSendLoadSuccess$lambda$1(nativeAd, this);
            }
        });
        workerManager.startWork(new WorkerManager.WorkEndedListener<Drawable>() { // from class: com.ironsource.adapters.facebook.nativead.FacebookNativeAdListener.downloadIconAndSendLoadSuccess.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.ironsource.environment.workerthread.WorkerManager.WorkEndedListener
            public void onWorkCompleted(List<WorkerResult<Drawable>> responsesList, long totalWorkDurationMillis) {
                Intrinsics.checkNotNullParameter(responsesList, "responsesList");
                WorkerResult<Drawable> workerResult = responsesList.get(0);
                WorkerResult.Completed completed = workerResult instanceof WorkerResult.Completed ? (WorkerResult.Completed) workerResult : null;
                FacebookNativeAdListener.this.sendLoadSuccess(nativeAd, completed != null ? (Drawable) completed.data : null);
            }

            @Override // com.ironsource.environment.workerthread.WorkerManager.WorkEndedListener
            public void onWorkFailed(String error) {
                Intrinsics.checkNotNullParameter(error, "error");
                IronLog ironLog = IronLog.INTERNAL;
                String str = String.format(FacebookConstants.Logs.NATIVE_ICON_DOWNLOAD_FAILED, Arrays.copyOf(new Object[]{error}, 1));
                Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                ironLog.verbose(str);
                FacebookNativeAdListener.this.sendLoadSuccess(nativeAd, null);
            }
        }, ICON_DOWNLOAD_TIMEOUT_SECONDS, TimeUnit.SECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Drawable downloadIconAndSendLoadSuccess$lambda$1(NativeAd nativeAd, FacebookNativeAdListener facebookNativeAdListener) throws IOException {
        NativeAdBase.Image adIcon = nativeAd.getAdIcon();
        String url = adIcon != null ? adIcon.getUrl() : null;
        String str = url;
        if (str == null || str.length() == 0) {
            return null;
        }
        InputStream inputStreamOpenStream = new URL(url).openStream();
        try {
            BitmapDrawable bitmapDrawable = new BitmapDrawable(facebookNativeAdListener.context.getResources(), BitmapFactory.decodeStream(inputStreamOpenStream));
            CloseableKt.closeFinally(inputStreamOpenStream, null);
            return bitmapDrawable;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(inputStreamOpenStream, th);
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendLoadSuccess(NativeAd nativeAd, Drawable iconDrawable) {
        this.listener.onAdLoadSuccess(new FacebookNativeAdData(nativeAd, iconDrawable), new FacebookNativeAdViewBinder(nativeAd, this.adOptionsPosition));
    }

    @Override // com.facebook.ads.AdListener
    public void onAdClicked(Ad ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdClicked();
    }

    @Override // com.facebook.ads.AdListener
    public void onAdLoaded(Ad ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        IronLog.ADAPTER_CALLBACK.verbose();
        if (ad instanceof NativeAd) {
            NativeAd nativeAd = (NativeAd) ad;
            nativeAd.unregisterView();
            downloadIconAndSendLoadSuccess(nativeAd);
        } else {
            String str = String.format(FacebookConstants.Logs.NATIVE_AD_TYPE_MISMATCH, Arrays.copyOf(new Object[]{ad.getClass().getName()}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            IronLog.INTERNAL.error(str);
            this.listener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1000, str);
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onError(Ad ad, AdError adError) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(adError, "adError");
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format("Failed to load, errorCode = %s, errorMessage = %s", Arrays.copyOf(new Object[]{Integer.valueOf(adError.getErrorCode()), adError.getErrorMessage()}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
        this.listener.onAdLoadFailed(FacebookAdapter.INSTANCE.getLoadErrorType(adError), adError.getErrorCode(), adError.getErrorMessage());
    }

    @Override // com.facebook.ads.AdListener
    public void onLoggingImpression(Ad ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdOpened();
    }

    @Override // com.facebook.ads.NativeAdListener
    public void onMediaDownloaded(Ad ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        IronLog.ADAPTER_CALLBACK.verbose();
    }
}
