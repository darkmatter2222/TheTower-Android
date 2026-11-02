package com.facebook.ads.redexgen.X;

import android.widget.FrameLayout;
import com.facebook.ads.AdClosedListener;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sC, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3184sC extends FrameLayout {
    public static String[] A0E = {"AAeZRN2H16PPhMJrfuA2G4PuGtT4Jjli", "OIhbSlqkB188ZcHiABYu6F5MkKYuApEU", "4dNIifo7dYPF8CZDUdmIVRVLxTf4KjLi", "nNT7Gm4j1GPvPSvjwdusJnzdrzE", "GlaPNPfWvOmZlDbzC", "MG9AH3sD678j7mtR5VZ1R1Wgg0cAPJ", "gwWnxwxKgg1hGV", "MUdeuAMc7brNflaDgveS0ucCfNh"};
    public int A00;
    public AdClosedListener A01;
    public EnumC2481gc A02;
    public C2482gd A03;
    public C2483ge A04;
    public InterfaceC3183sB A05;
    public final C2479ga A06;
    public final C1618Hi A07;
    public final InterfaceC2884nG A08;
    public final InterfaceC3119r9 A09;
    public final InterfaceC3120rA A0A;
    public final String A0B;
    public final C2416fZ A0C;
    public final InterfaceC3186sE A0D;

    public AbstractC3184sC(C1618Hi c1618Hi, InterfaceC2884nG interfaceC2884nG, String str) {
        this(c1618Hi, interfaceC2884nG, str, null, null, null);
    }

    public AbstractC3184sC(C1618Hi c1618Hi, InterfaceC2884nG interfaceC2884nG, String str, C2416fZ c2416fZ, InterfaceC3120rA interfaceC3120rA, InterfaceC3119r9 interfaceC3119r9) {
        super(c1618Hi);
        this.A00 = 0;
        this.A02 = EnumC2481gc.A04;
        this.A04 = null;
        this.A0D = new FF(this);
        this.A07 = c1618Hi;
        this.A08 = interfaceC2884nG;
        this.A0A = interfaceC3120rA;
        this.A09 = interfaceC3119r9;
        this.A0B = str;
        this.A0C = c2416fZ;
        this.A06 = AbstractC2480gb.A00(this.A07.A02());
    }

    public static /* synthetic */ int A02(AbstractC3184sC abstractC3184sC) {
        int i = abstractC3184sC.A00;
        abstractC3184sC.A00 = i + 1;
        return i;
    }

    public static /* synthetic */ int A03(AbstractC3184sC abstractC3184sC) {
        int i = abstractC3184sC.A00;
        abstractC3184sC.A00 = i - 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0E() {
        if (this.A03 == null || !this.A03.A0A()) {
            return;
        }
        this.A08.ABo(this.A0B, this.A03.A02());
        this.A03.A03();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0F() {
        this.A04 = null;
        if (this.A03 != null) {
            this.A03.A05();
        }
        A0O();
        if (A0E[4].length() != 17) {
            throw new RuntimeException();
        }
        String[] strArr = A0E;
        strArr[6] = "T97PvisYvRSslU";
        strArr[5] = "4m6IDlN75J4PWuz7VqWCz3A27IQvrs";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0G(C2483ge c2483ge) {
        if (this.A03 != null) {
            this.A03.A08(this.A02);
        }
        A0Q(c2483ge, this.A02);
        C2375eu.A01(this.A07).A0L();
        if (A0S()) {
            A0E();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0H(C2483ge c2483ge) {
        this.A04 = c2483ge;
        if (this.A03 != null) {
            this.A03.A09(this.A02, this.A00);
        }
        A0R(c2483ge, this.A02);
    }

    public final void A0M() {
        A0E();
    }

    public final void A0N() {
        this.A03 = new C2482gd(new C2892nO(this.A0B, this.A08));
        if (this.A0A != null) {
            this.A0A.AGF(true);
        }
        if (this.A05 != null) {
            this.A05.ADo();
        }
        A0F();
    }

    public abstract void A0O();

    public abstract void A0P();

    public void A0Q(C2483ge c2483ge, EnumC2481gc enumC2481gc) {
        if (this.A01 != null) {
            this.A07.A0F().ACJ();
            this.A01.onAdClosed();
        }
    }

    public abstract void A0R(C2483ge c2483ge, EnumC2481gc enumC2481gc);

    public abstract boolean A0S();

    public void setAdReportingCallbackListener(InterfaceC3183sB interfaceC3183sB) {
        this.A05 = interfaceC3183sB;
    }

    public void setOnAdClosedListener(AdClosedListener adClosedListener) {
        this.A01 = adClosedListener;
    }
}
