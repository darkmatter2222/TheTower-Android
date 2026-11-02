package kotlin;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesPlacement;
import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesView;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import com.ironsource.C3528c4;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class t32 {
    public static final ImageView.ScaleType i = ImageView.ScaleType.CENTER_INSIDE;
    public final CoroutineScope a;
    public final CoroutineScope b;
    public final s02 c;
    public final ex0 d;
    public final hl1 e;
    public final t22 f;
    public final BaseRequest g;
    public final JsonObject h;

    public t32(CoroutineScope uiScope, CoroutineScope backgroundScope, s02 nativeAdAssets, ex0 flags, hl1 internalMediaContent, t22 nativeAdSettingsDataStore, BaseRequest baseRequest, JsonObject nativeAdJson) {
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(nativeAdAssets, "nativeAdAssets");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(internalMediaContent, "internalMediaContent");
        Intrinsics.checkNotNullParameter(nativeAdSettingsDataStore, "nativeAdSettingsDataStore");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(nativeAdJson, "nativeAdJson");
        this.a = uiScope;
        this.b = backgroundScope;
        this.c = nativeAdAssets;
        this.d = flags;
        this.e = internalMediaContent;
        this.f = nativeAdSettingsDataStore;
        this.g = baseRequest;
        this.h = nativeAdJson;
    }

    public static final void a(o32 nativeAdViewContainer, MotionEvent event) {
        Intrinsics.checkNotNullParameter(nativeAdViewContainer, "$nativeAdViewContainer");
        Intrinsics.checkNotNullParameter(event, "event");
        ((p32) nativeAdViewContainer).onTouch(null, event);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002d  */
    public static final void a(t32 t32Var, o32 o32Var) {
        AdChoicesView adChoicesView;
        View view;
        AdChoicesPlacement adChoicesPlacement;
        t32Var.getClass();
        ds1 ds1Var = ds1.a;
        JsonObject jsonObjectA = ds1.a(t32Var.h, C3528c4.c, (JsonObject) null);
        if (jsonObjectA == null || !ds1.a(jsonObjectA, "allow_pub_rendering", false)) {
            adChoicesView = null;
        } else {
            View viewB = ((p32) o32Var).b("3011");
            if (viewB instanceof AdChoicesView) {
                adChoicesView = (AdChoicesView) viewB;
            } else {
                adChoicesView = null;
            }
        }
        boolean z = adChoicesView != null;
        p32 p32Var = (p32) o32Var;
        FrameLayout frameLayoutC = p32Var.c();
        Context context = frameLayoutC != null ? frameLayoutC.getContext() : null;
        if (context == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        s02 s02Var = t32Var.c;
        View view2 = s02Var.t;
        if (view2 != null) {
            if (!z && (adChoicesPlacement = s02Var.u) != null) {
                int i2 = q32.a[adChoicesPlacement.ordinal()];
                if (i2 == 1) {
                    layoutParams.addRule(10);
                    layoutParams.addRule(9);
                } else if (i2 == 2) {
                    layoutParams.addRule(12);
                    layoutParams.addRule(9);
                } else if (i2 == 3) {
                    layoutParams.addRule(12);
                    layoutParams.addRule(11);
                } else if (i2 == 4) {
                    layoutParams.addRule(10);
                    layoutParams.addRule(11);
                }
                view2.setLayoutParams(layoutParams);
            }
            view = view2;
        } else {
            ak1 ak1Var = s02Var.h;
            if (ak1Var == null) {
                view = null;
            } else {
                if (!z) {
                    int i3 = q32.a[ak1Var.g.ordinal()];
                    if (i3 == 1) {
                        layoutParams.addRule(10);
                        layoutParams.addRule(9);
                    } else if (i3 == 2) {
                        layoutParams.addRule(12);
                        layoutParams.addRule(9);
                    } else if (i3 == 3) {
                        layoutParams.addRule(12);
                        layoutParams.addRule(11);
                    } else if (i3 == 4) {
                        layoutParams.addRule(10);
                        layoutParams.addRule(11);
                    }
                }
                wc1 wc1Var = new wc1(context, ak1Var, layoutParams);
                ex0 ex0Var = t32Var.d;
                ex0Var.getClass();
                Intrinsics.checkNotNullParameter("gads:ad_choices_content_description", C3510b4.i.W);
                Intrinsics.checkNotNullParameter("Ad Choices Icon", "defaultValue");
                wc1Var.setContentDescription((String) ex0Var.a("gads:ad_choices_content_description", "Ad Choices Icon", yr.o));
                view = wc1Var;
            }
        }
        if (view == null) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        if (z) {
            if (adChoicesView != null) {
                adChoicesView.removeAllViews();
            }
            if (adChoicesView != null) {
                adChoicesView.addView(view);
            }
        } else {
            AdChoicesView adChoicesView2 = new AdChoicesView(context);
            adChoicesView2.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            adChoicesView2.addView(view);
            FrameLayout frameLayoutD = p32Var.d();
            if (frameLayoutD != null) {
                frameLayoutD.addView(adChoicesView2);
            }
        }
        p32Var.a(view, "3012");
    }

    public final void a(o32 nativeAdViewContainer) {
        Intrinsics.checkNotNullParameter(nativeAdViewContainer, "nativeAdViewContainer");
        final p32 p32Var = (p32) nativeAdViewContainer;
        View viewB = p32Var.b("3010");
        Drawable drawable = null;
        ViewGroup viewGroup = viewB instanceof ViewGroup ? (ViewGroup) viewB : null;
        BuildersKt__Builders_commonKt.launch$default(this.b, null, null, new r32(this, viewGroup, null), 3, null);
        if (viewGroup == null) {
            return;
        }
        if (a(viewGroup)) {
            r31 r31Var = this.c.j;
            if (r31Var == null) {
                return;
            }
            r31Var.u = new tu1() { // from class: ads_mobile_sdk.t32$$ExternalSyntheticLambda0
                @Override // kotlin.tu1
                public final void a(MotionEvent motionEvent) {
                    t32.a(p32Var, motionEvent);
                }
            };
            return;
        }
        viewGroup.removeAllViews();
        FrameLayout frameLayoutC = p32Var.c();
        if (frameLayoutC == null) {
            return;
        }
        Context context = frameLayoutC.getContext();
        Intrinsics.checkNotNull(context);
        hl1 hl1Var = this.e;
        Drawable drawable2 = hl1Var.c;
        if (drawable2 == null) {
            km1 km1Var = hl1Var.a.f;
            if (km1Var != null) {
                drawable = km1Var.a;
            }
        } else {
            drawable = drawable2;
        }
        if (drawable == null) {
            return;
        }
        ImageView imageView = new ImageView(context);
        imageView.setImageDrawable(drawable);
        ImageView.ScaleType scaleTypeE = p32Var.e();
        if (scaleTypeE == null) {
            scaleTypeE = i;
        }
        imageView.setScaleType(scaleTypeE);
        imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        viewGroup.addView(imageView);
    }

    public final boolean a(ViewGroup mediaViewContainer) {
        r31 r31Var;
        v14 v14VarE;
        Intrinsics.checkNotNullParameter(mediaViewContainer, "mediaViewContainer");
        View view = this.c.k;
        if (view == null) {
            return false;
        }
        mediaViewContainer.removeAllViews();
        ViewParent parent = view.getParent();
        u14 u14Var = null;
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        mediaViewContainer.addView(view, new FrameLayout.LayoutParams(-1, -1, 17));
        ex0 ex0Var = this.d;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:native:disable_video_rect_for_fixed_size:enabled", C3510b4.i.W);
        if (!((Boolean) ex0Var.a("gads:native:disable_video_rect_for_fixed_size:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
            return true;
        }
        ViewGroup.LayoutParams layoutParams = mediaViewContainer.getLayoutParams();
        if (layoutParams != null && layoutParams.width == -2) {
            return true;
        }
        ViewGroup.LayoutParams layoutParams2 = mediaViewContainer.getLayoutParams();
        if (layoutParams2 != null && layoutParams2.height == -2) {
            return true;
        }
        r31 r31Var2 = this.c.j;
        if (r31Var2 != null && (v14VarE = r31Var2.e()) != null) {
            u14Var = v14VarE.a;
        }
        if (u14Var != u14.VIDEO_RECT || (r31Var = this.c.j) == null) {
            return true;
        }
        r31Var.a(new v14(u14.DEFAULT, 0, 0, 14));
        return true;
    }
}
