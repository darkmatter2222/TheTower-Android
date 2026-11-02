package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.widget.ImageView;
import android.widget.LinearLayout;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3230sw extends LinearLayout {
    public static byte[] A05;
    public static String[] A06 = {"FW", "Q2YDePwD", "xfbhShHGMHhMT6uuDw", "jNDuW72itdlyTzjBk2QaOnS1PHN0SPjx", "eyrOuV0HzLmUIeHzn9PPT0SvWZCkSI3X", "UzcBNM02cc9yxwaMb2hj9AqVtnEe5TFq", "9pRnNEpoBgc4bxbN9ec7sR6FA3J19fD3", "47V5DVjEjo3CtUBy4aYSYkHKjLZ069Qk"};
    public Bitmap A00;
    public ImageView A01;
    public final Bitmap A02;
    public final LA A03;
    public final C1618Hi A04;

    static {
        A03();
    }

    public C3230sw(C1618Hi c1618Hi, EnumC3229sv enumC3229sv, LA la) {
        super(c1618Hi);
        this.A02 = AbstractC3098qo.A01(EnumC3097qn.CREDIT_LINE_DETAIL_ICON);
        this.A04 = c1618Hi;
        this.A03 = la;
        AbstractC3228su.A04(c1618Hi, enumC3229sv);
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A06[1].length() == 29) {
                throw new RuntimeException();
            }
            A06[7] = "uaum4BHEdC5zUPmZwTShChJaSUalg3UY";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            int i5 = bArrCopyOfRange[i4] - i3;
            if (A06[7].charAt(7) != 'E') {
                throw new RuntimeException();
            }
            A06[0] = "k4dfE7WGR";
            bArrCopyOfRange[i4] = (byte) (i5 - 26);
            i4++;
        }
    }

    private void A01() {
        this.A01 = new ImageView(getContext());
        AbstractC3086qc.A0L(this.A01);
        this.A01.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.A01.setAdjustViewBounds(true);
        int i = AbstractC3043pv.A02;
        int i2 = -2;
        if (this.A00 != null && this.A03 != null && this.A03.A1S() != null && this.A03.A1S().A04() > 0) {
            float fA04 = this.A03.A1S().A04() * AbstractC3045px.A02;
            if (A06[3].charAt(4) == 'P') {
                throw new RuntimeException();
            }
            A06[0] = "zesIMha6dMBcJF3Y7";
            i2 = (int) fA04;
            i = -2;
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i2, i);
        if (this.A00 != null) {
            this.A01.setImageBitmap(this.A00);
        } else {
            this.A01.setImageBitmap(this.A02);
        }
        addView(this.A01, layoutParams);
    }

    private void A02() {
        setOrientation(0);
        setPadding(AbstractC3043pv.A0U, AbstractC3043pv.A0K, AbstractC3043pv.A0U, AbstractC3043pv.A0K);
        setClipToPadding(false);
        setGravity(17);
        AbstractC3086qc.A0O(this, 452984831);
        AbstractC3086qc.A0F(AbstractC3043pv.A0D, this);
        getDownloadedBitmap();
        A01();
    }

    public static void A03() {
        A05 = new byte[]{-90, -75, -88, -89, -84, -73, -94, -81, -84, -79, -88};
    }

    private void getDownloadedBitmap() {
        if (this.A03 != null) {
            LA la = this.A03;
            if (A06[6].charAt(7) == 'F') {
                throw new RuntimeException();
            }
            A06[5] = "mrmGHfZid9QyQb4Vru5FWC0VVTqxdFPj";
            if (la.A1S() == null || this.A03.A1S().A05() == null) {
                return;
            }
            int iA04 = this.A03.A1S().A04();
            if (A06[0].length() != 8) {
                A06[5] = "T9CRev3OGW3Mqy1gEoyheDV2VI3qCgxp";
                if (iA04 <= 0) {
                    return;
                }
            } else if (iA04 <= 0) {
                return;
            }
            if (this.A03.A1S().A03() > 0) {
                try {
                    this.A00 = new C2746kz(this.A04).A0O(this.A03.A1S().A05(), (int) (this.A03.A1S().A03() * AbstractC3045px.A02), (int) (this.A03.A1S().A04() * AbstractC3045px.A02));
                } catch (Exception e) {
                    this.A04.A08().ABz(A00(0, 11, 41), 3900, new C2787lg(e));
                }
            }
        }
    }

    public final void A04() {
        getDownloadedBitmap();
        if (this.A01 == null || this.A00 == null) {
            return;
        }
        LA la = this.A03;
        if (A06[0].length() != 8) {
            A06[7] = "pO7hpk8EIoKKbFgDFQyxUrLAO9gdDFC1";
            if (la == null) {
                return;
            }
            LA la2 = this.A03;
            if (A06[3].charAt(4) != 'P') {
                A06[4] = "bxlPWIizbtsJb24TU9OfYBkOV7GizHXP";
                if (la2.A1S() == null || this.A03.A1S().A04() <= 0) {
                    return;
                }
                this.A01.setLayoutParams(new LinearLayout.LayoutParams((int) (this.A03.A1S().A04() * AbstractC3045px.A02), -2));
                this.A01.setImageBitmap(null);
                this.A01.setImageBitmap(this.A00);
                return;
            }
        }
        throw new RuntimeException();
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        AbstractC3086qc.A0O(this, i);
    }
}
