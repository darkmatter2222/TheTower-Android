package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
import android.widget.GridLayout;
import android.widget.ImageView;
import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3k, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C12743k extends AbstractC13235h {
    public static byte[] A03;
    public static String[] A04 = {"ikKBtYlS8EdGbd8Sq0odZDfnKoONzGS0", "DBn5Ocauyc7zo9ZGObGFJIKtaqVZxBSQ", "lm7EQ53jnO2V3HqlwmL25Q2MhvIqQm3f", "CWbrj9d1nRNP380gvlaxSmFYAfG3rwR8", "vQbY5", "jSDd3UBGb0rrzazSerBNNvLK", "fNekV3QJ4rl1LJIejAM1xLsHFOam23d9", "PNLhKgEBvYWcTJr0QfmKKMeNnWmRDpMq"};
    public GridLayout A00;
    public final C3349ur A01;
    public final C1483Cc A02;

    static {
        A03();
    }

    public C12743k(C3349ur c3349ur, String str, C1483Cc c1483Cc) {
        super(c3349ur, false, str, c1483Cc);
        this.A01 = c3349ur;
        this.A02 = c1483Cc;
    }

    public static GridLayout.LayoutParams A00(int i, int i2, int i3, int i4, int i5) {
        GridLayout.LayoutParams layoutParams = new GridLayout.LayoutParams(new ViewGroup.MarginLayoutParams(i, i2));
        layoutParams.rowSpec = GridLayout.spec(i3 / i4);
        layoutParams.columnSpec = GridLayout.spec(i3 % i4);
        A04(layoutParams, i3, i4, i5);
        return layoutParams;
    }

    private ImageView A01(int i, int i2, int i3, int i4, int i5, final C2622iy c2622iy) {
        ImageView imageView = new ImageView(this.A01.A06());
        imageView.setAdjustViewBounds(true);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        AbstractC3086qc.A0O(imageView, Integer.MIN_VALUE);
        imageView.setLayoutParams(A00(i, i2, i3, i4, i5));
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.ls
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.A00.A1x(c2622iy, view);
            }
        });
        return imageView;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 48);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A03 = new byte[]{-34, -36, -19, -22, -16, -18, -32, -25, -38, -15, -83, Ascii.SO, Ascii.SUB, Ascii.VT, 9, Ascii.CR, Ascii.VT, Ascii.FS, Ascii.EM, Ascii.US, Ascii.GS, Ascii.SI, Ascii.SYN, -48, -50, -41, -50, -37, -46, -52};
        if (A04[6].charAt(29) != '3') {
            throw new RuntimeException();
        }
        A04[1] = "2CnBTVnu05c3qC8r6cXLkJUhY8FNHlP8";
    }

    public static void A04(GridLayout.LayoutParams layoutParams, int i, int i2, int i3) {
        int i4 = i / i2;
        int i5 = i % i2;
        layoutParams.setMargins(i5 > 0 ? AbstractC3043pv.A01 : 0, i4 > 0 ? AbstractC3043pv.A01 : 0, i5 < i2 + (-1) ? AbstractC3043pv.A01 : 0, i4 < i3 + (-1) ? AbstractC3043pv.A01 : 0);
    }

    private void A05(GridLayout gridLayout, InterfaceC2619iv interfaceC2619iv, int i, int i2) {
        if (interfaceC2619iv.A7q() == null || interfaceC2619iv.A7q().isEmpty()) {
            return;
        }
        int[] iArrA1w = A1w(interfaceC2619iv.A97(), interfaceC2619iv.A8p(), i2 > 1 ? AbstractC3043pv.A0B : 0, i2);
        int i3 = iArrA1w[0];
        int i4 = iArrA1w[1];
        int i5 = 0;
        while (true) {
            int size = interfaceC2619iv.A7q().size();
            String[] strArr = A04;
            if (strArr[2].charAt(8) != strArr[3].charAt(8)) {
                throw new RuntimeException();
            }
            A04[0] = "2ARBnrZ1cEerP2LUfHum4n3Blmwa36s7";
            if (i5 >= size) {
                return;
            }
            C2622iy c2622iy = interfaceC2619iv.A7q().get(i5);
            ImageView imageViewA01 = A01(i3, i4, i5, i2, i, c2622iy);
            gridLayout.addView(imageViewA01);
            setImageUrl(imageViewA01, c2622iy.A06());
            i5++;
        }
    }

    private void A06(C2622iy c2622iy) {
        if (this.A01.A05().A2I() && c2622iy.A05() != null && A08(c2622iy)) {
            c2622iy.A05().AGa(c2622iy.A02());
        } else {
            A07(c2622iy);
        }
        this.A02.A0Y();
    }

    private void A07(C2622iy c2622iy) {
        if (this.A01.A05().A2K() && c2622iy.A03() != null) {
            A1q();
            setCTAInfo(c2622iy.A03().A0K(), c2622iy.A08());
            getCtaButton().A0E(A02(0, 11, 75));
        } else {
            String strA07 = c2622iy.A07();
            if (strA07 != null && !strA07.isEmpty()) {
                c2622iy.A04().A0F();
                c2622iy.A04().setClickUrl(strA07, c2622iy.A08());
            }
            c2622iy.A04().A0E(A02(11, 12, 122));
        }
    }

    private boolean A08(C2622iy c2622iy) {
        if (c2622iy.A03() == null || c2622iy.A03().A0K() == null) {
            return false;
        }
        C2395fE c2395fEA03 = c2622iy.A03();
        if (A04[1].length() != 32) {
            throw new RuntimeException();
        }
        A04[0] = "OoaFjyiLcTNH6IsRKncfqxguSLJA4cDe";
        String strA06 = c2395fEA03.A0K().A06();
        if (strA06 == null || strA06.isEmpty()) {
            return false;
        }
        try {
            return C2801lu.A08(AbstractC3011pP.A00(strA06)) != null;
        } catch (SecurityException e) {
            this.A01.A06().A08().ABz(A02(23, 7, 57), AbstractC2786lf.A2a, new C2787lg(e));
            return false;
        }
    }

    private void setImageUrl(ImageView imageView, String str) {
        new AsyncTaskC1552Et(imageView, this.A01.A06()).A04().A06(new C7(this)).A07(str);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC13235h
    public final void A1t(C1618Hi c1618Hi) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC13235h
    public final void A1u(C1618Hi c1618Hi, InterfaceC2619iv interfaceC2619iv) {
        int iCeil = (int) Math.ceil(Math.sqrt(interfaceC2619iv.A8p()));
        int iCeil2 = (int) Math.ceil(((double) interfaceC2619iv.A8p()) / ((double) iCeil));
        if (this.A00 != null) {
            removeView(this.A00);
        }
        ViewGroup.LayoutParams layoutParams = new GridLayout.LayoutParams(new ViewGroup.MarginLayoutParams(-1, -2));
        GridLayout gridLayout = new GridLayout(c1618Hi);
        gridLayout.setRowCount(iCeil2);
        gridLayout.setColumnCount(iCeil);
        gridLayout.setUseDefaultMargins(false);
        gridLayout.setOrientation(1);
        gridLayout.setLayoutParams(layoutParams);
        addView(gridLayout);
        this.A00 = gridLayout;
        A05(gridLayout, interfaceC2619iv, iCeil2, iCeil);
    }

    public final /* synthetic */ void A1x(C2622iy c2622iy, View view) {
        A06(c2622iy);
    }
}
