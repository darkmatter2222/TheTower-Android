package com.facebook.ads.redexgen.X;

import android.view.View;
import android.widget.LinearLayout;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1570Fl extends AbstractC3112r2 {
    public static byte[] A03;
    public C1618Hi A00;
    public InterfaceC3111r1 A01;
    public final C3167rv A02;

    static {
        A05();
    }

    public C1570Fl(C1618Hi c1618Hi, LA la, int i) {
        super(c1618Hi);
        this.A00 = c1618Hi;
        setGravity(16);
        A04();
        this.A02 = new C3167rv(this.A00, la, i);
        A03();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 5);
        }
        return new String(bArrCopyOfRange);
    }

    private void A03() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        this.A02.setContentDescription(A02(0, 8, 93));
        this.A02.setActionClickListener(new ViewOnClickListenerC3130rK(this));
        addView(this.A02, layoutParams);
    }

    private void A04() {
        View view = new View(this.A00);
        view.setLayoutParams(new LinearLayout.LayoutParams(0, 0, 1.0f));
        addView(view);
    }

    public static void A05() {
        A03 = new byte[]{-91, -50, -47, -43, -57, -126, -93, -58};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public final void A09() {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public final void A0A() {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public final void A0B() {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public final void A0C(float f, int i) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public final void A0D(C2404fN c2404fN, boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public final boolean A0E() {
        return false;
    }

    public final void A0F() {
        this.A02.A08();
    }

    public final void A0G() {
        this.A02.A09();
    }

    public final void A0H(int i, int i2) {
        this.A02.A0A(i, i2);
    }

    public final void A0I(LA la) {
        this.A02.A0B(la);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public int getToolbarActionMode() {
        return this.A02.getToolbarActionMode();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public int getToolbarHeight() {
        return AbstractC3112r2.A01;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public InterfaceC3111r1 getToolbarListener() {
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setAdReportingVisible(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setCTAClickListener(View.OnClickListener onClickListener) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setCTAClickListener(ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setFullscreen(boolean z) {
    }

    public void setInitialUnskippableSeconds(int i) {
        this.A02.setInitialUnskippableSeconds(i);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setPageDetails(C2416fZ c2416fZ, String str, int i, C2425fi c2425fi) {
        this.A02.setInitialUnskippableSeconds(i);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setPageDetailsVisible(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setProgress(float f) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setProgressClickListener(View.OnClickListener onClickListener) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setProgressImage(EnumC3097qn enumC3097qn) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setProgressImmediate(float f) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setProgressSpinnerInvisible(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setToolbarActionMessage(String str) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setToolbarActionMode(int i) {
        this.A02.setToolbarActionMode(i);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setToolbarListener(InterfaceC3111r1 interfaceC3111r1) {
        this.A01 = interfaceC3111r1;
    }
}
