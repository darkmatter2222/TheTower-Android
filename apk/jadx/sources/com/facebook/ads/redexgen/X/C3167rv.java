package com.facebook.ads.redexgen.X;

import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3167rv extends LinearLayout {
    public static String[] A0C = {"qGr1oM6ze2ZvFDq8Ki3qRyObr5yzRiJx", "GLhQikeqKozzt8o0SUwffnX5udb8oJhX", "2L4KKrHXh4pefLzkJRf8f09TlA9KR0NV", "T9fSNkPH9eMciWKd16clkbXZ3ykgb54M", "faicLsaAheKF2xUwCFU0HAFzkiHnyWgp", "0QtCZdrMF7Ex6Wq3s19CgAsJPWeoHmD8", "KP6WAOmVSLY7bWYEX9zVsd7UruvbgzkW", "NylqH8MrhRt2V7B6iVtXBwRRmORn3eZu"};
    public static final int A0D = AbstractC3043pv.A0H;
    public int A00;
    public LA A01;
    public int A02;
    public TextView A03;
    public C3309uD A04;
    public final GradientDrawable A05;
    public final GradientDrawable A06;
    public final ImageView A07;
    public final LinearLayout A08;
    public final RelativeLayout A09;
    public final TextView A0A;
    public final C1618Hi A0B;

    public C3167rv(C1618Hi c1618Hi, LA la, int i) {
        super(c1618Hi);
        this.A05 = new GradientDrawable();
        this.A06 = new GradientDrawable();
        this.A0B = c1618Hi;
        this.A01 = la;
        this.A02 = this.A01.A36().A00();
        this.A07 = new ImageView(c1618Hi);
        this.A08 = new LinearLayout(c1618Hi);
        this.A09 = new RelativeLayout(c1618Hi);
        this.A0A = new TextView(c1618Hi);
        this.A00 = i;
        A02();
    }

    private void A00() {
        if (this.A04 == null) {
            A05();
        }
    }

    private void A01() {
        if (this.A03 == null) {
            A06();
        }
    }

    private void A02() {
        this.A05.setShape(1);
        this.A05.setColor(Integer.MIN_VALUE);
        this.A06.setShape(0);
        this.A06.setColor(Integer.MIN_VALUE);
        this.A06.setCornerRadii(new float[]{50.0f, 50.0f, 50.0f, 50.0f, 50.0f, 50.0f, 50.0f, 50.0f});
        A04();
        this.A09.addView(this.A0A);
        A03();
        this.A09.addView(this.A07);
        setToolbarActionMode(this.A00);
        setGravity(17);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(AbstractC3043pv.A0e, 0, AbstractC3043pv.A0e, 0);
        this.A08.addView(this.A09, layoutParams);
        addView(this.A08, new LinearLayout.LayoutParams(-2, -2));
    }

    private void A03() {
        this.A07.setColorFilter(-1);
        this.A07.setPadding(AbstractC3043pv.A0y, AbstractC3043pv.A0y, AbstractC3043pv.A0y, AbstractC3043pv.A0y);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(A0D, A0D);
        layoutParams.addRule(1, this.A0A.getId());
        this.A07.setLayoutParams(layoutParams);
    }

    private void A04() {
        this.A0A.setTextColor(-1);
        this.A0A.setTextSize(12.0f);
        if (Build.VERSION.SDK_INT >= 28) {
            this.A0A.setTypeface(Typeface.create(Typeface.SANS_SERIF, 500, false));
        }
        this.A0A.setPadding(AbstractC3043pv.A0c, 0, 0, 0);
        AbstractC3086qc.A0L(this.A0A);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(15);
        this.A0A.setLayoutParams(layoutParams);
    }

    private void A05() {
        this.A04 = new C3309uD(this.A0B, true);
        this.A04.A05(1308622847, -1, 255, false);
        this.A04.setCountdownTextSize((int) (AbstractC3045px.A02 * 15.0f));
        this.A04.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(A0D, A0D);
        layoutParams.addRule(13);
        this.A09.addView(this.A04, layoutParams);
    }

    private void A06() {
        this.A03 = new TextView(this.A0B);
        this.A03.setTextColor(-1);
        this.A03.setTextSize(14.0f);
        if (Build.VERSION.SDK_INT >= 28) {
            this.A03.setTypeface(Typeface.create(Typeface.SANS_SERIF, 700, false));
        } else {
            this.A03.setTypeface(Typeface.DEFAULT_BOLD);
        }
        this.A03.setShadowLayer(2.0f, 1.0f, 1.0f, ViewCompat.MEASURED_STATE_MASK);
        this.A03.setVisibility(8);
        this.A03.setPadding(AbstractC3043pv.A0c, 0, AbstractC3043pv.A0c, 0);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 16;
        this.A08.addView(this.A03, 0, layoutParams);
    }

    private void A07(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.A0A.setText(str);
        this.A0A.setVisibility(0);
        ImageView imageView = this.A07;
        int i = AbstractC3043pv.A0y;
        int i2 = AbstractC3043pv.A0y;
        int i3 = AbstractC3043pv.A0y;
        String[] strArr = A0C;
        if (strArr[0].charAt(24) != strArr[6].charAt(24)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0C;
        strArr2[1] = "AZx3si48BrJIzI6lxarAMnuTy1jTylGn";
        strArr2[7] = "jJOuKs0IpXdaj5Qo3UCZMDuYZwm2lMwx";
        imageView.setPadding(0, i, i2, i3);
        this.A09.setBackground(this.A06);
    }

    private EnumC3097qn getNtdIcon() {
        switch (this.A02) {
            case 1:
                return EnumC3097qn.ICON_SKIP;
            case 2:
                return EnumC3097qn.AD_NTD_CHEVRON_DOWN;
            case 3:
            case 4:
            case 5:
            default:
                return EnumC3097qn.OTHER_SKIP;
            case 6:
                return EnumC3097qn.AD_NTD_OPEN_APP_STORE;
            case 7:
                return EnumC3097qn.AD_NTD_OPEN_BROWSER;
        }
    }

    public final void A08() {
        if (this.A04 != null) {
            this.A04.A02();
        }
    }

    public final void A09() {
        if (this.A04 != null) {
            C3309uD c3309uD = this.A04;
            String[] strArr = A0C;
            if (strArr[1].charAt(13) == strArr[7].charAt(13)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0C;
            strArr2[4] = "sI3SeYbT8wRhKF2d6rzgQUgbiMyMiEih";
            strArr2[2] = "5PHiyS0s9LvMufB4gTB8mVsnJdFfCX5C";
            c3309uD.A03();
        }
    }

    public final void A0A(int i, int i2) {
        A01();
        A00();
        setVisibility(0);
        this.A09.setBackground(null);
        this.A07.setVisibility(4);
        this.A0A.setVisibility(8);
        if (this.A03 != null) {
            this.A03.setVisibility(8);
        }
        if (this.A04 != null) {
            this.A04.A04(((i2 - i) * 100.0f) / i2, i);
            this.A04.setVisibility(0);
        }
    }

    public final void A0B(LA la) {
        this.A01 = la;
        this.A02 = this.A01.A36().A00();
    }

    public final void A0C(boolean z) {
        if (this.A03 != null) {
            this.A03.setVisibility(z ? 0 : 8);
            setVisibility(z ? 0 : 4);
        }
    }

    public final boolean A0D() {
        return (this.A00 == 2 || this.A00 == 4) ? false : true;
    }

    public int getToolbarActionMode() {
        return this.A00;
    }

    public void setActionClickListener(View.OnClickListener onClickListener) {
        setOnClickListener(onClickListener);
    }

    public void setCountdownText(String str) {
        A01();
        if (this.A03 != null) {
            this.A03.setText(str);
            this.A03.setVisibility(0);
        }
    }

    public void setInitialUnskippableSeconds(int i) {
        if (i > 0) {
            setToolbarActionMode(2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x006a  */
    /* JADX WARN: Code duplicated, block: B:17:0x0078  */
    /* JADX WARN: Code duplicated, block: B:19:0x0080 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:20:0x0082  */
    /* JADX WARN: Code duplicated, block: B:21:0x008a  */
    /* JADX WARN: Code duplicated, block: B:24:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:25:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:26:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:29:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:31:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:33:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:34:0x0113  */
    public void setToolbarActionMode(int i) {
        EnumC3097qn ntdIcon;
        boolean zA2Z;
        ImageView imageView;
        String[] strArr;
        this.A0B.A0F().AHK(i);
        this.A00 = i;
        setVisibility(4);
        this.A0A.setVisibility(8);
        if (this.A01.A2Z()) {
            C3309uD c3309uD = this.A04;
            String[] strArr2 = A0C;
            if (strArr2[0].charAt(24) == strArr2[6].charAt(24)) {
                String[] strArr3 = A0C;
                strArr3[1] = "Zfh21neEYHGrqu6AehVHGLHZIiTgPzux";
                strArr3[7] = "LUYmK6n3EQhvaZrbcn1uq5zIxM57Ekrm";
                if (c3309uD != null) {
                    this.A04.setVisibility(8);
                }
                this.A07.setVisibility(0);
                this.A09.setBackground(this.A05);
                this.A07.setPadding(AbstractC3043pv.A0y, AbstractC3043pv.A0y, AbstractC3043pv.A0y, AbstractC3043pv.A0y);
                switch (i) {
                    case 0:
                        ntdIcon = EnumC3097qn.NAV_CROSS;
                        setVisibility(0);
                        break;
                    case 1:
                        ntdIcon = EnumC3097qn.ICON_SKIP;
                        A07(this.A01.A36().A0A());
                        setVisibility(0);
                        break;
                    case 8:
                        ntdIcon = getNtdIcon();
                        A07(this.A01.A36().A06());
                        zA2Z = this.A01.A2Z();
                        if (A0C[3].charAt(16) == '1') {
                            String[] strArr4 = A0C;
                            strArr4[1] = "kSspEgPHff5bTec2yY1OzwZgNUNGbpOv";
                            strArr4[7] = "8sBya8qMoblwRLZo0ZyILnJ6YfiCL582";
                            if (zA2Z) {
                                A0C(false);
                            }
                            setVisibility(0);
                        }
                        break;
                    case 9:
                        ntdIcon = EnumC3097qn.OTHER_SKIP;
                        A07(this.A01.A36().A05());
                        setVisibility(0);
                        break;
                    default:
                        ntdIcon = EnumC3097qn.NAV_CROSS;
                        break;
                }
                this.A07.setImageBitmap(AbstractC3098qo.A01(ntdIcon));
                if (i == 1) {
                    AbstractC3086qc.A0H(1005, this.A07);
                    return;
                }
                if (i == 8) {
                    AbstractC3086qc.A0H(1009, this.A07);
                    return;
                }
                imageView = this.A07;
                strArr = A0C;
                if (strArr[0].charAt(24) == strArr[6].charAt(24)) {
                    A0C[5] = "K9a8xkZfDY2e81FBiuSbRpEw5l9HcCeI";
                    AbstractC3086qc.A0H(1002, imageView);
                    return;
                }
            }
        } else {
            this.A09.setBackground(this.A05);
            this.A07.setPadding(AbstractC3043pv.A0y, AbstractC3043pv.A0y, AbstractC3043pv.A0y, AbstractC3043pv.A0y);
            switch (i) {
                case 0:
                    ntdIcon = EnumC3097qn.NAV_CROSS;
                    setVisibility(0);
                    break;
                case 1:
                    ntdIcon = EnumC3097qn.ICON_SKIP;
                    A07(this.A01.A36().A0A());
                    setVisibility(0);
                    break;
                case 8:
                    ntdIcon = getNtdIcon();
                    A07(this.A01.A36().A06());
                    zA2Z = this.A01.A2Z();
                    if (A0C[3].charAt(16) == '1') {
                        String[] strArr5 = A0C;
                        strArr5[1] = "kSspEgPHff5bTec2yY1OzwZgNUNGbpOv";
                        strArr5[7] = "8sBya8qMoblwRLZo0ZyILnJ6YfiCL582";
                        if (zA2Z) {
                            A0C(false);
                        }
                        setVisibility(0);
                    }
                    break;
                case 9:
                    ntdIcon = EnumC3097qn.OTHER_SKIP;
                    A07(this.A01.A36().A05());
                    setVisibility(0);
                    break;
                default:
                    ntdIcon = EnumC3097qn.NAV_CROSS;
                    break;
            }
            this.A07.setImageBitmap(AbstractC3098qo.A01(ntdIcon));
            if (i == 1) {
                AbstractC3086qc.A0H(1005, this.A07);
                return;
            }
            if (i == 8) {
                AbstractC3086qc.A0H(1009, this.A07);
                return;
            }
            imageView = this.A07;
            strArr = A0C;
            if (strArr[0].charAt(24) == strArr[6].charAt(24)) {
                A0C[5] = "K9a8xkZfDY2e81FBiuSbRpEw5l9HcCeI";
                AbstractC3086qc.A0H(1002, imageView);
                return;
            }
        }
        throw new RuntimeException();
    }
}
