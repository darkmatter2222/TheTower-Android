package com.facebook.ads.internal.view;

import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import com.facebook.ads.redexgen.X.AbstractC3045px;
import com.facebook.ads.redexgen.X.AbstractC3086qc;
import com.facebook.ads.redexgen.X.AbstractC3112r2;
import com.facebook.ads.redexgen.X.AbstractC3335ud;
import com.facebook.ads.redexgen.X.C1618Hi;
import com.facebook.ads.redexgen.X.C2404fN;
import com.facebook.ads.redexgen.X.C2416fZ;
import com.facebook.ads.redexgen.X.C2425fi;
import com.facebook.ads.redexgen.X.C2892nO;
import com.facebook.ads.redexgen.X.C2989p0;
import com.facebook.ads.redexgen.X.C3110r0;
import com.facebook.ads.redexgen.X.C3156rk;
import com.facebook.ads.redexgen.X.C3165rt;
import com.facebook.ads.redexgen.X.EnumC3097qn;
import com.facebook.ads.redexgen.X.InterfaceC3111r1;
import com.facebook.ads.redexgen.X.InterfaceC3119r9;
import com.facebook.ads.redexgen.X.ViewOnClickListenerC1544El;
import com.facebook.ads.redexgen.X.ViewOnClickListenerC3129rJ;
import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class FullScreenAdToolbar extends AbstractC3112r2 {
    public static byte[] A0B;
    public static String[] A0C = {"elaUgpg", "xyZ5KhWZZkOCw26QnbyRE89VYXYHkT38", "j2Hg99bd5kkvFLrtwtqoGvtE7T", "FtK0h2Y990QReQxCoMrwn7Y", "09p430KvfvIa5D7TMMbG57be7BWhVuc0", "4K9Dg6G4rdQDm1ubILJxRl9GbBVTjarc", "MQsbPX4", "ODYsITK"};
    public static final int A0D;
    public static final int A0E;
    public static final int A0F;
    public static final int A0G;
    public static final int A0H;
    public C3110r0 A00;
    public InterfaceC3111r1 A01;
    public InterfaceC3111r1 A02;
    public C3156rk A03;
    public boolean A04;
    public boolean A05;
    public final RelativeLayout A06;
    public final C2892nO A07;
    public final InterfaceC3119r9 A08;
    public final C3165rt A09;
    public final C2989p0 A0A;

    static {
        A03();
        A0D = (int) (AbstractC3045px.A02 * 10.0f);
        A0H = (int) (AbstractC3045px.A02 * 16.0f);
        A0F = A0H - A0D;
        A0G = (A0H * 2) - A0D;
        A0E = (int) (AbstractC3045px.A02 * 4.0f);
    }

    public FullScreenAdToolbar(C1618Hi c1618Hi, InterfaceC3119r9 interfaceC3119r9, C2892nO c2892nO, int i, int i2, boolean z) {
        super(c1618Hi);
        this.A01 = null;
        this.A04 = true;
        this.A05 = z;
        this.A08 = interfaceC3119r9;
        this.A07 = c2892nO;
        setGravity(16);
        this.A09 = new C3165rt(c1618Hi, i, z);
        this.A09.setContentDescription(A02(0, 8, 50));
        this.A09.setActionClickListener(new ViewOnClickListenerC3129rJ(this));
        if (this.A05) {
            if (i2 != -1) {
                A0G(c1618Hi, i2);
            }
            this.A06 = new RelativeLayout(c1618Hi);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
            layoutParams.weight = 1.0f;
            this.A0A = new C2989p0(c1618Hi);
            AbstractC3086qc.A0H(1006, this.A0A);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams2.gravity = 17;
            this.A0A.setLayoutParams(layoutParams2);
            this.A06.addView(this.A0A);
            addView(this.A06, layoutParams);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams3.setMargins(0, A0H / 2, A0H / 2, A0H / 2);
            addView(this.A09, layoutParams3);
            return;
        }
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.setMargins(A0F, A0F, A0G, A0F);
        addView(this.A09, layoutParams4);
        this.A06 = new RelativeLayout(c1618Hi);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(0, -2);
        layoutParams5.weight = 1.0f;
        this.A0A = new C2989p0(c1618Hi);
        AbstractC3086qc.A0H(1006, this.A0A);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams6.gravity = 17;
        this.A0A.setLayoutParams(layoutParams6);
        this.A06.addView(this.A0A);
        addView(this.A06, layoutParams5);
        if (i2 != -1) {
            A0G(c1618Hi, i2);
        }
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 113);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A0B = new byte[]{-26, Ascii.SI, Ascii.DC2, Ascii.SYN, 8, -61, -28, 7, 56, 75, 86, 85, 88, 90, 6, 39, 74, 77, 72, 72, 69, 59, 58, 75};
    }

    private void A04(View view, boolean z) {
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
    }

    private void setReportingViewColor(View view) {
        if (view != null) {
            AbstractC3086qc.A0T(view, 0, ViewCompat.MEASURED_STATE_MASK, A0E);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public final void A08() {
        super.A08();
        if (this.A00 != null) {
            this.A00.setVisibility(8);
        }
        if (this.A03 != null) {
            this.A03.setVisibility(8);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public final void A09() {
        this.A09.A04();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public final void A0A() {
        if (this.A01 != null) {
            this.A02 = this.A01;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public final void A0B() {
        this.A01 = getToolbarListener();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public final void A0C(float f, int i) {
        this.A09.A05(f, i);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public final void A0D(C2404fN c2404fN, boolean z) {
        boolean z2 = this.A04;
        int iA05 = c2404fN.A05(z2);
        this.A0A.A02(c2404fN.A0B(z2), iA05);
        boolean z3 = this.A05;
        String strA02 = A02(8, 9, 117);
        if (z3) {
            if (this.A03 != null) {
                this.A03.setIconColors(iA05);
                this.A03.setContentDescription(strA02);
            }
        } else if (this.A00 != null) {
            this.A00.setIconColors(iA05);
            this.A00.setContentDescription(strA02);
        }
        this.A09.A06(c2404fN, z2, z);
        if (!z2) {
            AbstractC3086qc.A0O(this, 0);
            return;
        }
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{-1778384896, 0});
        gradientDrawable.setCornerRadius(0.0f);
        AbstractC3086qc.A0W(this, gradientDrawable);
        setReportingViewColor(!this.A05 ? this.A00 : this.A03);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public final boolean A0E() {
        return this.A09.A07();
    }

    public final void A0F(C2416fZ c2416fZ, String str, int i) {
        this.A09.setInitialUnskippableSeconds(i);
        if (this.A05) {
            if (this.A03 != null) {
                this.A03.setAdDetails(c2416fZ, str, this.A07, this.A08);
                return;
            }
            return;
        }
        C3110r0 c3110r0 = this.A00;
        if (A0C[4].charAt(4) != '3') {
            throw new RuntimeException();
        }
        A0C[5] = "bHmrpXXD4QhMP5hP38hyOXYLbga8TEOt";
        if (c3110r0 != null) {
            this.A00.setAdDetails(c2416fZ, str, this.A07, this.A08);
        }
    }

    public final void A0G(C1618Hi c1618Hi, int i) {
        if (this.A00 != null) {
            AbstractC3086qc.A0K(this.A00);
            this.A00.removeAllViews();
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        if (this.A05) {
            this.A03 = new C3156rk(c1618Hi);
            layoutParams.setMargins(A0F, A0F, A0G, A0F);
            addView(this.A03, layoutParams);
        } else {
            this.A00 = new C3110r0(c1618Hi, i);
            layoutParams.setMargins(0, A0H / 2, A0H / 2, A0H / 2);
            addView(this.A00, layoutParams);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public int getToolbarActionMode() {
        return this.A09.getToolbarActionMode();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public int getToolbarHeight() {
        return AbstractC3112r2.A00;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public InterfaceC3111r1 getToolbarListener() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setAdReportingVisible(boolean z) {
        A04(!this.A05 ? this.A00 : this.A03, z);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setCTAClickListener(View.OnClickListener onClickListener) {
        this.A0A.setOnClickListener(onClickListener);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setCTAClickListener(ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        this.A0A.setOnClickListener(AbstractC3335ud.A03(viewOnClickListenerC1544El, A02(17, 7, 104)));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setFullscreen(boolean z) {
        this.A04 = z;
    }

    public void setOnlyPageDetails(C2416fZ c2416fZ) {
        if (c2416fZ != null) {
            this.A0A.setPageDetails(c2416fZ);
        } else {
            this.A0A.A01();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setPageDetails(C2416fZ c2416fZ, String str, int i, C2425fi c2425fi) {
        this.A09.setInitialUnskippableSeconds(i);
        this.A09.setNTDStyle(c2425fi.A00());
        this.A09.setNTDText(c2425fi.A06());
        this.A0A.setPageDetails(c2416fZ);
        if (this.A05) {
            if (this.A03 != null) {
                this.A03.setAdDetails(c2416fZ, str, this.A07, this.A08);
            }
        } else if (this.A00 != null) {
            this.A00.setAdDetails(c2416fZ, str, this.A07, this.A08);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setPageDetailsVisible(boolean z) {
        this.A06.removeAllViews();
        if (z) {
            RelativeLayout relativeLayout = this.A06;
            C2989p0 c2989p0 = this.A0A;
            if (A0C[4].charAt(4) != '3') {
                throw new RuntimeException();
            }
            String[] strArr = A0C;
            strArr[2] = "uYrc95dj4mq6YR3RipRhNZPjST";
            strArr[3] = "ufyXPPKrvmASdIniU0CJIS9";
            relativeLayout.addView(c2989p0);
        }
        C3165rt c3165rt = this.A09;
        String[] strArr2 = A0C;
        if (strArr2[2].length() == strArr2[3].length()) {
            c3165rt.setToolbarMessageEnabled(!z);
        } else {
            A0C[1] = "RoBBOPMqmB8G6B1FErbRchWOJuWn3pgq";
            c3165rt.setToolbarMessageEnabled(!z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setProgress(float f) {
        this.A09.setProgress(f);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setProgressClickListener(View.OnClickListener onClickListener) {
        this.A09.setProgressClickListener(onClickListener);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setProgressImage(EnumC3097qn enumC3097qn) {
        this.A09.setProgressImage(enumC3097qn);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setProgressImmediate(float f) {
        this.A09.setProgressImmediate(f);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setProgressSpinnerInvisible(boolean z) {
        this.A09.setProgressSpinnerInvisible(z);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setSkipIconSuppressed(boolean z) {
        this.A09.setSkipIconSuppressed(z);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setToolbarActionMessage(String str) {
        this.A09.setToolbarMessage(str);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setToolbarActionMode(int i) {
        this.A09.setToolbarActionMode(i);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3112r2
    public void setToolbarListener(InterfaceC3111r1 interfaceC3111r1) {
        this.A02 = interfaceC3111r1;
    }
}
