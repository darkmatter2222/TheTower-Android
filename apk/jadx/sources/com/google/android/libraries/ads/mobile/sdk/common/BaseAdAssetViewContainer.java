package com.google.android.libraries.ads.mobile.sdk.common;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.libraries.ads.mobile.sdk.internal.nativead.InternalNativeAd;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.lang.ref.WeakReference;
import kotlin.j12;
import kotlin.nr3;
import kotlin.p32;
import kotlin.tk0;
import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u00102\u001a\u000201¢\u0006\u0004\b3\u00104B\u0019\b\u0016\u0012\u0006\u00102\u001a\u000201\u0012\u0006\u00106\u001a\u000205¢\u0006\u0004\b3\u00107B!\b\u0016\u0012\u0006\u00102\u001a\u000201\u0012\u0006\u00106\u001a\u000205\u0012\u0006\u00108\u001a\u00020\u0007¢\u0006\u0004\b3\u00109B)\b\u0016\u0012\u0006\u00102\u001a\u000201\u0012\u0006\u00106\u001a\u000205\u0012\u0006\u00108\u001a\u00020\u0007\u0012\u0006\u0010:\u001a\u00020\u0007¢\u0006\u0004\b3\u0010;J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J+\u0010\u000b\u001a\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0017¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000e\u001a\u00020\u00022\b\u0010\r\u001a\u0004\u0018\u00010\u0005H\u0017¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0002H\u0017¢\u0006\u0004\b\u0010\u0010\u0004J\u0019\u0010\u0011\u001a\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0017¢\u0006\u0004\b\u0011\u0010\u000fJ\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0017¢\u0006\u0004\b\u0015\u0010\u0016R\u001a\u0010\u001c\u001a\u00020\u00178\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR(\u0010!\u001a\u0004\u0018\u00010\u00052\b\u0010\u001d\u001a\u0004\u0018\u00010\u00058F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010\u000fR(\u0010$\u001a\u0004\u0018\u00010\u00052\b\u0010\u001d\u001a\u0004\u0018\u00010\u00058F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\"\u0010\u001f\"\u0004\b#\u0010\u000fR(\u0010'\u001a\u0004\u0018\u00010\u00052\b\u0010\u001d\u001a\u0004\u0018\u00010\u00058F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b%\u0010\u001f\"\u0004\b&\u0010\u000fR(\u0010*\u001a\u0004\u0018\u00010\u00052\b\u0010\u001d\u001a\u0004\u0018\u00010\u00058F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b(\u0010\u001f\"\u0004\b)\u0010\u000fR(\u00100\u001a\u0004\u0018\u00010+2\b\u0010\u001d\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/¨\u0006<"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;", "Landroid/widget/FrameLayout;", "", "destroy", "()V", "Landroid/view/View;", "child", "", FirebaseAnalytics.Param.INDEX, "Landroid/view/ViewGroup$LayoutParams;", "params", "addView", "(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V", "view", "removeView", "(Landroid/view/View;)V", "removeAllViews", "bringChildToFront", "Landroid/view/MotionEvent;", "ev", "", "onInterceptTouchEvent", "(Landroid/view/MotionEvent;)Z", "Lads_mobile_sdk/p32;", "a", "Lads_mobile_sdk/p32;", "getNativeAdViewContainer", "()Lads_mobile_sdk/p32;", "nativeAdViewContainer", "value", "getHeadlineView", "()Landroid/view/View;", "setHeadlineView", "headlineView", "getCallToActionView", "setCallToActionView", "callToActionView", "getIconView", "setIconView", "iconView", "getStarRatingView", "setStarRatingView", "starRatingView", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesView;", "getAdChoicesView", "()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesView;", "setAdChoicesView", "(Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesView;)V", "adChoicesView", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "defStyleRes", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public abstract class BaseAdAssetViewContainer extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final p32 nativeAdViewContainer;
    private final FrameLayout b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseAdAssetViewContainer(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        FrameLayout frameLayoutA = a(context);
        this.b = frameLayoutA;
        this.nativeAdViewContainer = new p32(this, frameLayoutA);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseAdAssetViewContainer(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        FrameLayout frameLayoutA = a(context);
        this.b = frameLayoutA;
        this.nativeAdViewContainer = new p32(this, frameLayoutA);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseAdAssetViewContainer(Context context, AttributeSet attrs, int i) {
        super(context, attrs, i);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        FrameLayout frameLayoutA = a(context);
        this.b = frameLayoutA;
        this.nativeAdViewContainer = new p32(this, frameLayoutA);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseAdAssetViewContainer(Context context, AttributeSet attrs, int i, int i2) {
        super(context, attrs, i, i2);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        FrameLayout frameLayoutA = a(context);
        this.b = frameLayoutA;
        this.nativeAdViewContainer = new p32(this, frameLayoutA);
    }

    private final FrameLayout a(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    @Override // android.view.ViewGroup
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        super.addView(child, index, params);
        super.bringChildToFront(this.b);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void bringChildToFront(View child) {
        super.bringChildToFront(child);
        if (Intrinsics.areEqual(this.b, child)) {
            return;
        }
        super.bringChildToFront(this.b);
    }

    public final void destroy() {
        p32 p32Var = this.nativeAdViewContainer;
        synchronized (p32Var) {
            if (p32Var.d.get()) {
                return;
            }
            InternalNativeAd internalNativeAd = p32Var.i;
            if (internalNativeAd != null) {
                p32Var.c(internalNativeAd);
            }
            p32Var.i = null;
            FrameLayout frameLayout = p32Var.b;
            if (frameLayout != null) {
                frameLayout.setOnClickListener(null);
            }
            FrameLayout frameLayout2 = p32Var.b;
            if (frameLayout2 != null) {
                frameLayout2.setOnTouchListener(null);
            }
            p32Var.h.clear();
            FrameLayout frameLayout3 = p32Var.b;
            if (frameLayout3 != null) {
                frameLayout3.removeAllViews();
            }
            FrameLayout frameLayout4 = p32Var.c;
            if (frameLayout4 != null) {
                frameLayout4.removeAllViews();
            }
            p32Var.e = null;
            p32Var.b = null;
            p32Var.c = null;
            p32Var.d.set(true);
            p32Var.g = null;
            Unit unit = Unit.INSTANCE;
        }
    }

    public final AdChoicesView getAdChoicesView() {
        View viewB = this.nativeAdViewContainer.b("3011");
        if (viewB instanceof AdChoicesView) {
            return (AdChoicesView) viewB;
        }
        return null;
    }

    public final View getCallToActionView() {
        return this.nativeAdViewContainer.b("3002");
    }

    public final View getHeadlineView() {
        return this.nativeAdViewContainer.b("3001");
    }

    public final View getIconView() {
        return this.nativeAdViewContainer.b("3003");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final p32 getNativeAdViewContainer() {
        return this.nativeAdViewContainer;
    }

    public final View getStarRatingView() {
        return this.nativeAdViewContainer.b("3009");
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        j12 p;
        nr3 w;
        Intrinsics.checkNotNullParameter(ev, "ev");
        p32 p32Var = this.nativeAdViewContainer;
        p32Var.getClass();
        Intrinsics.checkNotNullParameter(this, "view");
        Intrinsics.checkNotNullParameter(ev, "motionEvent");
        synchronized (p32Var) {
            if (p32Var.d.get()) {
                return false;
            }
            InternalNativeAd internalNativeAd = p32Var.i;
            if (internalNativeAd != null && (p = internalNativeAd.getP()) != null) {
                InternalNativeAd internalNativeAd2 = p32Var.i;
                if (internalNativeAd2 != null && internalNativeAd2.y()) {
                    p.a(p32Var.b, ev);
                }
                InternalNativeAd internalNativeAd3 = p32Var.i;
                if (internalNativeAd3 != null && internalNativeAd3.w()) {
                    InternalNativeAd internalNativeAd4 = p32Var.i;
                    if (internalNativeAd4 != null && (w = internalNativeAd4.getW()) != null) {
                        ((tk0) w).a(ev);
                    }
                    if (p.e() != 0) {
                        WeakReference weakReference = new WeakReference(this);
                        Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
                        p.f = weakReference;
                        GestureDetector gestureDetector = p32Var.g;
                        if (gestureDetector != null) {
                            gestureDetector.onTouchEvent(ev);
                        }
                    }
                }
                return false;
            }
            return false;
        }
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        super.removeAllViews();
        super.addView(this.b);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (Intrinsics.areEqual(this.b, view)) {
            return;
        }
        super.removeView(view);
    }

    public final void setAdChoicesView(AdChoicesView adChoicesView) {
        this.nativeAdViewContainer.a(adChoicesView, "3011");
    }

    public final void setCallToActionView(View view) {
        this.nativeAdViewContainer.a(view, "3002");
    }

    public final void setHeadlineView(View view) {
        this.nativeAdViewContainer.a(view, "3001");
    }

    public final void setIconView(View view) {
        this.nativeAdViewContainer.a(view, "3003");
    }

    public final void setStarRatingView(View view) {
        this.nativeAdViewContainer.a(view, "3009");
    }
}
