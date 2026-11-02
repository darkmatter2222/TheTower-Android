package com.google.unity.ads.nativead;

import android.app.Activity;
import android.os.Build;
import android.util.Log;
import android.view.DisplayCutout;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.google.android.ads.nativetemplates.TemplateView;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.google.unity.ads.PluginUtils;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes4.dex */
public class UnityNativeTemplateAd {
    private Activity activity;
    private UnityNativeTemplateAdCallback callback;
    private AdSize mAdSize;
    private View.OnLayoutChangeListener mLayoutChangeListener;
    private int mPositionCode;
    private NativeAd nativeAd;
    private TemplateView templateView;
    protected boolean hidden = false;
    private int mHorizontalOffset = 0;
    private int mVerticalOffset = 0;

    /* JADX INFO: renamed from: com.google.unity.ads.nativead.UnityNativeTemplateAd$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ UnityNativeTemplateAd this$0;
        final /* synthetic */ String val$adUnitId;
        final /* synthetic */ NativeAdOptions val$options;
        final /* synthetic */ AdRequest val$request;

        /* JADX INFO: renamed from: com.google.unity.ads.nativead.UnityNativeTemplateAd$1$2, reason: invalid class name */
        class AnonymousClass2 implements NativeAd.OnNativeAdLoadedListener {
            AnonymousClass2() {
            }

            public void onNativeAdLoaded(NativeAd nativeAd) {
                AnonymousClass1.this.this$0.nativeAd = nativeAd;
                AnonymousClass1.this.this$0.callback.onNativeAdLoaded();
                AnonymousClass1.this.this$0.nativeAd.setOnPaidEventListener(new OnPaidEventListener() { // from class: com.google.unity.ads.nativead.UnityNativeTemplateAd.1.2.1
                    public void onPaidEvent(final AdValue adValue) {
                        new Thread(new Runnable(this) { // from class: com.google.unity.ads.nativead.UnityNativeTemplateAd.1.2.1.1
                            final /* synthetic */ C00811 this$3;

                            {
                                this.this$3 = this;
                            }

                            @Override // java.lang.Runnable
                            public void run() {
                                if (AnonymousClass1.this.this$0.callback != null) {
                                    AnonymousClass1.this.this$0.callback.onPaidEvent(adValue.getPrecisionType(), adValue.getValueMicros(), adValue.getCurrencyCode());
                                }
                            }
                        }).start();
                    }
                });
            }
        }

        AnonymousClass1(UnityNativeTemplateAd unityNativeTemplateAd, String str, NativeAdOptions nativeAdOptions, AdRequest adRequest) {
            this.val$adUnitId = str;
            this.val$options = nativeAdOptions;
            this.val$request = adRequest;
            this.this$0 = unityNativeTemplateAd;
        }

        @Override // java.lang.Runnable
        public void run() {
            new AdLoader.Builder(this.this$0.activity, this.val$adUnitId).forNativeAd(new AnonymousClass2()).withAdListener(new AdListener() { // from class: com.google.unity.ads.nativead.UnityNativeTemplateAd.1.1
                public void onAdClicked() {
                    AnonymousClass1.this.this$0.callback.onAdClicked();
                }

                public void onAdClosed() {
                    AnonymousClass1.this.this$0.callback.onAdDismissedFullScreenContent();
                }

                public void onAdFailedToLoad(LoadAdError loadAdError) {
                    AnonymousClass1.this.this$0.callback.onNativeAdFailedToLoad(loadAdError);
                }

                public void onAdImpression() {
                    AnonymousClass1.this.this$0.callback.onAdImpression();
                }

                public void onAdOpened() {
                    AnonymousClass1.this.this$0.callback.onAdShowedFullScreenContent();
                }
            }).withNativeAdOptions(this.val$options).build().loadAd(this.val$request);
        }
    }

    protected static class Insets {
        int top = 0;
        int bottom = 0;
        int left = 0;
        int right = 0;

        protected Insets() {
        }
    }

    public UnityNativeTemplateAd(Activity activity, UnityNativeTemplateAdCallback unityNativeTemplateAdCallback) {
        this.activity = activity;
        this.callback = unityNativeTemplateAdCallback;
    }

    private Insets getInsets() {
        Insets insets = new Insets();
        if (Build.VERSION.SDK_INT >= 28 && this.activity.getWindow() != null && this.activity.getWindow().getDecorView().getRootWindowInsets() != null && this.activity.getWindow().getDecorView().getRootWindowInsets().getDisplayCutout() != null) {
            DisplayCutout displayCutout = this.activity.getWindow().getDecorView().getRootWindowInsets().getDisplayCutout();
            insets.top = displayCutout.getSafeInsetTop();
            insets.left = displayCutout.getSafeInsetLeft();
            insets.bottom = displayCutout.getSafeInsetBottom();
            insets.right = displayCutout.getSafeInsetRight();
        }
        return insets;
    }

    private void removeTemplateView() {
        if (this.templateView != null) {
            this.activity.runOnUiThread(new Runnable() { // from class: com.google.unity.ads.nativead.UnityNativeTemplateAd.14
                @Override // java.lang.Runnable
                public void run() {
                    ((ViewGroup) UnityNativeTemplateAd.this.templateView.getParent()).removeView(UnityNativeTemplateAd.this.templateView);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePosition() {
        if (this.templateView == null) {
            return;
        }
        this.activity.runOnUiThread(new Runnable() { // from class: com.google.unity.ads.nativead.UnityNativeTemplateAd.13
            @Override // java.lang.Runnable
            public void run() {
                FrameLayout.LayoutParams layoutParams = UnityNativeTemplateAd.this.getLayoutParams();
                if (UnityNativeTemplateAd.this.mAdSize != null) {
                    layoutParams.height = UnityNativeTemplateAd.this.mAdSize.getHeight();
                    layoutParams.width = UnityNativeTemplateAd.this.mAdSize.getWidth();
                }
                UnityNativeTemplateAd.this.templateView.setLayoutParams(layoutParams);
            }
        });
    }

    public void destroy() {
        this.activity.runOnUiThread(new Runnable() { // from class: com.google.unity.ads.nativead.UnityNativeTemplateAd.11
            @Override // java.lang.Runnable
            public void run() {
                if (UnityNativeTemplateAd.this.templateView != null) {
                    UnityNativeTemplateAd.this.templateView.destroyNativeAd();
                    ViewParent parent = UnityNativeTemplateAd.this.templateView.getParent();
                    if (parent instanceof ViewGroup) {
                        ((ViewGroup) parent).removeView(UnityNativeTemplateAd.this.templateView);
                    }
                }
            }
        });
        this.activity.getWindow().getDecorView().getRootView().removeOnLayoutChangeListener(this.mLayoutChangeListener);
        this.mLayoutChangeListener = null;
    }

    protected FrameLayout.LayoutParams getLayoutParams() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = PluginUtils.getLayoutGravityForPositionCode(this.mPositionCode);
        Insets insets = getInsets();
        int i = insets.left;
        int i2 = insets.top;
        layoutParams.bottomMargin = insets.bottom;
        layoutParams.rightMargin = insets.right;
        if (this.mPositionCode != -1) {
            layoutParams.leftMargin = i;
            int i3 = this.mPositionCode;
            if (i3 != 0 && i3 != 2 && i3 != 3) {
                return layoutParams;
            }
            layoutParams.topMargin = i2;
            return layoutParams;
        }
        int iConvertDpToPixel = (int) PluginUtils.convertDpToPixel(this.mHorizontalOffset);
        if (iConvertDpToPixel >= i) {
            i = iConvertDpToPixel;
        }
        int iConvertDpToPixel2 = (int) PluginUtils.convertDpToPixel(this.mVerticalOffset);
        if (iConvertDpToPixel2 >= i2) {
            i2 = iConvertDpToPixel2;
        }
        layoutParams.leftMargin = i;
        layoutParams.topMargin = i2;
        return layoutParams;
    }

    public ResponseInfo getResponseInfo() {
        FutureTask futureTask = new FutureTask(new Callable<ResponseInfo>() { // from class: com.google.unity.ads.nativead.UnityNativeTemplateAd.8
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public ResponseInfo call() {
                return UnityNativeTemplateAd.this.nativeAd.getResponseInfo();
            }
        });
        this.activity.runOnUiThread(futureTask);
        try {
            return (ResponseInfo) futureTask.get();
        } catch (InterruptedException e) {
            Log.e(PluginUtils.LOGTAG, String.format("Unable to check native response info: %s", e.getLocalizedMessage()));
            return null;
        } catch (ExecutionException e2) {
            Log.e(PluginUtils.LOGTAG, String.format("Unable to check native response info: %s", e2.getLocalizedMessage()));
            return null;
        }
    }

    public void hide() {
        this.activity.runOnUiThread(new Runnable() { // from class: com.google.unity.ads.nativead.UnityNativeTemplateAd.10
            @Override // java.lang.Runnable
            public void run() {
                if (UnityNativeTemplateAd.this.templateView == null) {
                    return;
                }
                UnityNativeTemplateAd.this.hidden = true;
                UnityNativeTemplateAd.this.templateView.setVisibility(8);
            }
        });
    }

    public void loadAd(String str, NativeAdOptions nativeAdOptions, AdRequest adRequest) {
        this.activity.runOnUiThread(new AnonymousClass1(this, str, nativeAdOptions, adRequest));
    }

    public void renderCustomSizeAtPosition(final UnityNativeTemplateStyle unityNativeTemplateStyle, final AdSize adSize, int i, int i2) {
        removeTemplateView();
        this.mPositionCode = -1;
        this.mHorizontalOffset = i;
        this.mVerticalOffset = i2;
        this.mAdSize = adSize;
        this.activity.runOnUiThread(new Runnable(this) { // from class: com.google.unity.ads.nativead.UnityNativeTemplateAd.6
            final /* synthetic */ UnityNativeTemplateAd this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                UnityNativeTemplateAd unityNativeTemplateAd = this.this$0;
                unityNativeTemplateAd.templateView = unityNativeTemplateStyle.asTemplateView(unityNativeTemplateAd.activity);
                this.this$0.templateView.setNativeAd(this.this$0.nativeAd);
                FrameLayout frameLayout = new FrameLayout(this.this$0.activity);
                FrameLayout.LayoutParams layoutParams = this.this$0.getLayoutParams();
                layoutParams.height = adSize.getHeight();
                layoutParams.width = adSize.getWidth();
                frameLayout.addView(this.this$0.templateView, layoutParams);
                this.this$0.activity.addContentView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
                this.this$0.setLayoutChangeListener();
            }
        });
    }

    public void renderCustomSizeAtPositionCode(final UnityNativeTemplateStyle unityNativeTemplateStyle, final AdSize adSize, int i) {
        removeTemplateView();
        this.mPositionCode = i;
        this.mAdSize = adSize;
        this.activity.runOnUiThread(new Runnable(this) { // from class: com.google.unity.ads.nativead.UnityNativeTemplateAd.7
            final /* synthetic */ UnityNativeTemplateAd this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                UnityNativeTemplateAd unityNativeTemplateAd = this.this$0;
                unityNativeTemplateAd.templateView = unityNativeTemplateStyle.asTemplateView(unityNativeTemplateAd.activity);
                this.this$0.templateView.setNativeAd(this.this$0.nativeAd);
                FrameLayout frameLayout = new FrameLayout(this.this$0.activity);
                FrameLayout.LayoutParams layoutParams = this.this$0.getLayoutParams();
                layoutParams.height = adSize.getHeight();
                layoutParams.width = adSize.getWidth();
                frameLayout.addView(this.this$0.templateView, layoutParams);
                this.this$0.activity.addContentView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
                this.this$0.setLayoutChangeListener();
            }
        });
    }

    public void renderDefaultSizeAtPosition(final UnityNativeTemplateStyle unityNativeTemplateStyle, int i, int i2) {
        removeTemplateView();
        this.mPositionCode = -1;
        this.mHorizontalOffset = i;
        this.mVerticalOffset = i2;
        this.mAdSize = null;
        this.activity.runOnUiThread(new Runnable(this) { // from class: com.google.unity.ads.nativead.UnityNativeTemplateAd.4
            final /* synthetic */ UnityNativeTemplateAd this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                UnityNativeTemplateAd unityNativeTemplateAd = this.this$0;
                unityNativeTemplateAd.templateView = unityNativeTemplateStyle.asTemplateView(unityNativeTemplateAd.activity);
                this.this$0.templateView.setNativeAd(this.this$0.nativeAd);
                FrameLayout frameLayout = new FrameLayout(this.this$0.activity);
                frameLayout.addView(this.this$0.templateView, this.this$0.getLayoutParams());
                this.this$0.activity.addContentView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
                this.this$0.setLayoutChangeListener();
            }
        });
    }

    public void renderDefaultSizeAtPositionCode(final UnityNativeTemplateStyle unityNativeTemplateStyle, int i) {
        removeTemplateView();
        this.mPositionCode = i;
        this.mAdSize = null;
        this.activity.runOnUiThread(new Runnable(this) { // from class: com.google.unity.ads.nativead.UnityNativeTemplateAd.5
            final /* synthetic */ UnityNativeTemplateAd this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                UnityNativeTemplateAd unityNativeTemplateAd = this.this$0;
                unityNativeTemplateAd.templateView = unityNativeTemplateStyle.asTemplateView(unityNativeTemplateAd.activity);
                this.this$0.templateView.setNativeAd(this.this$0.nativeAd);
                FrameLayout frameLayout = new FrameLayout(this.this$0.activity);
                frameLayout.addView(this.this$0.templateView, this.this$0.getLayoutParams());
                this.this$0.activity.addContentView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
                this.this$0.setLayoutChangeListener();
            }
        });
    }

    protected void setLayoutChangeListener() {
        if (this.mLayoutChangeListener != null) {
            return;
        }
        this.mLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: com.google.unity.ads.nativead.UnityNativeTemplateAd.12
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                if ((i == i5 && i3 == i7 && i4 == i8 && i2 == i6) || UnityNativeTemplateAd.this.hidden) {
                    return;
                }
                UnityNativeTemplateAd.this.updatePosition();
            }
        };
        this.activity.getWindow().getDecorView().getRootView().addOnLayoutChangeListener(this.mLayoutChangeListener);
    }

    public void setPosition(final int i, final int i2) {
        this.activity.runOnUiThread(new Runnable(this) { // from class: com.google.unity.ads.nativead.UnityNativeTemplateAd.3
            final /* synthetic */ UnityNativeTemplateAd this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.this$0.mPositionCode = -1;
                this.this$0.mHorizontalOffset = i;
                this.this$0.mVerticalOffset = i2;
                this.this$0.updatePosition();
            }
        });
    }

    public void setPositionCode(final int i) {
        this.activity.runOnUiThread(new Runnable(this) { // from class: com.google.unity.ads.nativead.UnityNativeTemplateAd.2
            final /* synthetic */ UnityNativeTemplateAd this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.this$0.mPositionCode = i;
                this.this$0.updatePosition();
            }
        });
    }

    public void show() {
        this.activity.runOnUiThread(new Runnable() { // from class: com.google.unity.ads.nativead.UnityNativeTemplateAd.9
            @Override // java.lang.Runnable
            public void run() {
                if (UnityNativeTemplateAd.this.templateView == null) {
                    return;
                }
                UnityNativeTemplateAd.this.hidden = false;
                UnityNativeTemplateAd.this.templateView.setVisibility(0);
                UnityNativeTemplateAd.this.updatePosition();
            }
        });
    }
}
