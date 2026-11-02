package com.facebook.ads.redexgen.X;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.RelativeLayout;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.eI, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2338eI extends RelativeLayout {
    public static String[] A04 = {"Z7YDROQZDOzGgLZ6JRzm0VB6SZj4zDor", "PEDxZ1hmcJv2HtokqPZuboN03zqPqfuu", "ZN3aiXgGzfL", "UoQOzdqMFdmvRVk6jZTbQbhJ01APWmUd", "BWydKlRDXGFiivyHlYlBLR13h8bygoZy", "calSGpe10AH6YV6oPZJsWkhcYoOFDSm8", "CqyCvSup05V", "6oqVw1T1HmkJfSZKyFG8rr7XXeYSScI0"};
    public static final int A05 = (int) (AbstractC3045px.A02 * 4.0f);
    public int A00;
    public C5B A01;
    public WeakReference<InterfaceC2342eM> A02;
    public final InterfaceC2210cD A03;

    public C2338eI(C1618Hi c1618Hi, InterfaceC2210cD interfaceC2210cD) {
        super(c1618Hi);
        this.A00 = 0;
        this.A03 = interfaceC2210cD;
        AbstractC3086qc.A0K((View) this.A03);
        addView(this.A03.getView(), new RelativeLayout.LayoutParams(-1, -1));
    }

    private void A00(AnimatorSet animatorSet, final int i, final boolean z) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.facebook.ads.redexgen.X.eY
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.A01.A04(z, i, valueAnimator);
            }
        });
        animatorSet.playTogether(valueAnimatorOfFloat);
    }

    public final void A01(AnimatorSet animatorSet, boolean z) {
        if (!z) {
            this.A03.getView().setClipToOutline(false);
            this.A03.getView().setOutlineProvider(ViewOutlineProvider.BACKGROUND);
            if (this.A01 != null) {
                this.A01.setClipToOutline(false);
                this.A01.setOutlineProvider(ViewOutlineProvider.BACKGROUND);
            }
            A00(animatorSet, this.A00, false);
            return;
        }
        this.A03.getView().setClipToOutline(true);
        C2344eO c2344eO = new C2344eO(this);
        this.A03.getView().setOutlineProvider(c2344eO);
        if (this.A01 != null) {
            this.A01.setClipToOutline(true);
            this.A01.setOutlineProvider(c2344eO);
        }
        A00(animatorSet, A05, true);
    }

    public final void A02(BP bp) {
        addView(bp, new RelativeLayout.LayoutParams(-1, -1));
        this.A01 = (C5B) bp;
    }

    public final void A03(BP bp) {
        AbstractC3086qc.A0K(bp);
        this.A01 = null;
    }

    public final /* synthetic */ void A04(boolean z, int i, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        if (!z) {
            String[] strArr = A04;
            if (strArr[5].charAt(24) == strArr[4].charAt(24)) {
                throw new RuntimeException();
            }
            A04[1] = "wCqIAiIIVzI7O3YweFiI0wV5bXgPpHOB";
            fFloatValue = 1.0f - fFloatValue;
        }
        this.A00 = (int) (i * fFloatValue);
        requestLayout();
    }

    public final boolean A05() {
        return this.A03.AAV();
    }

    public int getCurrentPosition() {
        return this.A03.getCurrentPosition();
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        ((View) this.A03).layout(this.A00, this.A00, getWidth() - this.A00, getHeight() - this.A00);
        if (this.A01 != null) {
            this.A01.layout(this.A00, this.A00, getWidth() - this.A00, getHeight() - this.A00);
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:43:0x00ee A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:44:0x00f0  */
    @Override // android.widget.RelativeLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        boolean z = false;
        int videoWidth = this.A03.getVideoWidth() + (this.A00 * 2);
        int videoHeight = this.A03.getVideoHeight() + (this.A00 * 2);
        int defaultSize = getDefaultSize(videoWidth, i);
        int defaultSize2 = getDefaultSize(videoHeight, i2);
        if (videoWidth > 0 && videoHeight > 0) {
            z = true;
            int mode = View.MeasureSpec.getMode(i);
            String[] strArr = A04;
            if (strArr[5].charAt(24) == strArr[4].charAt(24)) {
                throw new RuntimeException();
            }
            A04[1] = "CDDJeYuNvDEJubiWpvjZnzRFdpaPIWUA";
            int size = View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size2 = View.MeasureSpec.getSize(i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                defaultSize = size;
                defaultSize2 = size2;
                if (videoWidth * defaultSize2 < defaultSize * videoHeight) {
                    defaultSize = (defaultSize2 * videoWidth) / videoHeight;
                } else {
                    int i3 = videoWidth * defaultSize2;
                    int i4 = defaultSize * videoHeight;
                    if (A04[3].charAt(9) != 'h') {
                        A04[3] = "fC7LLJ1Dm89Wzyv9Y7CU7RKyEHK0kUw2";
                        if (i3 > i4) {
                            defaultSize2 = (defaultSize * videoHeight) / videoWidth;
                        }
                    } else if (i3 > i4) {
                        defaultSize2 = (defaultSize * videoHeight) / videoWidth;
                    }
                }
            } else if (mode == 1073741824) {
                defaultSize = size;
                defaultSize2 = (defaultSize * videoHeight) / videoWidth;
                if (mode2 == Integer.MIN_VALUE && defaultSize2 > size2) {
                    defaultSize2 = size2;
                }
            } else if (mode2 == 1073741824) {
                defaultSize2 = size2;
                defaultSize = (defaultSize2 * videoWidth) / videoHeight;
                String[] strArr2 = A04;
                if (strArr2[7].charAt(1) != strArr2[0].charAt(1)) {
                    String[] strArr3 = A04;
                    strArr3[7] = "6OY3VkVRTo9gTvB5T4EFQBtDC7FaIDf0";
                    strArr3[0] = "lXHmnICBdoyL7DjWTMRRGmshSxtLnfI6";
                    if (mode == Integer.MIN_VALUE) {
                        if (defaultSize > size) {
                            defaultSize = size;
                        }
                    }
                } else if (mode == Integer.MIN_VALUE) {
                    if (defaultSize > size) {
                        defaultSize = size;
                    }
                }
            } else {
                defaultSize = videoWidth;
                defaultSize2 = videoHeight;
                if (mode2 == Integer.MIN_VALUE && defaultSize2 > size2) {
                    defaultSize2 = size2;
                    defaultSize = (defaultSize2 * videoWidth) / videoHeight;
                }
                if (mode == Integer.MIN_VALUE && defaultSize > size) {
                    defaultSize = size;
                    defaultSize2 = (defaultSize * videoHeight) / videoWidth;
                }
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
        if (A04[3].charAt(9) != 'h') {
            A04[1] = "jUvlMuc6V7f2FSIr4bukaecFyxTPY1HC";
            if (!z) {
                return;
            }
        } else if (!z) {
            return;
        }
        if (this.A02 == null || this.A02.get() == null) {
            return;
        }
        this.A02.get().AHd();
    }

    public void setRoundedCornersVideoStyle(float f) {
        this.A03.getView().setClipToOutline(true);
        this.A03.getView().setOutlineProvider(new C2343eN(this, f));
    }

    public void setViewImplInflationListener(InterfaceC2342eM interfaceC2342eM) {
        this.A02 = new WeakReference<>(interfaceC2342eM);
    }
}
