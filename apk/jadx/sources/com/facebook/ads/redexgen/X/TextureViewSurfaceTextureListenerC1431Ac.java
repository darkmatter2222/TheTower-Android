package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.widget.MediaController;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ac, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class TextureViewSurfaceTextureListenerC1431Ac extends TextureView implements TextureView.SurfaceTextureListener, InterfaceC2239cg, InterfaceC2210cD, InterfaceC2237ce {
    public static byte[] A0O;
    public static String[] A0P = {"5i34yksohRV8hSvEB2dTOBGqhO", "V2RNkeamXobpzSRVkM4sjlG", "1HR", "8SLqGCa2wxiVkGjIaPVK9LXerY", "SSmTkZgpl4jZsKBndOsNgmbhAq5FKejN", "hgMiihLf1lx1lIiVFZ8jC", "euSTtDnbG06q2RqThlQcyR1Es6oMHQDw", "iHXqYQoKvaPWKvo"};
    public static final String A0Q;
    public float A00;
    public int A01;
    public int A02;
    public int A03;
    public long A04;
    public long A05;
    public Uri A06;
    public Surface A07;
    public View A08;
    public MediaController A09;
    public C1618Hi A0A;
    public EnumC2324e4 A0B;
    public C2236cd A0C;
    public EnumC2209cC A0D;
    public EnumC2209cC A0E;
    public InterfaceC2208cB A0F;
    public String A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0J;
    public boolean A0K;
    public boolean A0L;
    public boolean A0M;
    public boolean A0N;

    static {
        A07();
        A0Q = TextureViewSurfaceTextureListenerC1431Ac.class.getSimpleName();
    }

    public TextureViewSurfaceTextureListenerC1431Ac(C1618Hi c1618Hi) {
        super(c1618Hi);
        this.A0D = EnumC2209cC.A04;
        this.A0E = EnumC2209cC.A04;
        this.A0M = false;
        this.A0N = false;
        this.A0J = false;
        this.A03 = 0;
        this.A02 = 0;
        this.A00 = 1.0f;
        this.A01 = -1;
        this.A0I = false;
        this.A0H = false;
        this.A0B = EnumC2324e4.A04;
        this.A0K = false;
        this.A0L = false;
        this.A0A = c1618Hi;
    }

    public TextureViewSurfaceTextureListenerC1431Ac(C1618Hi c1618Hi, AttributeSet attributeSet) {
        super(c1618Hi, attributeSet);
        this.A0D = EnumC2209cC.A04;
        this.A0E = EnumC2209cC.A04;
        this.A0M = false;
        this.A0N = false;
        this.A0J = false;
        this.A03 = 0;
        this.A02 = 0;
        this.A00 = 1.0f;
        this.A01 = -1;
        this.A0I = false;
        this.A0H = false;
        this.A0B = EnumC2324e4.A04;
        this.A0K = false;
        this.A0L = false;
        this.A0A = c1618Hi;
    }

    public TextureViewSurfaceTextureListenerC1431Ac(C1618Hi c1618Hi, AttributeSet attributeSet, int i) {
        super(c1618Hi, attributeSet, i);
        this.A0D = EnumC2209cC.A04;
        this.A0E = EnumC2209cC.A04;
        this.A0M = false;
        this.A0N = false;
        this.A0J = false;
        this.A03 = 0;
        this.A02 = 0;
        this.A00 = 1.0f;
        this.A01 = -1;
        this.A0I = false;
        this.A0H = false;
        this.A0B = EnumC2324e4.A04;
        this.A0K = false;
        this.A0L = false;
        this.A0A = c1618Hi;
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0O, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 68);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0087  */
    /* JADX WARN: Code duplicated, block: B:27:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:34:? A[RETURN, SYNTHETIC] */
    private void A04() {
        this.A0C = new C2236cd(this.A0A);
        this.A0C.A0H(this);
        this.A0C.A0G(this);
        this.A0C.A0I(false);
        if (this.A0J && !this.A0I) {
            Activity activityA0E = this.A0A.A0E();
            if (A0P[5].length() != 21) {
                throw new RuntimeException();
            }
            String[] strArr = A0P;
            strArr[4] = "kOzpobq3cn2ENPvO1dz11rE9gYrdsM2t";
            strArr[6] = "XeC6T5eSgweGxN3AGx0qK1AhpVQau6BW";
            if (activityA0E != null) {
                this.A09 = new MediaController(activityA0E);
                this.A09.setAnchorView(this.A08 == null ? this : this.A08);
                this.A09.setMediaPlayer(new C2219cM(this));
                this.A09.setEnabled(true);
            } else {
                this.A09 = null;
            }
        }
        String str = this.A0G;
        String[] strArr2 = A0P;
        if (strArr2[4].charAt(4) != strArr2[6].charAt(4)) {
            A0P[1] = "7OzxCvlMe7OewOex";
            if (str != null) {
                if (this.A0G.length() != 0 || this.A0K) {
                }
            }
            setVideoState(EnumC2209cC.A08);
            if (isAvailable()) {
                onSurfaceTextureAvailable(getSurfaceTexture(), 0, 0);
            }
        }
        String[] strArr3 = A0P;
        strArr3[4] = "NXAVCVHzJxAz58YH1UEgH4PHy83Kp8aQ";
        strArr3[6] = "f1ODdwAOeVqSGvJpvEMDUKedn4FgojKu";
        if (str != null) {
            if (this.A0G.length() != 0) {
            }
        }
        setVideoState(EnumC2209cC.A08);
        if (isAvailable()) {
            onSurfaceTextureAvailable(getSurfaceTexture(), 0, 0);
        }
        this.A0C.A0F(this.A0A.A02(), this.A06);
        setVideoState(EnumC2209cC.A08);
        if (isAvailable()) {
            onSurfaceTextureAvailable(getSurfaceTexture(), 0, 0);
        }
    }

    private void A05() {
        if (this.A0C == null) {
            return;
        }
        C2238cf c2238cfA08 = this.A0C.A08();
        String[] strArr = A0P;
        if (strArr[3].length() != strArr[0].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0P;
        strArr2[3] = "yniwio37QFCiL85s5GWvJngxgc";
        strArr2[0] = "95HbvmBBNGyB2bovEph22CE4vZ";
        if (c2238cfA08 != null) {
            A08(c2238cfA08.A01, c2238cfA08.A00);
        }
    }

    private void A06() {
        if (this.A07 != null) {
            this.A07.release();
            this.A07 = null;
        }
        if (this.A0C != null) {
            this.A0C.A09();
            if (A0P[5].length() != 21) {
                throw new RuntimeException();
            }
            String[] strArr = A0P;
            strArr[3] = "he0jjWxzFB8qDestWT3k7cDZmQ";
            strArr[0] = "YQusGxI3ZRGEiRLtvLIlZ3cCdg";
            this.A0C = null;
        }
        this.A09 = null;
        this.A0N = false;
        setVideoState(EnumC2209cC.A04);
    }

    public static void A07() {
        A0O = new byte[]{84, 99, 99, 126, 99, 49, 120, 127, 49, 84, 105, 126, 65, 125, 112, 104, 116, 99, 49, 117, 100, 116, 49, 101, 126, 49, 126, 127, 66, 100, 99, 119, 112, 114, 116, 69, 116, 105, 101, 100, 99, 116, 85, 116, 98, 101, 99, 126, 104, 116, 117, 49, 117, 100, 99, 120, 127, 118, 49, 98, 116, 101, 71, 120, 117, 116, 126, 66, 100, 99, 119, 112, 114, 116, 49, 78, 115, 100, 91, 103, 106, 114, 110, 121, 43, 110, 121, 121, 100, 121, 43, 127, 121, 98, 108, 108, 110, 121, 110, 111, 43, 105, 114, 43, 100, 101, 88, 126, 121, 109, 106, 104, 110, 95, 110, 115, 127, 126, 121, 110, 79, 110, 120, 127, 121, 100, 114, 110, 111, 43, 111, 126, 121, 98, 101, 108, 43, 123, 106, 126, 120, 110, 43, 48, Ascii.CAN, Ascii.CAN, Ascii.DLE, Ascii.ESC, Ascii.DC2, 87, Ascii.SYN, Ascii.ESC, 0, Ascii.SYN, Ascii.SO, 4, 87, 3, Ascii.US, 5, Ascii.CAN, 0, 87, Ascii.SYN, Ascii.EM, 87, Ascii.DC2, Ascii.SI, Ascii.DC4, Ascii.DC2, 7, 3, Ascii.RS, Ascii.CAN, Ascii.EM, 87, 0, Ascii.RS, 3, Ascii.US, 87, 4, Ascii.DC2, 3, 53, Ascii.SYN, Ascii.DC4, Ascii.FS, Ascii.DLE, 5, Ascii.CAN, 2, Ascii.EM, 19, 51, 5, Ascii.SYN, 0, Ascii.SYN, Ascii.NAK, Ascii.ESC, Ascii.DC2, 87, Ascii.CAN, Ascii.EM, 87, 57, Ascii.CAN, 2, Ascii.DLE, Ascii.SYN, 3, 87, Ascii.SYN, Ascii.NAK, Ascii.CAN, 1, Ascii.DC2, 89, 87, 4, Ascii.CAN, 87, 0, Ascii.DC2, 87, 4, Ascii.RS, Ascii.ESC, Ascii.DC2, Ascii.EM, 3, Ascii.ESC, Ascii.SO, 87, Ascii.RS, Ascii.DLE, Ascii.EM, Ascii.CAN, 5, Ascii.DC2, 87, Ascii.RS, 3, 89, 127, 87, 87, 95, 84, 93, Ascii.CAN, 89, 84, 79, 89, 65, 75, Ascii.CAN, 76, 80, 74, 87, 79, Ascii.CAN, 89, 86, Ascii.CAN, 93, SignedBytes.MAX_POWER_OF_TWO, 91, 93, 72, 76, 81, 87, 86, Ascii.CAN, 79, 81, 76, 80, Ascii.CAN, 75, 93, 76, 126, 87, 74, 93, 95, 74, 87, 77, 86, 92, Ascii.CAN, 87, 86, Ascii.CAN, 118, 87, 77, 95, 89, 76, Ascii.CAN, 89, 90, 87, 78, 93, Ascii.SYN, Ascii.CAN, 75, 87, Ascii.CAN, 79, 93, Ascii.CAN, 75, 81, 84, 93, 86, 76, 84, 65, Ascii.CAN, 81, 95, 86, 87, 74, 93, Ascii.CAN, 81, 76, Ascii.SYN, 51, Ascii.FF, 1, 0, 10, 69, Ascii.SYN, 17, 4, 17, 0, 69, 6, Ascii.CR, 4, Ascii.VT, 2, 0, 1, 69, 17, 10, 69, 46, 44, 39, 44, 59, 32, 42};
        String[] strArr = A0P;
        if (strArr[4].charAt(4) == strArr[6].charAt(4)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0P;
        strArr2[3] = "4Rjqxy3w03hT2rk3wOaPN94qCv";
        strArr2[0] = "J56YrdEaTg6GnpCj3tljjm9xxp";
    }

    private void A08(int i, int i2) {
        if (i == this.A03 && i2 == this.A02) {
            return;
        }
        this.A03 = i;
        this.A02 = i2;
        if (this.A03 == 0 || this.A02 == 0) {
            return;
        }
        requestLayout();
    }

    public static boolean A09() {
        return C2236cd.A03();
    }

    private void setVideoState(EnumC2209cC enumC2209cC) {
        if (enumC2209cC != this.A0D) {
            if (this.A0A.A05().AB6()) {
                String str = A03(339, 23, 33) + enumC2209cC;
            }
            this.A0D = enumC2209cC;
            if (this.A0D == EnumC2209cC.A0A) {
                this.A0N = true;
            }
            if (this.A0F != null) {
                this.A0F.AHn(enumC2209cC);
            }
        }
    }

    public final /* synthetic */ void A0A() {
        Activity activityA0E = this.A0A.A0E();
        if (activityA0E == null || !activityA0E.isInMultiWindowMode()) {
            AAH();
            if (A0P[1].length() == 30) {
                throw new RuntimeException();
            }
            String[] strArr = A0P;
            strArr[3] = "ibP83lPIHp18E6DzSXuO582r7E";
            strArr[0] = "bqS8XhAkEDMP7WptTe4caNAUJi";
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public final void AAH() {
        if (this.A0H) {
            return;
        }
        AI4(false, 3);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public final boolean AAU() {
        return this.A0C != null && this.A0C.A0K();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public final boolean AAV() {
        return this.A0N;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public final boolean ABK() {
        return this.A0M;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2239cg
    public final void AGQ(String str, Exception exc) {
        this.A0A.A0F().ADN(str);
        this.A0A.A0F().A45(1);
        setVideoState(EnumC2209cC.A03);
        this.A0A.A08().ABz(A03(362, 7, 13), AbstractC2786lf.A1N, new C2787lg(exc));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2239cg
    public final void AGR(boolean z, int i) {
        if (this.A0C == null) {
            return;
        }
        switch (i) {
            case 1:
                setVideoState(EnumC2209cC.A04);
                return;
            case 2:
                A05();
                if (this.A01 >= 0) {
                    int i2 = this.A01;
                    this.A01 = -1;
                    InterfaceC2208cB interfaceC2208cB = this.A0F;
                    String[] strArr = A0P;
                    if (strArr[2].length() == strArr[7].length()) {
                        throw new RuntimeException();
                    }
                    A0P[1] = "rrPXv2FoHSgfFGcrQjG2fRVM";
                    if (interfaceC2208cB != null) {
                        this.A0F.AGy(i2, getCurrentPosition());
                        return;
                    }
                    return;
                }
                return;
            case 3:
                A05();
                this.A04 = System.currentTimeMillis();
                setRequestedVolume(this.A00);
                if (this.A05 > 0 && this.A05 < this.A0C.A07()) {
                    this.A0C.A0D(this.A05);
                    this.A05 = 0L;
                }
                if (this.A0C.A06() != 0 && !z && this.A0N) {
                    setVideoState(EnumC2209cC.A05);
                    return;
                }
                if (z || this.A0D == EnumC2209cC.A06) {
                    return;
                }
                setVideoState(EnumC2209cC.A07);
                if (this.A0E == EnumC2209cC.A0A) {
                    ALO(this.A0B, 8);
                    this.A0E = EnumC2209cC.A04;
                    return;
                }
                return;
            case 4:
                if (z) {
                    setVideoState(EnumC2209cC.A06);
                }
                if (this.A0C != null) {
                    this.A0C.A0I(false);
                    if (!z) {
                        this.A0C.A0A();
                    }
                }
                this.A0N = false;
                return;
            default:
                return;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2237ce
    public final void AHk(int i, int i2, int i3, float f) {
        A08(i, i2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public final void AI4(boolean z, int i) {
        this.A0A.A0F().A41(i);
        this.A0E = EnumC2209cC.A05;
        this.A0M = z;
        if (this.A0C != null) {
            this.A0C.A0I(false);
        } else {
            setVideoState(EnumC2209cC.A04);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public final void ALJ(int i) {
        this.A0A.A0F().ADO(i);
        setVideoState(EnumC2209cC.A09);
        ALY(5);
        this.A05 = 0L;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public final void ALO(EnumC2324e4 enumC2324e4, int i) {
        this.A0A.A0F().A4F(i);
        this.A0M = false;
        this.A0E = EnumC2209cC.A0A;
        this.A0B = enumC2324e4;
        if (this.A0C == null) {
            setup(this.A06);
        } else if (this.A0D == EnumC2209cC.A07 || this.A0D == EnumC2209cC.A05 || this.A0D == EnumC2209cC.A06) {
            this.A0C.A0I(true);
            setVideoState(EnumC2209cC.A0A);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public final void ALY(int i) {
        this.A0A.A0F().A4H(i);
        this.A0E = EnumC2209cC.A04;
        if (this.A0C != null) {
            this.A0C.A0B();
            this.A0C.A09();
            this.A0C = null;
        }
        setVideoState(EnumC2209cC.A04);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public final void destroy() {
        A06();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public int getCurrentPosition() {
        if (this.A0C != null) {
            return (int) this.A0C.A06();
        }
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public int getDuration() {
        if (this.A0C == null) {
            return 0;
        }
        return (int) this.A0C.A07();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public long getInitialBufferTime() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public EnumC2324e4 getStartReason() {
        return this.A0B;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public EnumC2209cC getState() {
        return this.A0D;
    }

    public EnumC2209cC getTargetState() {
        return this.A0E;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public int getVideoHeight() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public int getVideoWidth() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public View getView() {
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public float getVolume() {
        return this.A00;
    }

    @Override // android.view.TextureView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!C2863mv.A2o(getContext()) || isHardwareAccelerated()) {
            return;
        }
        setVideoState(EnumC2209cC.A03);
        ALY(8);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        if (this.A07 != null) {
            this.A07.release();
        }
        this.A07 = new Surface(surfaceTexture);
        if (this.A0C == null) {
            return;
        }
        this.A0C.A0E(this.A07);
        if (this.A0D != EnumC2209cC.A05 || this.A0M) {
            return;
        }
        ALO(this.A0B, 7);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        if (this.A07 != null) {
            this.A07.release();
            this.A07 = null;
            if (this.A0C != null) {
                try {
                    this.A0C.A0E(null);
                } catch (Exception e) {
                    this.A0A.A0F().ADN(A03(0, 75, 85) + e.getMessage());
                }
            }
        }
        if (this.A0D == EnumC2209cC.A05) {
            return true;
        }
        try {
            AI4(false, 5);
            return true;
        } catch (Exception e2) {
            this.A0A.A0F().ADN(A03(75, 68, 79) + e2.getMessage());
            return true;
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        if (C2863mv.A20(this.A0A) && this.A0D != EnumC2209cC.A08) {
            if (!this.A0L) {
                this.A0L = true;
                this.A0A.A0F().AKH();
            }
            long currentPosition = getCurrentPosition();
            long currentPosition2 = getCurrentPosition();
            long jCurrentTimeMillis = System.currentTimeMillis();
            float volume = getVolume();
            if (this.A0F != null) {
                this.A0F.AF1(currentPosition, currentPosition2, jCurrentTimeMillis, volume);
            }
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (this.A0C == null) {
            return;
        }
        if (this.A09 == null || !this.A09.isShowing()) {
            if (z) {
                if (this.A0D != EnumC2209cC.A05 || this.A0M) {
                    return;
                }
                ALO(this.A0B, 9);
                return;
            }
            if (this.A0D != EnumC2209cC.A05) {
                if ((this.A0A.A0H().A01() || C2863mv.A25(this.A0A)) && Build.VERSION.SDK_INT >= 24) {
                    new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.facebook.ads.redexgen.X.cO
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.A00.A0A();
                        }
                    }, 1000L);
                } else {
                    AAH();
                }
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public final void seekTo(int i) {
        if (this.A0C != null) {
            this.A01 = getCurrentPosition();
            this.A0C.A0D(i);
            return;
        }
        long j = i;
        String[] strArr = A0P;
        if (strArr[2].length() == strArr[7].length()) {
            throw new RuntimeException();
        }
        A0P[5] = "kfjJwAtkK1UY2s6fcoM3d";
        this.A05 = j;
    }

    @Override // android.view.TextureView, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (Build.VERSION.SDK_INT < 24) {
            super.setBackgroundDrawable(drawable);
            return;
        }
        boolean zIsDebugBuild = AdInternalSettings.isDebugBuild();
        if (A0P[5].length() != 21) {
            throw new RuntimeException();
        }
        A0P[1] = "HF5JdwiOlRNKOfaOH";
        if (zIsDebugBuild) {
            Log.w(A0Q, A03(143, 102, 51));
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public void setBackgroundPlaybackEnabled(boolean z) {
        this.A0H = z;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public void setControlsAnchorView(View view) {
        this.A08 = view;
        view.setOnTouchListener(new ViewOnTouchListenerC2217cK(this));
    }

    @Override // android.view.TextureView, android.view.View
    public void setForeground(Drawable drawable) {
        if (Build.VERSION.SDK_INT < 24) {
            super.setForeground(drawable);
            return;
        }
        if (AdInternalSettings.isDebugBuild()) {
            String str = A0Q;
            String[] strArr = A0P;
            if (strArr[3].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0P;
            strArr2[4] = "adR4uJi1AjYNmamYU7fKdN8LPQzpuqJY";
            strArr2[6] = "LCKmfGi2Ka9VnYBnqFwdGZK0MZJmec2m";
            Log.w(str, A03(245, 94, 124));
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public void setFullScreen(boolean z) {
        this.A0J = z;
        if (!z || this.A0I) {
            return;
        }
        setOnTouchListener(new ViewOnTouchListenerC2218cL(this));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public void setRequestedVolume(float f) {
        this.A00 = f;
        if (this.A0C == null || this.A0D == EnumC2209cC.A08 || this.A0D == EnumC2209cC.A04) {
            return;
        }
        this.A0C.A0C(f);
    }

    public void setTestMode(boolean z) {
        this.A0K = z;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public void setVideoMPD(String str) {
        this.A0G = str;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public void setVideoStateChangeListener(InterfaceC2208cB interfaceC2208cB) {
        this.A0F = interfaceC2208cB;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public void setup(Uri uri) {
        this.A0A.A0F().A44();
        if (this.A0C != null) {
            A06();
        }
        this.A06 = uri;
        setSurfaceTextureListener(this);
        A04();
    }
}
