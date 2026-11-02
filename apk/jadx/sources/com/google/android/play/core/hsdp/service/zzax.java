package com.google.android.play.core.hsdp.service;

import android.app.Activity;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import com.google.android.play.core.hsdp.R;

/* JADX INFO: compiled from: com.google.android.play:hsdp@@2.0.1 */
/* JADX INFO: loaded from: classes3.dex */
final class zzax {
    View zza = null;
    private final Activity zzb;
    private final WindowManager zzc;

    zzax(Activity activity) {
        this.zzb = activity;
        this.zzc = (WindowManager) activity.getSystemService("window");
    }

    public static /* synthetic */ void zza(zzax zzaxVar, View view) {
        Log.i("HsdpLoadingPanel", "hideLoading");
        try {
            if (view.getParent() != null) {
                zzaxVar.zzc.removeView(view);
            }
        } catch (RuntimeException e) {
            Log.e("HsdpLoadingPanel", "Error removing view from WindowManager", e);
        }
        zzaxVar.zza = null;
    }

    private final boolean zze() {
        return (this.zzb.getResources().getConfiguration().uiMode & 48) == 32;
    }

    final void zzb() {
        Log.i("HsdpLoadingPanel", "try to hideLoading");
        final View view = this.zza;
        if (view == null) {
            return;
        }
        this.zzb.runOnUiThread(new Runnable() { // from class: com.google.android.play.core.hsdp.service.zzau
            @Override // java.lang.Runnable
            public final void run() {
                zzax.zza(this.zza, view);
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:89:0x008e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    final void zzc() throws PackageManager.NameNotFoundException {
        Resources resourcesForApplication;
        Drawable drawable;
        boolean z;
        Log.i("HsdpLoadingPanel", "try to showLoading");
        if (this.zza != null) {
            return;
        }
        Log.i("HsdpLoadingPanel", "showLoading");
        Activity activity = this.zzb;
        View viewInflate = LayoutInflater.from(activity).inflate(R.layout.sdk_loading_panel, (ViewGroup) null);
        if (viewInflate == null) {
            Log.e("HsdpLoadingPanel", "Failed to inflate loading panel layout.");
            return;
        }
        this.zza = viewInflate;
        ((HsdpLoadingPanelContainer) viewInflate).setOnConfigurationChangedListener(new Runnable() { // from class: com.google.android.play.core.hsdp.service.zzav
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzd();
            }
        });
        View viewFindViewById = viewInflate.findViewById(R.id.hsdp_service_prism_with_loading_indicator);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(0);
        }
        try {
            resourcesForApplication = activity.getPackageManager().getResourcesForApplication("com.android.vending");
        } catch (Exception e) {
            Log.e("HsdpLoadingPanel", "Error getting resources for com.android.vending", e);
            resourcesForApplication = null;
        }
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.play_prism);
        if (imageView != null) {
            if (resourcesForApplication != null) {
                try {
                    int identifier = resourcesForApplication.getIdentifier("product_logo_play_prism_color_24", "drawable", "com.android.vending");
                    if (identifier != 0) {
                        imageView.setImageDrawable(resourcesForApplication.getDrawable(identifier, this.zzb.getTheme()));
                        Log.i("HsdpLoadingPanel", "Successfully loaded Play Prism icon as drawable from com.android.vending.");
                    } else {
                        try {
                            imageView.setImageResource(R.drawable.logo_play_prism_24dp);
                            Log.i("HsdpLoadingPanel", "Successfully loaded Play Prism icon from local resources.");
                        } catch (RuntimeException e2) {
                            Log.e("HsdpLoadingPanel", "Error loading Play Prism icon from local resources.", e2);
                            Log.e("HsdpLoadingPanel", "Failed to load Play Prism icon.");
                            this.zza = null;
                            return;
                        }
                    }
                } catch (RuntimeException e3) {
                    Log.e("HsdpLoadingPanel", "Error loading Play Prism icon from com.android.vending.", e3);
                }
            } else {
                imageView.setImageResource(R.drawable.logo_play_prism_24dp);
                Log.i("HsdpLoadingPanel", "Successfully loaded Play Prism icon from local resources.");
            }
        }
        ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.sdk_dismiss_button);
        if (imageButton != null) {
            Activity activity2 = this.zzb;
            int color = ContextCompat.getColor(activity2, zze() ? R.color.dismiss_icon_grey_500 : R.color.dismiss_icon_grey_700);
            if (resourcesForApplication != null) {
                try {
                    int identifier2 = resourcesForApplication.getIdentifier(zze() ? "grey_500" : "grey_700", "color", "com.android.vending");
                    if (identifier2 != 0) {
                        color = resourcesForApplication.getColor(identifier2, activity2.getTheme());
                    } else {
                        Log.w("HsdpLoadingPanel", "Could not load grey_500/grey_700 color from com.android.vending, falling back to local resources.");
                    }
                    int identifier3 = resourcesForApplication.getIdentifier("gs_close_rond100_vd_theme_24", "drawable", "com.android.vending");
                    if (identifier3 != 0) {
                        drawable = resourcesForApplication.getDrawable(identifier3, activity2.getTheme());
                        z = true;
                    } else {
                        Log.w("HsdpLoadingPanel", "Drawable resource 'gs_close_rond100_vd_theme_24' not found in com.android.vending");
                        z = false;
                        drawable = null;
                    }
                } catch (RuntimeException e4) {
                    Log.e("HsdpLoadingPanel", "Error loading dismiss icon from com.android.vending.", e4);
                }
            } else {
                z = false;
                drawable = null;
            }
            if (drawable == null) {
                drawable = AppCompatResources.getDrawable(this.zzb, android.R.drawable.ic_menu_close_clear_cancel);
                z = false;
            }
            if (drawable == null) {
                Log.e("HsdpLoadingPanel", "Failed to load dismiss button.");
                this.zza = null;
                return;
            } else {
                Drawable drawableWrap = DrawableCompat.wrap(drawable);
                DrawableCompat.setTint(drawableWrap, color);
                imageButton.setImageDrawable(drawableWrap);
                imageButton.setOnClickListener(new zzaw(this));
                Log.i("HsdpLoadingPanel", "Successfully loaded and tinted dismiss icon from ".concat(true != z ? "local resources." : "com.android.vending."));
            }
        }
        FrameLayout frameLayout = (FrameLayout) viewInflate.findViewById(R.id.content_frame);
        if (frameLayout == null) {
            Log.e("HsdpLoadingPanel", "content_frame not found in the layout.");
        } else {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            Activity activity3 = this.zzb;
            gradientDrawable.setCornerRadii(new float[]{zza.zza(activity3, 28), zza.zza(activity3, 28), zza.zza(activity3, 28), zza.zza(activity3, 28), 0.0f, 0.0f, 0.0f, 0.0f});
            gradientDrawable.setColor(ContextCompat.getColor(activity3, zze() ? R.color.background_dark : R.color.background_light));
            frameLayout.setBackground(gradientDrawable);
            frameLayout.setClipToOutline(true);
        }
        View viewFindViewById2 = viewInflate.findViewById(R.id.placeholder_loading);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility(0);
        }
        try {
            Activity activity4 = this.zzb;
            int iZzb = zza.zzb(activity4);
            int dimensionPixelSize = activity4.getResources().getDimensionPixelSize(R.dimen.sdk_hsdp_loading_ui_height);
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -2, 2, 40, -3);
            layoutParams.height = Math.min(activity4.getResources().getDimensionPixelSize(R.dimen.sdk_hsdp_loading_ui_height), (int) (zza.zzb(activity4) * 0.6f));
            if (activity4.getResources().getConfiguration().screenWidthDp > 640) {
                layoutParams.width = zza.zza(activity4, 640);
            }
            layoutParams.gravity = 81;
            Log.i("HsdpLoadingPanel", "screenHeight: " + iZzb + ", loadingUiHeight: " + dimensionPixelSize + ", wmParams.y: " + layoutParams.y);
            this.zzc.addView(viewInflate, layoutParams);
            Log.i("HsdpLoadingPanel", "Successfully added view to WindowManager. loadingView size: " + viewInflate.getWidth() + "x" + viewInflate.getHeight());
            FrameLayout frameLayout2 = (FrameLayout) viewInflate.findViewById(R.id.content_frame);
            if (frameLayout2 != null) {
                Log.i("HsdpLoadingPanel", "contentFrame size: " + frameLayout2.getWidth() + "x" + frameLayout2.getHeight());
            }
        } catch (RuntimeException e5) {
            Log.e("HsdpLoadingPanel", "Error adding view to WindowManager", e5);
            this.zza = null;
        }
    }

    final void zzd() {
        View view = this.zza;
        if (view == null) {
            return;
        }
        if (this.zzb.isInPictureInPictureMode()) {
            zzb();
            return;
        }
        try {
            WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) view.getLayoutParams();
            if (layoutParams != null) {
                Activity activity = this.zzb;
                layoutParams.height = Math.min(activity.getResources().getDimensionPixelSize(R.dimen.sdk_hsdp_loading_ui_height), (int) (zza.zzb(activity) * 0.6f));
                if (activity.getResources().getConfiguration().screenWidthDp > 640) {
                    layoutParams.width = zza.zza(activity, 640);
                } else {
                    layoutParams.width = -1;
                }
                this.zzc.updateViewLayout(view, layoutParams);
                Log.i("HsdpLoadingPanel", "updateLoadingView: updated window size.");
            }
        } catch (RuntimeException e) {
            Log.e("HsdpLoadingPanel", "updateLoadingView: error updating window size.", e);
        }
    }
}
