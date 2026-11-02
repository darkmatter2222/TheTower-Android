package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class CQ extends AbstractC2638jE implements InterfaceC3126rG {
    public static String[] A0B = {"av2tITPhYKbVn20ukUfJR25ELbcgjHbj", "MLeLe181lhP7dC21QqjxU1VDKV9lNkzJ", "XUmY4VBJ2tlJWKlPJ7YkBdCsKtcC", "bK6oHsXedskfaWsjnVeS6YyvP0sRA20b", "BhCeFQN4dHt9z3MLE3p7bnIzhrf86Cw8", "mLW9T0fP2Q5Hob07hRXsv0QUH1fN4", "pNzPXZ5fcby2PvmlRsfUzns43oHDF5Mi", "3YktW7BrcDIc4Xw2f2zdWv5xFETbHIAE"};
    public C2410fT A00;
    public AbstractC2200c3 A01;
    public C2199c2 A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final SparseBooleanArray A07;
    public final C1618Hi A08;
    public final C6V A09;
    public final C2199c2 A0A;

    public CQ(C6V c6v, SparseBooleanArray sparseBooleanArray, C2199c2 c2199c2, int i, int i2, int i3, int i4, C1618Hi c1618Hi, C2410fT c2410fT) {
        super(c6v);
        this.A08 = c1618Hi;
        this.A09 = c6v;
        this.A07 = sparseBooleanArray;
        this.A0A = c2199c2;
        this.A03 = i;
        this.A04 = i2;
        this.A05 = i3;
        this.A06 = i4;
        this.A00 = c2410fT;
    }

    private void A05(InterfaceC2884nG interfaceC2884nG, C3077qT c3077qT, String str, C2974ol c2974ol) {
        if (this.A07.get(c2974ol.A02())) {
            return;
        }
        if (this.A02 != null) {
            this.A02.A0V();
            if (A0B[4].charAt(16) != 'E') {
                throw new RuntimeException();
            }
            A0B[4] = "iteeE4SnfkkyQnEAEqI0za4snrHpWaXy";
            this.A02 = null;
        }
        this.A01 = new CS(this, str, c2974ol, interfaceC2884nG, c2974ol.A04(), c3077qT);
        this.A02 = new C2199c2(this.A09, 10, new WeakReference(this.A01), this.A08);
        this.A02.A0Y(false);
        this.A02.A0W(100);
        this.A02.A0X(100);
        this.A09.setOnAssetsLoadedListener(new CR(this, c2974ol));
    }

    public final ViewOnClickListenerC1544El A0w() {
        return this.A09.getCtaButton();
    }

    public final void A0x(C2974ol c2974ol, InterfaceC2884nG interfaceC2884nG, C2746kz c2746kz, C3077qT c3077qT, String str) {
        int iA02 = c2974ol.A02();
        this.A09.setTag(-1593835536, Integer.valueOf(iA02));
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(this.A03, -2);
        marginLayoutParams.setMargins(iA02 == 0 ? this.A04 : this.A05, 0, iA02 >= this.A06 + (-1) ? this.A04 : this.A05, 0);
        String strA08 = c2974ol.A03().A0I().A08();
        String strA09 = c2974ol.A03().A0I().A09();
        this.A09.setIsVideo(!TextUtils.isEmpty(strA09));
        if (this.A09.A1o()) {
            if (strA08 != null) {
                this.A09.setVideoPlaceholderUrl(strA08);
            }
            if (strA09 != null) {
                this.A09.setVideoUrl(c2746kz.A0T(strA09));
            }
        } else if (strA08 != null) {
            this.A09.setImageUrl(strA08);
        }
        this.A09.setLayoutParams(marginLayoutParams);
        this.A09.setAdTitleAndDescription(c2974ol.A03().A0J().A0H(), c2974ol.A03().A0J().A04());
        this.A09.setCTAInfo(c2974ol.A03().A0K(), c2974ol.A04());
        this.A09.A1r(c2974ol.A04());
        A05(interfaceC2884nG, c3077qT, str, c2974ol);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3126rG
    public final void AKX() {
        this.A09.A1j();
    }
}
