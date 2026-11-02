package com.facebook.ads.redexgen.X;

import android.widget.RelativeLayout;
import com.google.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tV, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3265tV extends RelativeLayout {
    public static InterfaceC3119r9 A05;
    public static byte[] A06;
    public static String[] A07 = {"CT308ms2RTF49ixw7iITcI5DvAIGWMXZ", "UVauKq3DlAHpB1vMyeeSD4Us6AaVXCYd", "G3Ivv2DNtSsvdOlvNnw6jHI40eb4uyYL", "qur6nZLrhU9XJET37yOODnXWYcrj37IJ", "OCLfHPrXkMpm02uq88EYR3Uw1JpI2kE3", "KopKmjllEHptdGx3", "mL4xXMXopKoNgp", "1VwEGJcTQNgN7iTbFc9O"};
    public static final int A08;
    public static final int A09;
    public static final int A0A;
    public IY A00;
    public C1618Hi A01;
    public C3T A02;
    public F2 A03;
    public C3320uO A04;

    static {
        A02();
        A09 = AbstractC3043pv.A0y;
        A08 = A09 * 10;
        A0A = (int) (AbstractC3045px.A02 * 15.0f);
        A05 = new F1();
    }

    public C3265tV(C1618Hi c1618Hi) {
        super(c1618Hi);
        this.A01 = c1618Hi;
        this.A02 = new C3T(c1618Hi);
        AbstractC3086qc.A0L(this.A02);
        this.A00 = new C7P();
        this.A00.A0G(this.A02);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(this.A02, layoutParams);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A07[6].length() == 9) {
                throw new RuntimeException();
            }
            String[] strArr = A07;
            strArr[2] = "hwjeWCnyrgrPOyFOaJyYR4Ki88uO9bQs";
            strArr[0] = "4m7NTkn57B9pIqsgccGzW0RoTzQfESBy";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 119);
            i4++;
        }
    }

    private ArrayList<C2974ol> A01(LA la) {
        if (la == null) {
            return new ArrayList<>();
        }
        List<C2395fE> listA39 = la.A39();
        ArrayList<C2974ol> arrayList = new ArrayList<>(listA39.size());
        for (int i = 0; i < listA39.size(); i++) {
            arrayList.add(new C2974ol(i, listA39.size(), listA39.get(i)));
        }
        return arrayList;
    }

    public static void A02() {
        A06 = new byte[]{-25, 5, Ascii.SYN, 19, Ascii.EM, Ascii.ETB, 9, Ascii.DLE, -60, -14, 5, Ascii.CAN, Ascii.CR, Ascii.SUB, 9, -60, Ascii.SUB, Ascii.CR, 9, Ascii.ESC, -60, 5, 8, 9, Ascii.DC4, Ascii.CAN, 9, Ascii.SYN, -60, Ascii.CR, Ascii.ETB, Ascii.DC2, -53, Ascii.CAN, -60, 7, Ascii.SYN, 9, 5, Ascii.CAN, 9, 8, -60, Ascii.DC4, Ascii.SYN, 19, Ascii.DC4, 9, Ascii.SYN, Ascii.DLE, Ascii.GS, -5, -7, 2, -7, 6, -3, -9};
    }

    public static InterfaceC3119r9 getDummyListener() {
        return A05;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUpLayoutForCardAtIndex(int i) {
        if (this.A04 != null) {
            this.A04.A00(i);
        }
    }

    private void setupDotsLayout(GT gt, ArrayList<C2974ol> arrayList) {
        this.A02.getCarouselCardBehaviorHelper().A0i(new F0(this));
        this.A04 = new C3320uO(this.A01, gt.A13().A31().A01(), arrayList.size());
        AbstractC3086qc.A0L(this.A04);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(3, this.A02.getId());
        layoutParams.setMargins(0, A0A, 0, 0);
        addView(this.A04, layoutParams);
    }

    public final void A04() {
        this.A02.setAdapter(null);
    }

    public final void A05(GT gt, int i) {
        ArrayList<C2974ol> arrayListA01 = A01(gt.A13());
        this.A02.setCardsInfo(arrayListA01);
        this.A03 = new F2(this.A01, arrayListA01, gt.A13(), this.A01.A02().A0A(), gt, A05, gt.A13().A37(), this.A02.getCarouselCardBehaviorHelper(), null);
        this.A02.setAdapter(this.A03);
        if (i == 0) {
            i = AbstractC3045px.A04.widthPixels;
        }
        int i2 = i - A08;
        if (A07[4].charAt(22) == 'f') {
            throw new RuntimeException();
        }
        A07[5] = "x3kPSyXPXXgJlLSMaorwFJdxdHWI";
        this.A03.A0Q(i2, 16, 0);
        this.A03.A0G();
        setupDotsLayout(gt, arrayListA01);
    }

    public final void A06(C2199c2 c2199c2) {
        if (this.A03 != null) {
            this.A03.A0R(c2199c2);
        } else {
            this.A01.A08().ABz(A00(51, 7, 29), AbstractC2786lf.A1v, new C2787lg(A00(0, 51, 45)));
        }
        this.A02.A27(c2199c2);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (z && this.A03 != null) {
            this.A03.A0Q((i3 - i) - A08, 16, 0);
        }
        super.onLayout(z, i, i2, i3, i4);
    }
}
