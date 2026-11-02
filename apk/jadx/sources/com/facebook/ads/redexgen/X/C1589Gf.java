package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.MediaViewVideoRenderer;
import com.facebook.ads.NativeAd;
import com.facebook.ads.internal.api.DefaultMediaViewVideoRendererApi;
import com.facebook.ads.internal.api.MediaViewVideoRendererApi;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.google.common.base.Ascii;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Gf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1589Gf extends C2666jg implements DefaultMediaViewVideoRendererApi {
    public static byte[] A0I;
    public static String[] A0J = {"mcYgxpLQMmIwsDd5yEmcOVEUvqtoI", "GHoJM0N9xHnxy27wJlEicj6316JJBG", "sAgmez8xlBVRjdgohc9cPNZKpCHjl", "UXd4O0RMEZeMz8rPKuZc9Jx8", "lkMSGOb1N9f2znZPpxO7v43dGPgWn", "ZJq7h5cFUWj9FCmvTSQNl6xA6rnC8", "yifDfgH7QVrqMR4w0vNHSMY9h4Ewh", "QZpfE8IVFABXRQwraZ"};
    public static final String A0K;
    public MediaViewVideoRenderer A01;
    public NativeAd.NativeOptions A02;
    public MediaViewVideoRendererApi A03;
    public C1618Hi A04;
    public InterfaceC2905nb A05;
    public AnonymousClass72 A07;
    public C5B A08;
    public AnonymousClass56 A09;
    public AbstractC2200c3 A0A;
    public C2199c2 A0B;
    public boolean A0C;
    public boolean A0D;
    public boolean A0E;
    public final InterfaceC2342eM A0F = new C1595Gl(this);
    public final AtomicBoolean A0G = new AtomicBoolean(false);
    public final AtomicBoolean A0H = new AtomicBoolean(false);
    public EnumC2916nm A06 = EnumC2916nm.A03;
    public float A00 = 0.0f;

    static {
        A0K();
        A0K = C1589Gf.class.getSimpleName();
    }

    private C1594Gk A03(MediaViewVideoRendererApi mediaViewVideoRendererApi) {
        return new C1594Gk(this, mediaViewVideoRendererApi);
    }

    private C1593Gj A04(MediaViewVideoRendererApi mediaViewVideoRendererApi) {
        return new C1593Gj(this, mediaViewVideoRendererApi);
    }

    private C1591Gh A05() {
        return new C1591Gh(this);
    }

    private C2199c2 A08() {
        return new C2199c2(this.A01, 50, true, new WeakReference(this.A0A), this.A04);
    }

    public static String A09(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0I, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 127);
        }
        return new String(bArrCopyOfRange);
    }

    private void A0C() {
        if (this.A07 != null) {
            C2338eI c2338eI = (C2338eI) this.A07.getVideoView();
            if (A0J[3].length() != 24) {
                throw new RuntimeException();
            }
            String[] strArr = A0J;
            strArr[2] = "uL1T6UePNJ7Kw1irCYcqiA1GlgiEZ";
            strArr[0] = "2BZHbySyGqLzqR4K5b7TQMpiAd64K";
            c2338eI.setViewImplInflationListener(this.A0F);
        }
    }

    private void A0D() {
        if (this.A07 != null) {
            this.A07.getVideoView().setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.ads.redexgen.X.nW
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return C1589Gf.A0U(view, motionEvent);
                }
            });
        }
    }

    private void A0E() {
        if (this.A07 != null) {
            this.A07.getVideoView().setOnTouchListener(new ViewOnTouchListenerC2904na(this));
        }
    }

    private void A0F() {
        if (this.A07 != null) {
            View videoView = this.A07.getVideoView();
            String[] strArr = A0J;
            if (strArr[4].length() == strArr[1].length()) {
                throw new RuntimeException();
            }
            A0J[7] = "MUEPyY1MJMWvhU3XHu";
            ((C2338eI) videoView).setViewImplInflationListener(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0G() {
        if (this.A02 != null && this.A02.getHideMediaControls() != null) {
            this.A04.A0F().ACW();
        }
        if (!C2863mv.A1Z(this.A04)) {
            this.A04.A0F().ACV();
        }
        if (this.A09 != null) {
            if (this.A02 != null && this.A02.getHideMediaControls() != null && this.A02.getHideMediaControls().booleanValue() && !C2863mv.A1Z(this.A04)) {
                this.A09.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.nX
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.A00.A0a();
                    }
                });
            } else if (this.A07 != null) {
                this.A07.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.nY
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.A00.A0b();
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0H() {
        if (this.A02 != null && this.A02.getUnMuteVolume() != null) {
            this.A04.A0F().ACY();
        }
        if (!C2863mv.A1a(this.A04)) {
            InterfaceC2300df interfaceC2300dfA0F = this.A04.A0F();
            String[] strArr = A0J;
            if (strArr[2].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0J;
            strArr2[2] = "1LM46mBaQZ9lvhhfym5pesMrcVXQN";
            strArr2[0] = "TQntEEQ1zf2wxryvKBf6rjJ9ZG9X1";
            interfaceC2300dfA0F.ACX();
        }
        if (this.A03 != null) {
            if (this.A02 == null || this.A02.getUnMuteVolume() == null || !this.A02.getUnMuteVolume().booleanValue() || C2863mv.A1a(this.A04)) {
                this.A03.setVolume(this.A00);
            } else {
                this.A03.setVolume(1.0f);
            }
        }
    }

    private void A0I() {
        if (this.A01.getVisibility() == 0 && this.A0C) {
            MediaViewVideoRenderer mediaViewVideoRenderer = this.A01;
            String[] strArr = A0J;
            if (strArr[4].length() == strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0J;
            strArr2[4] = "vtumVYeB8x7vkBeCNzRl37Vgwgf5m";
            strArr2[1] = "l5c2Nb35iHyego1JNAmcVzJY15xyfp";
            if (mediaViewVideoRenderer.hasWindowFocus()) {
                this.A0B.A0U();
                return;
            }
        }
        if (this.A07 != null && this.A07.getState() == EnumC2209cC.A05) {
            this.A0E = true;
        }
        this.A0B.A0V();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0J() {
        this.A06 = EnumC2916nm.A03;
        A0F();
    }

    public static void A0K() {
        A0I = new byte[]{7, 32, 56, 47, 34, 39, 42, 110, 60, 43, 32, 42, 43, 60, 43, 60, 110, 45, 38, 39, 34, 42, 110, 45, 33, 32, 40, 39, 41, 96, Ascii.SO, 38, 39, 42, 34, Ascii.NAK, 42, 38, 52, Ascii.NAK, 42, 39, 38, 44, 99, 42, 48, 99, 45, 54, 47, 47, 120, 99, 54, 45, 34, 33, 47, 38, 99, 55, 44, 99, 37, 42, 45, 39, 99, 42, 55, 109, Ascii.DLE, 43, 36, 39, 41, 32, 101, 49, 42, 101, 35, 44, 43, 33, 101, 8, 32, 33, 44, 36, 19, 44, 32, 50, 19, 44, 33, 32, 42, 101, 38, 45, 44, 41, 33, 107};
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:8:0x002a  */
    public void A0Q(GT gt, InterfaceC2905nb interfaceC2905nb) {
        String url;
        this.A0D = false;
        this.A0E = false;
        this.A05 = interfaceC2905nb;
        A0C();
        C5B c5b = this.A08;
        if (gt != null) {
            C2912ni adCoverImage = gt.getAdCoverImage();
            String[] strArr = A0J;
            if (strArr[2].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            A0J[3] = "zpp3cHPhluFOPvL30kkcY8af";
            if (adCoverImage != null) {
                url = gt.getAdCoverImage().getUrl();
            } else {
                url = null;
            }
        } else {
            url = null;
        }
        c5b.setImage(url, new C1592Gi(this));
        this.A06 = gt.A1D();
        this.A09.setPlayAccessibilityLabel(gt.A1K());
        this.A09.setPauseAccessibilityLabel(gt.A1J());
        this.A0B.A0U();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0R(EnumC2324e4 enumC2324e4) {
        if (this.A07 != null) {
            this.A07.A0f(enumC2324e4, 24);
        } else if (AdInternalSettings.isDebugBuild()) {
            Log.e(A0K, A09(30, 42, 60));
        }
    }

    private boolean A0S() {
        if (this.A02 != null && this.A02.getDisableFullScreen() != null) {
            this.A04.A0F().ACU();
        }
        if (!C2863mv.A1Y(this.A04)) {
            this.A04.A0F().ACT();
        }
        NativeAd.NativeOptions nativeOptions = this.A02;
        if (A0J[3].length() != 24) {
            throw new RuntimeException();
        }
        A0J[7] = "RWwkRb5gAe3cvvOYUG";
        return (nativeOptions == null || this.A02.getDisableFullScreen() == null || !this.A02.getDisableFullScreen().booleanValue() || C2863mv.A1Y(this.A04)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0T() {
        if (this.A07 == null || this.A07.getState() == EnumC2209cC.A06) {
            return false;
        }
        return this.A06 == EnumC2916nm.A05 || this.A06 == EnumC2916nm.A03;
    }

    public static /* synthetic */ boolean A0U(View view, MotionEvent motionEvent) {
        return false;
    }

    public final /* synthetic */ void A0a() {
        if (this.A07 != null) {
            this.A07.A0h(this.A09);
        }
    }

    public final /* synthetic */ void A0b() {
        if (this.A07 != null) {
            AnonymousClass72 anonymousClass72 = this.A07;
            String[] strArr = A0J;
            if (strArr[2].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            A0J[3] = "DdJUE8X44wBIaC44Y91rVqqX";
            anonymousClass72.A0g(this.A09);
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:23:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:25:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:28:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:30:0x0111  */
    /* JADX WARN: Code duplicated, block: B:32:0x0117  */
    @Override // com.facebook.ads.internal.api.DefaultMediaViewVideoRendererApi
    public final void initialize(Context context, MediaViewVideoRenderer mediaViewVideoRenderer, MediaViewVideoRendererApi mediaViewVideoRendererApi, int i) {
        InterfaceC2907nd interfaceC2907ndA04;
        AnonymousClass72 anonymousClass72;
        String[] strArr;
        AnonymousClass72 anonymousClass73;
        String[] strArr2;
        ((C2666jg) mediaViewVideoRendererApi.getAdComponentViewApi()).A00(this);
        this.A03 = mediaViewVideoRendererApi;
        switch (i) {
            case 0:
                interfaceC2907ndA04 = A04(mediaViewVideoRendererApi);
                break;
            case 1:
                interfaceC2907ndA04 = A03(mediaViewVideoRendererApi);
                break;
            default:
                throw new IllegalArgumentException(A09(0, 30, 49));
        }
        ((C2683jx) mediaViewVideoRendererApi).A06(interfaceC2907ndA04);
        this.A04 = C2673jn.A03(context);
        this.A01 = mediaViewVideoRenderer;
        this.A08 = new C5B(this.A04);
        this.A0A = A05();
        this.A0B = A08();
        float f = AbstractC3045px.A02;
        int i2 = (int) (2.0f * f);
        int i3 = (int) (25.0f * f);
        this.A09 = new AnonymousClass56(this.A04);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(9);
        layoutParams.addRule(12);
        this.A09.setPadding(i2, i3, i3, i2);
        this.A09.setLayoutParams(layoutParams);
        for (int i4 = 0; i4 < this.A01.getChildCount(); i4++) {
            View childAt = this.A01.getChildAt(0);
            if (childAt instanceof AnonymousClass72) {
                AnonymousClass72 anonymousClass74 = (AnonymousClass72) childAt;
                String[] strArr3 = A0J;
                if (strArr3[4].length() != strArr3[1].length()) {
                    A0J[3] = "bzrDqpY4LpZuK9aeaZZijHYv";
                    this.A07 = anonymousClass74;
                    anonymousClass72 = this.A07;
                    strArr = A0J;
                    if (strArr[2].length() == strArr[0].length()) {
                        String[] strArr4 = A0J;
                        strArr4[6] = "2aK7TrzSKlLOXQMMYyslcv3rZKnIT";
                        strArr4[5] = "rJ0uIs3irNdkufru0tgAA9z3l7YlJ";
                        if (anonymousClass72 == null) {
                            this.A07.A0g(this.A08);
                            anonymousClass73 = this.A07;
                            strArr2 = A0J;
                            if (strArr2[6].length() != strArr2[5].length()) {
                                throw new RuntimeException();
                            }
                            A0J[3] = "N5wNlZvELtjdUjcESL7VUEU7";
                            anonymousClass73.A0g(this.A09);
                        } else if (AdInternalSettings.isDebugBuild()) {
                            Log.e(A0K, A09(72, 36, 58));
                        }
                        this.A0B.A0W(0);
                        this.A0B.A0X(250);
                        interfaceC2907ndA04.AKm();
                        return;
                    }
                }
                throw new RuntimeException();
            }
        }
        anonymousClass72 = this.A07;
        strArr = A0J;
        if (strArr[2].length() == strArr[0].length()) {
            String[] strArr5 = A0J;
            strArr5[6] = "2aK7TrzSKlLOXQMMYyslcv3rZKnIT";
            strArr5[5] = "rJ0uIs3irNdkufru0tgAA9z3l7YlJ";
            if (anonymousClass72 == null) {
                this.A07.A0g(this.A08);
                anonymousClass73 = this.A07;
                strArr2 = A0J;
                if (strArr2[6].length() != strArr2[5].length()) {
                    throw new RuntimeException();
                }
                A0J[3] = "N5wNlZvELtjdUjcESL7VUEU7";
                anonymousClass73.A0g(this.A09);
            } else if (AdInternalSettings.isDebugBuild()) {
                Log.e(A0K, A09(72, 36, 58));
            }
            this.A0B.A0W(0);
            this.A0B.A0X(250);
            interfaceC2907ndA04.AKm();
            return;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.C2666jg, com.facebook.ads.internal.api.AdComponentViewParentApi
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.A0C = true;
        A0I();
    }

    @Override // com.facebook.ads.redexgen.X.C2666jg, com.facebook.ads.internal.api.AdComponentViewParentApi
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.A0C = false;
        A0I();
    }

    @Override // com.facebook.ads.internal.api.DefaultMediaViewVideoRendererApi
    public final void onPrepared() {
        boolean zA0r = C2863mv.A0r(this.A04);
        boolean zA0S = A0S();
        this.A01.setOnTouchListener(new ViewOnTouchListenerC2903nZ(this, zA0r, zA0S));
        if (zA0r || zA0S) {
            A0D();
        } else {
            A0E();
        }
    }

    @Override // com.facebook.ads.redexgen.X.C2666jg, com.facebook.ads.internal.api.AdComponentViewParentApi
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        A0I();
    }

    @Override // com.facebook.ads.redexgen.X.C2666jg, com.facebook.ads.internal.api.AdComponentView
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        A0I();
    }
}
