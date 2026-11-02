package com.facebook.ads.redexgen.X;

import android.animation.AnimatorSet;
import android.net.Uri;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Be, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1459Be extends RelativeLayout implements InterfaceC2208cB, InterfaceC2430fn {
    public static byte[] A0G;
    public static String[] A0H = {"bTF0mPynjITMPKd7AWnGFE0wjuUHqGk", "NLuteA0O4hImypGMVaagZ7KROvpQko", "vHIsSgA1dNPe0TxNLDw8T5r", "Tu3OEd7", "fTm", "FLX2LFKD3Z9kyRG7iyj3Ajj18EKg1", "ES7oyLysdjBWPeOJZDQ9P8Sn", "e8"};
    public static final BL A0I;
    public static final BF A0J;
    public static final BD A0K;
    public static final B8 A0L;
    public static final B7 A0M;
    public static final B4 A0N;
    public static final B2 A0O;
    public static final B1 A0P;
    public float A00;
    public int A01;
    public C2892nO A02;
    public C2338eI A03;
    public boolean A04;
    public boolean A05;
    public boolean A06;
    public boolean A07;
    public final Handler A08;
    public final Handler A09;
    public final View.OnTouchListener A0A;
    public final C1618Hi A0B;
    public final C2831mP<AbstractC2832mQ, C2830mO> A0C;
    public final C2392fB A0D;
    public final List<InterfaceC2323e3> A0E;
    public final InterfaceC2210cD A0F;

    static {
        A0K();
        A0K = new BD();
        A0I = new BL();
        A0L = new B8();
        A0M = new B7();
        A0J = new BF();
        A0N = new B4();
        A0P = new B1();
        A0O = new B2();
    }

    public C1459Be(C1618Hi c1618Hi) {
        super(c1618Hi);
        this.A0E = new ArrayList();
        this.A08 = new Handler();
        this.A09 = new Handler();
        this.A0C = new C2831mP<>();
        this.A06 = true;
        this.A0D = new C2392fB();
        this.A01 = 200;
        this.A00 = 1.0f;
        this.A0A = new ViewOnTouchListenerC2431fo(this);
        this.A0B = c1618Hi;
        if (A0U(c1618Hi)) {
            this.A0F = new TextureViewSurfaceTextureListenerC1431Ac(c1618Hi);
        } else {
            this.A0F = new TextureViewSurfaceTextureListenerC1430Ab(c1618Hi);
        }
        A0I();
    }

    public C1459Be(C1618Hi c1618Hi, AttributeSet attributeSet) {
        super(c1618Hi, attributeSet);
        this.A0E = new ArrayList();
        this.A08 = new Handler();
        this.A09 = new Handler();
        this.A0C = new C2831mP<>();
        this.A06 = true;
        this.A0D = new C2392fB();
        this.A01 = 200;
        this.A00 = 1.0f;
        this.A0A = new ViewOnTouchListenerC2431fo(this);
        this.A0B = c1618Hi;
        if (A0U(c1618Hi)) {
            this.A0F = new TextureViewSurfaceTextureListenerC1431Ac(c1618Hi, attributeSet);
        } else {
            this.A0F = new TextureViewSurfaceTextureListenerC1430Ab(c1618Hi, attributeSet);
        }
        A0I();
    }

    public C1459Be(C1618Hi c1618Hi, AttributeSet attributeSet, int i) {
        super(c1618Hi, attributeSet, i);
        this.A0E = new ArrayList();
        this.A08 = new Handler();
        this.A09 = new Handler();
        this.A0C = new C2831mP<>();
        this.A06 = true;
        this.A0D = new C2392fB();
        this.A01 = 200;
        this.A00 = 1.0f;
        this.A0A = new ViewOnTouchListenerC2431fo(this);
        this.A0B = c1618Hi;
        if (A0U(c1618Hi)) {
            this.A0F = new TextureViewSurfaceTextureListenerC1431Ac(c1618Hi, attributeSet, i);
        } else {
            this.A0F = new TextureViewSurfaceTextureListenerC1430Ab(c1618Hi, attributeSet, i);
        }
        A0I();
    }

    private float A06(InterfaceC2210cD interfaceC2210cD) {
        int videoHeight = interfaceC2210cD.getVideoHeight();
        if (videoHeight == 0) {
            return 1.0f;
        }
        return interfaceC2210cD.getVideoWidth() / videoHeight;
    }

    public static String A0H(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0G, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 103);
        }
        return new String(bArrCopyOfRange);
    }

    private void A0I() {
        this.A07 = C2863mv.A0s(this.A0B);
        this.A0B.A0F().A40();
        this.A0F.setRequestedVolume(1.0f);
        this.A0F.setVideoStateChangeListener(this);
        this.A03 = new C2338eI(this.A0B, this.A0F);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        AbstractC3086qc.A0L(this.A03);
        addView(this.A03, layoutParams);
        setOnTouchListener(this.A0A);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0J() {
        this.A08.postDelayed(new C1463Bi(this), this.A01);
    }

    public static void A0K() {
        byte[] bArr = {4, 87, 73, 71, 4, 88, 83, 88, 69, 80, 4, 91, 69, 88, 71, 76, 4, 88, 77, 81, 73, 38, 88, 85, 85, 72, 81, 87, 79, 92, 3, 68, 87, 3};
        if (A0H[6].length() != 24) {
            throw new RuntimeException();
        }
        String[] strArr = A0H;
        strArr[5] = "dnbQEbQJ0095hjHrUlDt4BBpkj0Wp";
        strArr[7] = "GI";
        A0G = bArr;
    }

    private final void A0L() {
        for (InterfaceC2323e3 interfaceC2323e3 : this.A0E) {
            if (interfaceC2323e3 instanceof BP) {
                A0S((BP) interfaceC2323e3);
            }
            interfaceC2323e3.ABd(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0M(int i) {
        if (C2863mv.A0z(this.A0B)) {
            Toast.makeText(this.A0B, A0H(21, 13, 124) + (i / 1000.0f) + A0H(0, 21, 125), 1).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0N(EnumC2891nN enumC2891nN) {
        if (this.A02 == null) {
            return;
        }
        this.A02.A04(enumC2891nN, null);
    }

    private void A0R(InterfaceC2323e3 interfaceC2323e3) {
        if (interfaceC2323e3 instanceof BP) {
            A0T((BP) interfaceC2323e3);
        }
        interfaceC2323e3.ALp(this);
    }

    private void A0S(BP bp) {
        if (bp.getParent() == null) {
            if (bp instanceof C5B) {
                this.A03.A02(bp);
            } else {
                addView(bp);
            }
        }
    }

    private void A0T(BP bp) {
        if (bp instanceof C5B) {
            this.A03.A03(bp);
        } else {
            AbstractC3086qc.A0K(bp);
        }
    }

    private boolean A0U(C1618Hi c1618Hi) {
        return C2863mv.A34(c1618Hi, C2236cd.A03());
    }

    public final void A0X() {
        this.A0F.setVideoStateChangeListener(null);
        this.A0F.destroy();
    }

    public final void A0Y() {
        if (A0o()) {
            return;
        }
        this.A0F.AAH();
    }

    public final void A0Z() {
        Iterator<InterfaceC2323e3> it = this.A0E.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            if (A0H[0].length() != 31) {
                throw new RuntimeException();
            }
            A0H[0] = "GYUlZXdJo7nruMh2UHaMalRUd7rYm0D";
            if (!zHasNext) {
                this.A0E.clear();
                String[] strArr = A0H;
                if (strArr[4].length() != strArr[3].length()) {
                    String[] strArr2 = A0H;
                    strArr2[4] = "dBG";
                    strArr2[3] = "pEPub8w";
                    return;
                }
                return;
            }
            A0R(it.next());
        }
    }

    public final void A0a(int i) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.A03.getLayoutParams();
        layoutParams.removeRule(13);
        layoutParams.removeRule(10);
        layoutParams.removeRule(9);
        if (this.A00 == 1.0f) {
            InterfaceC2210cD interfaceC2210cD = this.A0F;
            if (A0H[0].length() != 31) {
                throw new RuntimeException();
            }
            String[] strArr = A0H;
            strArr[4] = "I7V";
            strArr[3] = "Q5Fe3RK";
            this.A00 = A06(interfaceC2210cD);
        }
        if (i == 1) {
            layoutParams.addRule(10);
        } else if (AbstractC3021pZ.A05(this.A00)) {
            layoutParams.addRule(13);
        } else {
            layoutParams.addRule(9);
        }
        this.A03.setLayoutParams(layoutParams);
    }

    public final void A0b(int i) {
        this.A08.removeCallbacksAndMessages(null);
        this.A0F.seekTo(i);
    }

    public final void A0c(int i) {
        this.A0F.ALY(i);
    }

    public final void A0d(AnimatorSet animatorSet, boolean z) {
        this.A03.A01(animatorSet, z);
    }

    public final void A0e(EnumC2378ex enumC2378ex) {
        C1460Bf c1460Bf = new C1460Bf(this);
        if (this.A07) {
            ExecutorC3079qV.A00(c1460Bf);
        } else {
            Handler handler = this.A09;
            if (A0H[6].length() != 24) {
                throw new RuntimeException();
            }
            A0H[6] = "kK0l9LoMdPIpLA2D0gOeof4W";
            handler.post(c1460Bf);
        }
        this.A0F.ALJ(enumC2378ex.A03());
    }

    public final void A0f(EnumC2324e4 enumC2324e4, int i) {
        if (this.A04 && this.A0F.getState() == EnumC2209cC.A06) {
            this.A04 = false;
            this.A0D.A00();
        }
        this.A0F.ALO(enumC2324e4, i);
    }

    public final void A0g(InterfaceC2323e3 interfaceC2323e3) {
        this.A0E.add(interfaceC2323e3);
    }

    public final void A0h(InterfaceC2323e3 interfaceC2323e3) {
        this.A0E.remove(interfaceC2323e3);
        A0R(interfaceC2323e3);
    }

    public final void A0i(boolean z) {
        A0j(z, 0);
    }

    public final void A0j(boolean z, int i) {
        if (A0o()) {
            return;
        }
        this.A0F.AI4(z, i);
    }

    public final void A0k(boolean z, boolean z2, int i) {
        this.A06 = z2;
        A0j(z, i);
    }

    public final boolean A0l() {
        return this.A0F.AAU();
    }

    public final boolean A0m() {
        return this.A0F.AAV();
    }

    public final boolean A0n() {
        return getVolume() == 0.0f;
    }

    public final boolean A0o() {
        return getState() == EnumC2209cC.A05;
    }

    public final boolean A0p() {
        return A0o() && this.A0F.ABK();
    }

    public final boolean A0q() {
        return getState() == EnumC2209cC.A0A;
    }

    public final boolean A0r() {
        return this.A07;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2430fn
    public final boolean AB8() {
        return A0U(this.A0B);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2430fn
    public final boolean ABD() {
        return this.A05;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2208cB
    public final void AF1(final long j, final long j2, final long j3, final float f) {
        if (C2863mv.A20(this.A0B)) {
            this.A0C.A02(new BO(j, j2, j3, f) { // from class: com.facebook.ads.redexgen.X.5X
            });
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2208cB
    public final void AFs() {
        A0j(true, 4);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2208cB
    public final void AFt() {
        A0f(EnumC2324e4.A05, 6);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2208cB
    public final void AGy(int i, int i2) {
        C1461Bg c1461Bg = new C1461Bg(this, i, i2);
        if (this.A07) {
            ExecutorC3079qV.A00(c1461Bg);
        } else {
            this.A09.post(c1461Bg);
        }
        A0J();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2208cB
    public final void AHn(EnumC2209cC enumC2209cC) {
        C1462Bh c1462Bh = new C1462Bh(this, enumC2209cC, getCurrentPositionInMillis(), getDuration());
        if (this.A07) {
            ExecutorC3079qV.A00(c1462Bh);
        } else {
            this.A09.post(c1462Bh);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2430fn
    public int getCurrentPositionInMillis() {
        return this.A0F.getCurrentPosition();
    }

    public int getDuration() {
        return this.A0F.getDuration();
    }

    public C2831mP<AbstractC2832mQ, C2830mO> getEventBus() {
        return this.A0C;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2430fn
    public long getInitialBufferTime() {
        return this.A0F.getInitialBufferTime();
    }

    public List<InterfaceC2323e3> getPlugins() {
        return this.A0E;
    }

    public EnumC2209cC getState() {
        return this.A0F.getState();
    }

    public Handler getStateHandler() {
        return this.A09;
    }

    public TextureView getTextureView() {
        return (TextureView) this.A0F;
    }

    public int getVideoHeight() {
        return this.A0F.getVideoHeight();
    }

    public View getVideoImplView() {
        return this.A0F.getView();
    }

    public int getVideoProgressReportIntervalMs() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2430fn
    public EnumC2324e4 getVideoStartReason() {
        return this.A0F.getStartReason();
    }

    public View getVideoView() {
        return this.A03;
    }

    public int getVideoWidth() {
        return this.A0F.getVideoWidth();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2430fn
    public float getVolume() {
        return this.A0F.getVolume();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        this.A0C.A02(A0O);
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.A0C.A02(A0P);
        super.onDetachedFromWindow();
    }

    public void setBackgroundPlaybackEnabled(boolean z) {
        this.A0F.setBackgroundPlaybackEnabled(z);
    }

    public void setControlsAnchorView(View view) {
        if (this.A0F != null) {
            this.A0F.setControlsAnchorView(view);
        }
    }

    public void setFunnelLoggingHandler(C2892nO c2892nO) {
        this.A02 = c2892nO;
    }

    public void setIsFullScreen(boolean z) {
        this.A05 = z;
        this.A0F.setFullScreen(z);
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(layoutParams);
    }

    public void setRoundedCornerVideoView(float f) {
        this.A03.setRoundedCornersVideoStyle(f);
    }

    public void setVideoMPD(String str) {
        this.A0F.setVideoMPD(str);
    }

    public void setVideoProgressReportIntervalMs(int i) {
        this.A01 = i;
    }

    public void setVideoURI(Uri uri) {
        if (uri == null) {
            A0Z();
        } else {
            A0L();
            this.A0F.setup(uri);
        }
        this.A04 = false;
        this.A0D.A00();
    }

    public void setVideoURI(String str) {
        this.A0B.A0F().A4A(str);
        setVideoURI(str != null ? AbstractC3011pP.A00(str) : null);
    }

    public void setVolume(float f) {
        if (f == 1.0f) {
            A0N(EnumC2891nN.A11);
            this.A0B.A0F().A4E();
        } else {
            A0N(EnumC2891nN.A10);
            this.A0B.A0F().A4D();
        }
        this.A0F.setRequestedVolume(f);
        C2831mP<AbstractC2832mQ, C2830mO> eventBus = getEventBus();
        if (A0H[2].length() == 19) {
            throw new RuntimeException();
        }
        A0H[2] = "etD2zaPMct9y2wbR2YehsJmmTem";
        eventBus.A02(A0N);
    }
}
