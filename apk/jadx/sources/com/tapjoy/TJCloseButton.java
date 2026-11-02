package com.tapjoy;

import android.animation.Animator;
import android.content.Context;
import android.os.Handler;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import com.unity3d.ads.core.domain.WebViewScreenCapture;

/* JADX INFO: loaded from: classes4.dex */
public class TJCloseButton extends ImageButton {
    private static final String a = "TJCloseButton";
    private ClosePosition b;
    private boolean c;
    private boolean d;

    public enum ClosePosition {
        TOP_LEFT(new int[]{10, 9}),
        TOP_CENTER(new int[]{10, 14}),
        TOP_RIGHT(new int[]{10, 11}),
        CENTER(new int[]{13}),
        BOTTOM_LEFT(new int[]{12, 9}),
        BOTTOM_CENTER(new int[]{12, 14}),
        BOTTOM_RIGHT(new int[]{12, 11});

        final RelativeLayout.LayoutParams a = new RelativeLayout.LayoutParams((int) (((double) TapjoyConnectCore.getDeviceScreenDensityScale()) * 75.0d), (int) (((double) TapjoyConnectCore.getDeviceScreenDensityScale()) * 75.0d));

        ClosePosition(int[] iArr) {
            for (int i : iArr) {
                this.a.addRule(i);
            }
            int deviceScreenDensityScale = (int) (TapjoyConnectCore.getDeviceScreenDensityScale() * (-10.0f));
            this.a.setMargins(0, deviceScreenDensityScale, deviceScreenDensityScale, 0);
        }
    }

    public TJCloseButton(Context context) {
        this(context, ClosePosition.TOP_RIGHT);
    }

    public TJCloseButton(Context context, ClosePosition closePosition) {
        super(context);
        this.c = true;
        this.b = closePosition;
        setImageBitmap(TapjoyIcons.getCloseCircularImage(new TapjoyDisplayMetricsUtil(getContext()).getScreenDensityScale()));
        setScaleType(ImageView.ScaleType.FIT_XY);
        setBackgroundColor(ViewCompat.MEASURED_SIZE_MASK);
        setLayoutParams(this.b.a);
    }

    static /* synthetic */ boolean b(TJCloseButton tJCloseButton) {
        tJCloseButton.d = false;
        return false;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        setAlpha(0.0f);
        setVisibility(0);
        this.d = true;
        setClickable(false);
        new Handler().postDelayed(new Runnable() { // from class: com.tapjoy.TJCloseButton.1
            @Override // java.lang.Runnable
            public final void run() {
                TJCloseButton.this.animate().alpha(1.0f).setDuration(500L).setListener(new Animator.AnimatorListener() { // from class: com.tapjoy.TJCloseButton.1.1
                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                        TJCloseButton.this.setClickable(TJCloseButton.this.c);
                        TJCloseButton.b(TJCloseButton.this);
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        TJCloseButton.this.setClickable(TJCloseButton.this.c);
                        TJCloseButton.b(TJCloseButton.this);
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator) {
                    }
                });
            }
        }, WebViewScreenCapture.CACHE_TTL_MS);
    }

    void setClickableRequested(boolean z) {
        this.c = z;
        if (this.d) {
            return;
        }
        setClickable(z);
    }
}
