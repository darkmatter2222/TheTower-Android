package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.widget.RelativeLayout;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.HashMap;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.un, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3345un extends RelativeLayout {
    public static final int A09 = AbstractC3043pv.A0e;
    public static final int A0A = (int) (AbstractC3045px.A02 * 28.0f);
    public static final int A0B = (int) (AbstractC3045px.A02 * 32.0f);
    public C2404fN A00;
    public InterfaceC3344um A01;
    public boolean A02;
    public C3226ss A03;
    public final C1618Hi A04;
    public final InterfaceC2884nG A05;
    public final ViewOnClickListenerC1544El A06;
    public final C3327uV A07;
    public final C3349ur A08;

    public AbstractC3345un(C3349ur c3349ur, boolean z) {
        super(c3349ur.A06());
        this.A08 = c3349ur;
        this.A04 = c3349ur.A06();
        this.A05 = c3349ur.A07();
        this.A00 = c3349ur.A00() == 1 ? c3349ur.A05().A31().A01() : c3349ur.A05().A31().A00();
        this.A02 = z;
        this.A06 = new ViewOnClickListenerC1544El(c3349ur.A06(), c3349ur.A05(), this.A00, c3349ur.A07(), c3349ur.A0C(), c3349ur.A0F(), c3349ur.A0A(), c3349ur.A09());
        this.A06.setRoundedCornersEnabled(A03());
        this.A06.setViewShowsOverMedia(A0H());
        this.A06.setV2Design(A05());
        AbstractC3086qc.A0H(1001, this.A06);
        this.A07 = new C3327uV(this.A04, this.A00, this.A02, A04(), A0A());
        AbstractC3086qc.A0L(this.A07);
    }

    public final C3226ss A00(C1618Hi c1618Hi, LA la, C2892nO c2892nO, EnumC3229sv enumC3229sv, InterfaceC3119r9 interfaceC3119r9) {
        this.A03 = AbstractC3231sx.A01(c1618Hi, true, la, c2892nO, interfaceC3119r9, enumC3229sv, AbstractC3228su.A00(la));
        AbstractC3086qc.A0L(this.A03);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (la.A3S()) {
            layoutParams.setMargins(AbstractC3043pv.A0e, AbstractC3043pv.A0u, 0, 0);
            layoutParams.addRule(10);
            layoutParams.addRule(9);
        } else {
            layoutParams.setMargins(AbstractC3043pv.A0e, 0, 0, AbstractC3043pv.A0e);
            layoutParams.addRule(12);
            layoutParams.addRule(9);
        }
        this.A03.setLayoutParams(layoutParams);
        return this.A03;
    }

    public final C3230sw A01(C1618Hi c1618Hi, EnumC3229sv enumC3229sv) {
        C3230sw c3230swA02 = AbstractC3231sx.A02(c1618Hi, enumC3229sv, this.A08.A05());
        AbstractC3086qc.A0L(c3230swA02);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(AbstractC3043pv.A0e, 0, 0, AbstractC3043pv.A0e);
        layoutParams.addRule(12);
        layoutParams.addRule(9);
        c3230swA02.setLayoutParams(layoutParams);
        return c3230swA02;
    }

    public final void A02(InterfaceC3303u7 interfaceC3303u7) {
        getCtaButton().A0H(interfaceC3303u7);
    }

    public boolean A03() {
        return true;
    }

    public boolean A04() {
        return true;
    }

    public final boolean A05() {
        if (this.A08.A05().A32().A0I().A07() == null) {
            return this.A08.A05().A2o() || this.A08.A05().A2q();
        }
        return this.A08.A05().A2Z();
    }

    public boolean A0A() {
        return true;
    }

    public boolean A0H() {
        return true;
    }

    public EnumC2358ec A1P(String str) {
        return getCtaButton().A0E(str);
    }

    public void A1Q() {
        if (this.A03 != null) {
            this.A03.A0O();
        }
    }

    public void A1R() {
    }

    public void A1S() {
    }

    public void A1T() {
    }

    public void A1U() {
    }

    public void A1V() {
    }

    public void A1W(int i) {
    }

    public void A1X(C2395fE c2395fE, String str, double d, Bundle bundle) {
        this.A07.A04(c2395fE.A0J().A0G(), c2395fE.A0J().A04(), null, false, !A1g() && d > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE && d < 1.0d);
        this.A06.setCta(c2395fE.A0K(), str, new HashMap());
    }

    public void A1Y(C5Y c5y) {
    }

    public void A1Z(BD bd) {
    }

    public void A1a(C5V c5v, int i) {
    }

    public void A1b(boolean z) {
        if (z || this.A03 == null) {
            return;
        }
        this.A03.A0P();
    }

    public void A1c(boolean z) {
    }

    public boolean A1d() {
        return false;
    }

    public boolean A1e() {
        return true;
    }

    public boolean A1f() {
        return false;
    }

    public abstract boolean A1g();

    public boolean A1h(int i, int i2, Intent intent) {
        return false;
    }

    public boolean A1i(boolean z) {
        return false;
    }

    public C1618Hi getAdContextWrapper() {
        return this.A04;
    }

    public InterfaceC2884nG getAdEventManager() {
        return this.A05;
    }

    public int getCloseButtonStyle() {
        return 0;
    }

    public C2404fN getColors() {
        return this.A00;
    }

    public ViewOnClickListenerC1544El getCtaButton() {
        return this.A06;
    }

    public InterfaceC3344um getNtdHideCallback() {
        return this.A01;
    }

    public C3327uV getTitleDescContainer() {
        return this.A07;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.A00 = configuration.orientation == 1 ? this.A08.A05().A31().A01() : this.A08.A05().A31().A00();
        this.A06.setViewShowsOverMedia(A0H());
        this.A06.setUpButtonColors(this.A00);
        this.A07.A03(this.A00, this.A02);
    }

    public void setAccidentalClickCappingListener(InterfaceC2359ed interfaceC2359ed) {
        getCtaButton().getCtaActionHelper().A09(interfaceC2359ed);
    }

    public void setChainedWatchAndBrowseSkippableStatus(boolean z) {
    }

    public void setNtdHideCallback(InterfaceC3344um interfaceC3344um) {
        this.A01 = interfaceC3344um;
    }
}
