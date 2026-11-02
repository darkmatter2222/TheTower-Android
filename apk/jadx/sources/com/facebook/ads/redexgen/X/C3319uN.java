package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import com.facebook.ads.RewardData;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.uN, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3319uN extends FrameLayout {
    public static String[] A08 = {"Lu0oG19N", "JNY", "Ev6F9eDhg42RHlCeRuJfEtiFO07AluFn", "qSbaO4FE34QcNqD1YWxCxyT8wr5s9kWw", "hZddA1hSD7Y", "v9TnLSaOxYneacolptRVdRHaZQ0ab06L", "iyW9tyIIQvF7WQz3LOxNHXxa074IcWbN", "vzh"};
    public AbstractC3112r2 A00;
    public C3142rW A01;
    public final LA A02;
    public final C1618Hi A03;
    public final InterfaceC3119r9 A04;
    public final InterfaceC3318uM A05;
    public final C1459Be A06;
    public final List<View> A07;

    public C3319uN(C1618Hi c1618Hi, AbstractC3112r2 abstractC3112r2, LA la, C1459Be c1459Be, InterfaceC3119r9 interfaceC3119r9, InterfaceC3318uM interfaceC3318uM, View... viewArr) {
        super(c1618Hi);
        this.A07 = new ArrayList();
        this.A03 = c1618Hi;
        this.A00 = abstractC3112r2;
        this.A02 = la;
        for (View view : viewArr) {
            if (view != null) {
                this.A07.add(view);
            }
        }
        this.A04 = interfaceC3119r9;
        this.A06 = c1459Be;
        this.A05 = interfaceC3318uM;
        A04();
    }

    public C3319uN(C3349ur c3349ur, LA la, C1459Be c1459Be, C1441Am c1441Am, AbstractC3284to abstractC3284to, InterfaceC3119r9 interfaceC3119r9, InterfaceC3318uM interfaceC3318uM) {
        this(c3349ur, la, c1459Be, interfaceC3119r9, interfaceC3318uM, c1441Am, abstractC3284to);
    }

    public C3319uN(C3349ur c3349ur, LA la, C1459Be c1459Be, InterfaceC3119r9 interfaceC3119r9, InterfaceC3318uM interfaceC3318uM, View... viewArr) {
        this(c3349ur.A06(), c3349ur.A0B(), la, c1459Be, interfaceC3119r9, interfaceC3318uM, viewArr);
    }

    private void A04() {
        RewardData rewardDataA1R = this.A02.A1R();
        this.A01 = new C3142rW(this.A03, -1, ViewCompat.MEASURED_STATE_MASK, rewardDataA1R == null ? this.A02.A34().A05() : this.A02.A34().A06(rewardDataA1R.getCurrency(), rewardDataA1R.getQuantity()), null, this.A02.A34().A04(), this.A02.A34().A03(), AbstractC3098qo.A01(EnumC3097qn.REWARD_ICON));
        this.A01.A02.setOnClickListener(new ViewOnClickListenerC3316uK(this));
        this.A01.A01.setOnClickListener(new ViewOnClickListenerC3317uL(this));
        addView(this.A01, new RelativeLayout.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05() {
        if (this.A06 != null) {
            this.A06.A0e(EnumC2378ex.A08);
        }
        this.A05.ADp();
        if (this.A02.A32().A0W()) {
            return;
        }
        this.A02.A3A(this.A04);
    }

    public final void A07(ViewGroup viewGroup) {
        if (this.A06 != null && !this.A06.A0p()) {
            this.A06.A0k(false, false, 11);
            AbstractC3086qc.A0P(this.A06, 4);
        }
        AbstractC3112r2 abstractC3112r2 = this.A00;
        String[] strArr = A08;
        if (strArr[7].length() != strArr[1].length()) {
            throw new RuntimeException();
        }
        A08[0] = "vGH3jzSu";
        if (abstractC3112r2 != null) {
            AbstractC3086qc.A0I(this.A00);
        }
        for (View view : this.A07) {
            view.clearAnimation();
            AbstractC3086qc.A0P(view, 4);
        }
        viewGroup.addView(this, new RelativeLayout.LayoutParams(-1, -1));
        this.A05.AFr();
    }
}
