package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class CY extends AbstractC2638jE implements InterfaceC3126rG {
    public C2410fT A00;
    public AbstractC2200c3 A01;
    public C2199c2 A02;
    public C2199c2 A03;
    public final int A04;
    public final SparseBooleanArray A05;
    public final C1618Hi A06;
    public final C13506i A07;

    public CY(C13506i c13506i, SparseBooleanArray sparseBooleanArray, C2199c2 c2199c2, int i, C1618Hi c1618Hi, C2410fT c2410fT) {
        super(c13506i);
        this.A06 = c1618Hi;
        this.A07 = c13506i;
        this.A05 = sparseBooleanArray;
        this.A02 = c2199c2;
        this.A04 = i;
        this.A00 = c2410fT;
    }

    private void A05(InterfaceC2884nG interfaceC2884nG, C3077qT c3077qT, String str, C2974ol c2974ol) {
        if (this.A05.get(c2974ol.A02())) {
            return;
        }
        if (this.A03 != null) {
            this.A03.A0V();
            this.A03 = null;
        }
        this.A01 = new C1481Ca(this, str, c2974ol, interfaceC2884nG, c2974ol.A04(), c3077qT);
        this.A03 = new C2199c2(this.A07, 10, new WeakReference(this.A01), this.A06);
        this.A03.A0Y(false);
        this.A03.A0W(100);
        this.A03.A0X(100);
        this.A07.setOnAssetsLoadedListener(new CZ(this, c2974ol));
    }

    public final void A0w(C2974ol c2974ol, InterfaceC2884nG interfaceC2884nG, C2746kz c2746kz, C3077qT c3077qT, String str, int i, int i2, int i3) {
        int iA02 = c2974ol.A02();
        this.A07.setTag(-1593835536, Integer.valueOf(iA02));
        this.A07.setupNativeCtaExtension(c2974ol);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(i, -2);
        int i4 = iA02 == 0 ? i3 : i2;
        if (iA02 < this.A04 - 1) {
            i3 = i2;
        }
        marginLayoutParams.setMargins(i4, 0, i3, 0);
        String strA08 = c2974ol.A03().A0I().A08();
        String strA09 = c2974ol.A03().A0I().A09();
        this.A07.setIsVideo(!TextUtils.isEmpty(strA09));
        if (this.A07.A1o()) {
            this.A07.setVideoPlaceholderUrl(strA08);
            this.A07.setVideoUrl(c2746kz.A0T(strA09));
        } else {
            this.A07.setImageUrl(strA08);
        }
        this.A07.setLayoutParams(marginLayoutParams);
        this.A07.setCTAInfo(c2974ol.A03().A0K(), c2974ol.A04());
        this.A07.A1p(c2974ol.A04());
        A05(interfaceC2884nG, c3077qT, str, c2974ol);
    }

    public final void A0x(C2199c2 c2199c2) {
        this.A02 = c2199c2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3126rG
    public final void AKX() {
        this.A07.A1j();
    }
}
