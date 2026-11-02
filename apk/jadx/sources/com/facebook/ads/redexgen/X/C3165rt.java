package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3165rt extends LinearLayout {
    public static String[] A0C = {"RdKbZKE5ShqjtspsYuId0BpVT", "jFs6Ox2yxsj", "", "O0DGVMIkWcl", "ZjYxtVw01iwSMNXN0b17Jtyc9gHU9Z2d", "b1LSaO6GQJOSELIr8C99", "", "wukZGaaSm"};
    public static final int A0D = (int) (AbstractC3045px.A02 * 15.0f);
    public static final int A0E = (int) (AbstractC3045px.A02 * 10.0f);
    public static final int A0F = (int) (AbstractC3045px.A02 * 44.0f);
    public int A00;
    public boolean A01;
    public boolean A02;
    public int A03;
    public String A04;
    public boolean A05;
    public boolean A06;
    public final ImageView A07;
    public final LinearLayout A08;
    public final TextView A09;
    public final C1618Hi A0A;
    public final C3309uD A0B;

    public C3165rt(C1618Hi c1618Hi, int i, boolean z) {
        super(c1618Hi);
        this.A01 = false;
        this.A02 = false;
        this.A04 = "";
        this.A0A = c1618Hi;
        this.A05 = z;
        this.A07 = new ImageView(c1618Hi);
        this.A07.setPadding(A0E, A0E, A0E, A0E);
        this.A0B = new C3309uD(c1618Hi, this.A05);
        this.A0B.setProgress(0.0f);
        this.A0B.setPadding(A0E, A0E, A0E, A0E);
        this.A09 = new TextView(c1618Hi);
        setOrientation(0);
        this.A08 = new LinearLayout(c1618Hi);
        this.A00 = i;
        A01();
    }

    private void A00() {
        if (this.A06) {
            this.A09.setText("");
            this.A09.setVisibility(8);
            this.A06 = false;
        }
    }

    private void A01() {
        setToolbarActionMode(this.A00);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        setGravity(17);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(A0F, A0F);
        AbstractC3086qc.A0b(this.A09, true, 16);
        this.A09.setTextColor(-1);
        this.A09.setVisibility(8);
        this.A08.addView(this.A07, layoutParams2);
        this.A08.addView(this.A0B, layoutParams2);
        addView(this.A08, layoutParams);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 17;
        addView(this.A09, layoutParams3);
    }

    private void A02() {
        if (TextUtils.isEmpty(this.A04)) {
            return;
        }
        this.A09.setText(this.A04);
        this.A09.setVisibility(0);
        this.A06 = true;
    }

    private void A03() {
        int i;
        int i2 = 0;
        boolean z = this.A00 == 2 || this.A00 == 6;
        C3309uD c3309uD = this.A0B;
        if (z) {
            i = (this.A01 || this.A02) ? 4 : 0;
        } else {
            i = 8;
        }
        c3309uD.setVisibility(i);
        if (this.A00 == 5) {
            i2 = 4;
        } else if (z) {
            i2 = 8;
        }
        if (this.A02 && i2 == 0) {
            i2 = 8;
        }
        this.A07.setVisibility(i2);
        if (A0C[4].charAt(13) == 'C') {
            throw new RuntimeException();
        }
        A0C[5] = "hK85U6OgwPHC";
    }

    private EnumC3097qn getNtdIcon() {
        switch (this.A03) {
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

    public final void A04() {
        setVisibility(4);
    }

    public final void A05(float f, int i) {
        this.A0B.A04(f, i);
    }

    public final void A06(C2404fN c2404fN, boolean z, boolean z2) {
        int iA05 = c2404fN.A05(z);
        this.A0B.A05(AbstractC2501gx.A02(iA05, 77), iA05, 110, true);
        this.A07.setColorFilter(iA05);
        if (z2) {
            this.A09.setTextColor(AbstractC2501gx.A02(-1, 110));
        } else {
            this.A09.setTextColor(iA05);
        }
    }

    public final boolean A07() {
        return !this.A09.getText().toString().isEmpty();
    }

    public final boolean A08() {
        return (this.A00 == 2 || this.A00 == 4) ? false : true;
    }

    public int getToolbarActionMode() {
        return this.A00;
    }

    public void setActionClickListener(View.OnClickListener onClickListener) {
        setOnClickListener(onClickListener);
    }

    public void setInitialUnskippableSeconds(int i) {
        if (i > 0) {
            setToolbarActionMode(2);
        }
    }

    public void setNTDStyle(int i) {
        this.A03 = i;
        if (this.A00 == 8) {
            this.A07.setImageBitmap(AbstractC3098qo.A01(getNtdIcon()));
        }
    }

    public void setNTDText(String str) {
        this.A04 = str;
        if (this.A00 == 8) {
            A02();
        }
    }

    public void setProgress(float f) {
        this.A0B.setProgressWithAnimation(f);
    }

    public void setProgressClickListener(View.OnClickListener onClickListener) {
        this.A0B.setOnClickListener(onClickListener);
    }

    public void setProgressImage(EnumC3097qn enumC3097qn) {
        this.A0B.setImage(enumC3097qn);
    }

    public void setProgressImmediate(float f) {
        this.A0B.clearAnimation();
        this.A0B.setProgress(f);
    }

    public void setProgressSpinnerInvisible(boolean z) {
        this.A01 = z;
        A03();
    }

    public void setSkipIconSuppressed(boolean z) {
        this.A02 = z;
        A03();
    }

    public void setToolbarActionMode(int i) {
        EnumC3097qn ntdIcon;
        this.A0A.A0F().AHK(i);
        this.A00 = i;
        A03();
        setVisibility(0);
        this.A07.setImageAlpha(255);
        this.A07.setPadding(A0E, A0E, A0E, A0E);
        if (i != 8) {
            A00();
        }
        switch (i) {
            case 0:
                ntdIcon = EnumC3097qn.CROSS;
                break;
            case 1:
                ntdIcon = !this.A05 ? EnumC3097qn.SKIP_ARROW : EnumC3097qn.REDESIGN_SKIP_ICON;
                break;
            case 2:
            default:
                ntdIcon = EnumC3097qn.CROSS;
                break;
            case 3:
                ntdIcon = EnumC3097qn.MINIMIZE_ARROW;
                break;
            case 4:
                ntdIcon = EnumC3097qn.CROSS;
                this.A07.setVisibility(8);
                setVisibility(8);
                break;
            case 5:
                ntdIcon = EnumC3097qn.CROSS;
                break;
            case 6:
                ntdIcon = EnumC3097qn.CROSS;
                break;
            case 7:
                ntdIcon = EnumC3097qn.CROSS;
                this.A07.setImageAlpha(110);
                this.A07.setPadding(A0D, A0D, A0D, A0D);
                break;
            case 8:
                ntdIcon = getNtdIcon();
                if (A0C[4].charAt(13) == 'C') {
                    throw new RuntimeException();
                }
                String[] strArr = A0C;
                strArr[6] = "";
                strArr[2] = "";
                A02();
                break;
                break;
        }
        this.A07.setImageBitmap(AbstractC3098qo.A01(ntdIcon));
        if (i == 1) {
            AbstractC3086qc.A0H(1005, this.A07);
            setVisibility(0);
        } else if (i != 8) {
            AbstractC3086qc.A0H(1002, this.A07);
        } else {
            AbstractC3086qc.A0H(1009, this.A07);
            setVisibility(0);
        }
    }

    public void setToolbarMessage(String str) {
        this.A09.setText(str);
        this.A09.setVisibility(TextUtils.isEmpty(str) ? 8 : 0);
        this.A06 = false;
    }

    public void setToolbarMessageEnabled(boolean z) {
        this.A09.setVisibility(z ? 0 : 4);
    }
}
