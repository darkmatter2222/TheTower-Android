package com.facebook.ads.redexgen.X;

import android.content.pm.PackageManager;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.r5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C3115r5 extends LinearLayout {
    public static byte[] A09;
    public int A00;
    public ImageView A01;
    public final TextView A02;
    public final LA A03;
    public final C2746kz A04;
    public final C1618Hi A05;
    public final EnumC3117r7 A06;
    public final C3311uF A07;
    public final String A08;

    static {
        A06();
    }

    public C3115r5(C1618Hi c1618Hi, LA la, EnumC3117r7 enumC3117r7, int i) {
        super(c1618Hi);
        this.A05 = c1618Hi;
        this.A04 = new C2746kz(this.A05);
        this.A03 = la;
        this.A06 = enumC3117r7;
        this.A00 = i;
        this.A08 = A05(A03());
        Drawable drawableA00 = A00();
        setOrientation(0);
        AbstractC3086qc.A0U(this, enumC3117r7.A00, new float[]{C1582Fy.A0B, C1582Fy.A0B, 0.0f, 0.0f, 0.0f, 0.0f, C1582Fy.A0B, C1582Fy.A0B});
        setPadding(AbstractC3043pv.A06, AbstractC3043pv.A0U, AbstractC3043pv.A06, AbstractC3043pv.A0U);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(C1582Fy.A0A, C1582Fy.A0A);
        layoutParams.gravity = 17;
        layoutParams.rightMargin = AbstractC3043pv.A0w;
        if (drawableA00 != null) {
            this.A01 = new C3321uP(c1618Hi);
            this.A01.setImageDrawable(drawableA00);
            this.A01.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            addView(this.A01, layoutParams);
        }
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        this.A02 = new TextView(c1618Hi);
        this.A02.setSingleLine(true);
        this.A02.setTextColor(enumC3117r7.A01);
        this.A02.setEllipsize(TextUtils.TruncateAt.END);
        AbstractC3086qc.A0b(this.A02, true, 14);
        addView(this.A02, layoutParams2);
        this.A07 = new C3311uF(c1618Hi, 0, enumC3117r7.A01, EnumC3097qn.RIGHT_ARROW_ICON);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(AbstractC3043pv.A06, AbstractC3043pv.A06);
        layoutParams3.gravity = 17;
        addView(this.A07, layoutParams3);
    }

    private Drawable A00() {
        Drawable drawableA02 = A02();
        Drawable drawableA01 = A01();
        return ((!this.A03.A2s() || drawableA02 == null) && drawableA01 != null) ? drawableA01 : drawableA02;
    }

    private Drawable A01() {
        try {
            PackageManager packageManager = this.A05.getPackageManager();
            if (packageManager != null) {
                return this.A05.getApplicationInfo().loadIcon(packageManager);
            }
            return null;
        } catch (Exception e) {
            this.A05.A08().ABz(A04(14, 12, 55), 3802, new C2787lg(e));
            return null;
        }
    }

    private Drawable A02() {
        String strA1d = this.A03.A1d();
        if (TextUtils.isEmpty(strA1d)) {
            return null;
        }
        try {
            return new BitmapDrawable(this.A05.getResources(), this.A04.A0O(strA1d, C1582Fy.A0A, C1582Fy.A0A));
        } catch (Exception e) {
            this.A05.A08().ABz(A04(14, 12, 55), 3801, new C2787lg(e));
            return null;
        }
    }

    private String A03() {
        String strA1e = this.A03.A1e();
        if (this.A03.A2t() && !TextUtils.isEmpty(strA1e)) {
            return strA1e;
        }
        try {
            PackageManager packageManager = this.A05.getPackageManager();
            if (packageManager != null) {
                String string = this.A05.getApplicationInfo().loadLabel(packageManager).toString();
                if (!TextUtils.isEmpty(string)) {
                    return string;
                }
            }
        } catch (Exception e) {
            this.A05.A08().ABz(A04(14, 12, 55), 3803, new C2787lg(e));
        }
        return strA1e;
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 120);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A05(String str) {
        return str.length() > 10 ? str.substring(0, 10) + A04(0, 3, InterfaceC3669k1.d.b.k) : str;
    }

    public static void A06() {
        A09 = new byte[]{Ascii.ETB, Ascii.ETB, Ascii.ETB, 82, 88, 103, 103, 84, 40, SignedBytes.MAX_POWER_OF_TWO, 50, 48, SignedBytes.MAX_POWER_OF_TWO, 42, Ascii.DLE, Ascii.US, Ascii.US, Ascii.SO, Ascii.RS, Ascii.US, Ascii.DC4, Ascii.GS, Ascii.SO, Ascii.DLE, 19, 34};
    }

    private void A07(float f) {
        if (f > 0.0f) {
            this.A07.setVisibility(8);
        } else {
            this.A07.setVisibility(0);
        }
    }

    private void A08(float f) {
        String strA09;
        String strA04 = A04(3, 5, 127);
        if (f > 0.0f) {
            int iCeil = (int) Math.ceil(f / 1000.0f);
            boolean zIsEmpty = TextUtils.isEmpty(this.A08);
            String strA05 = A04(8, 6, 85);
            strA09 = zIsEmpty ? this.A03.A36().A08().replace(strA05, String.valueOf(iCeil)) : this.A03.A36().A03().replace(strA04, this.A08).replace(strA05, String.valueOf(iCeil));
        } else {
            strA09 = TextUtils.isEmpty(this.A08) ? this.A03.A36().A09() : this.A03.A36().A04().replace(strA04, this.A08);
        }
        this.A02.setText(strA09);
    }

    public final int A09() {
        return this.A00;
    }

    public final void A0A(float f) {
        A07(f);
        A08(f);
    }

    public final void A0B(float f) {
        A08(f);
        A07(f);
    }

    public final void A0C(int i) {
        this.A05.A0F().AHK(i);
        this.A00 = i;
    }
}
