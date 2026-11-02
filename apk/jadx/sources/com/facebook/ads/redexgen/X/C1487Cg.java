package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Cg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1487Cg extends FrameLayout implements InterfaceC3120rA {
    public static final RelativeLayout.LayoutParams A0F = new RelativeLayout.LayoutParams(-1, -1);
    public C2658jY A00;
    public InterfaceC3120rA A01;
    public Intent A02;
    public Bundle A03;
    public InterfaceC3120rA A04;
    public final LA A05;
    public final LA A06;
    public final C2418fb A07;
    public final C1618Hi A08;
    public final InterfaceC2884nG A09;
    public final EnumC2955oR A0A;
    public final ViewOnSystemUiVisibilityChangeListenerC3072qO A0B;
    public final InterfaceC3119r9 A0C;
    public final InterfaceC3175s3 A0D;
    public final boolean A0E;

    public C1487Cg(C1618Hi c1618Hi, InterfaceC2884nG interfaceC2884nG, LA la, LA la2, InterfaceC3119r9 interfaceC3119r9, C2658jY c2658jY, EnumC2955oR enumC2955oR) {
        super(c1618Hi);
        this.A08 = c1618Hi;
        this.A09 = interfaceC2884nG;
        this.A06 = la;
        this.A05 = la2;
        this.A07 = this.A05.A32().A0I().A07();
        this.A0C = interfaceC3119r9;
        this.A0B = new ViewOnSystemUiVisibilityChangeListenerC3072qO(this);
        this.A0B.A05(EnumC3071qN.A03);
        this.A0A = enumC2955oR;
        if (this.A0A == EnumC2955oR.A0L) {
            this.A0D = new FG();
        } else {
            this.A0D = new FH();
        }
        boolean z = false;
        if (this.A07 == null) {
            this.A0E = false;
            return;
        }
        if (this.A07.A0g() && this.A05.A2Z()) {
            z = true;
        }
        this.A0E = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InterfaceC3120rA A05(InterfaceC3175s3 interfaceC3175s3, C2418fb c2418fb, Boolean bool, EnumC3151rf enumC3151rf) {
        if (!bool.booleanValue()) {
            return new FS(this.A08, this.A09, this.A0C, this.A05, this.A05.A1u(), interfaceC3175s3, enumC3151rf == EnumC3151rf.A03);
        }
        FM fm = new FM(this.A08, this.A09, this.A0C, this.A05, c2418fb, this.A05.A1u(), interfaceC3175s3);
        fm.setImpressionLogging(enumC3151rf);
        return fm;
    }

    private C13315p A0A() {
        if (this.A07 != null) {
            this.A06.A28(this.A07.A0c());
            this.A06.A29(this.A07.A0h());
        }
        C13315p c13315p = new C13315p(this.A08, this.A0D, this.A09, this.A06, new C2746kz(this.A08), this.A0C);
        c13315p.setVideoLeadingPlayableAdListener(new C1488Ch(this));
        return c13315p;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0B() {
        if (this.A04 != null) {
            this.A04.onDestroy();
            if (this.A04 instanceof View) {
                ((View) this.A04).setVisibility(8);
                removeView((View) this.A04);
            }
        }
    }

    private void A0C(Intent intent, Bundle bundle, C2658jY c2658jY) {
        C2418fb c2418fb = this.A07;
        if (c2418fb == null) {
            return;
        }
        c2418fb.A0W(false);
        this.A04 = A05(this.A0D, c2418fb, Boolean.valueOf(this.A05.A2Z()), EnumC3151rf.A02);
        this.A04.ABc(intent, bundle, c2658jY);
    }

    private void A0D(Intent intent, Bundle bundle, C2658jY c2658jY) {
        this.A04 = A0A();
        this.A04.ABc(intent, bundle, c2658jY);
        if (!this.A0E || this.A07 == null) {
            return;
        }
        this.A01 = A05(this.A0D, this.A07, Boolean.valueOf(this.A05.A2Z()), EnumC3151rf.A03);
        this.A01.ABc(intent, bundle, c2658jY);
    }

    private final void A0E(Intent intent, Bundle bundle, C2658jY c2658jY) {
        if (A0G()) {
            A0C(intent, bundle, c2658jY);
        } else {
            A0D(intent, bundle, c2658jY);
        }
    }

    private boolean A0G() {
        return this.A05.A2j() && this.A07 != null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void ABc(Intent intent, Bundle bundle, C2658jY c2658jY) {
        this.A02 = intent;
        this.A03 = bundle;
        this.A00 = c2658jY;
        this.A0C.A4V(this, A0F);
        A0E(intent, bundle, c2658jY);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void AGF(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void AGp(boolean z) {
        if (this.A04 instanceof FM) {
            this.A04.AGp(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void AKD(Bundle bundle) {
    }

    public InterfaceC3120rA getContentView() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public String getCurrentClientToken() {
        return this.A06.A37();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        if (this.A04 == null) {
            return false;
        }
        this.A04.onActivityResult(i, i2, intent);
        return false;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.A04 instanceof FM) {
            ((FM) this.A04).onConfigurationChanged(configuration);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void onDestroy() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final /* synthetic */ void onStart() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final /* synthetic */ void onStop() {
    }

    public void setListener(InterfaceC3119r9 interfaceC3119r9) {
    }
}
