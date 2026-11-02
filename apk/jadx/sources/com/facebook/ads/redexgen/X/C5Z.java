package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.5Z, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C5Z extends BR {
    public int A00;
    public C2432fp A01;
    public boolean A02;
    public final AbstractC2832mQ<C5Y> A03;
    public final AbstractC2832mQ<C5W> A04;
    public final AbstractC2832mQ<BF> A05;
    public final AbstractC2832mQ<C5V> A06;
    public final AbstractC2832mQ<BA> A07;
    public final AbstractC2832mQ<B8> A08;
    public final AbstractC2832mQ<B7> A09;
    public final AbstractC2832mQ<B2> A0A;
    public final AbstractC2832mQ<B1> A0B;
    public final C1459Be A0C;
    public final BC A0D;
    public final B3 A0E;

    public C5Z(C1618Hi c1618Hi, InterfaceC2884nG interfaceC2884nG, C1459Be c1459Be, String str) {
        this(c1618Hi, interfaceC2884nG, c1459Be, str, 0, 0, false, null, null);
    }

    public C5Z(C1618Hi c1618Hi, InterfaceC2884nG interfaceC2884nG, C1459Be c1459Be, String str, int i, int i2, boolean z, Bundle bundle, Map<String, String> map) {
        super(c1618Hi, interfaceC2884nG, c1459Be, str, !c1459Be.A0n(), i, i2, z, bundle, map, new BQ(c1618Hi, c1459Be));
        this.A0E = new B3() { // from class: com.facebook.ads.redexgen.X.5a
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(B4 b4) {
                this.A00.A0f();
            }
        };
        this.A08 = new C1456Bb(this);
        this.A04 = new C1455Ba(this);
        this.A05 = new BZ(this);
        this.A06 = new BY(this);
        this.A03 = new BX(this);
        this.A07 = new BW(this);
        this.A0A = new BV(this);
        this.A0B = new BU(this);
        this.A09 = new C1458Bd(this);
        this.A0D = new BC() { // from class: com.facebook.ads.redexgen.X.5b
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(BD bd) {
                this.A00.A00 = this.A00.A0C.getDuration();
            }
        };
        this.A02 = false;
        this.A0C = c1459Be;
        this.A0C.getEventBus().A03(this.A0E, this.A06, this.A08, this.A05, this.A04, this.A03, this.A07, this.A0A, this.A0B, this.A0D, this.A09);
        if (C2863mv.A2x(c1618Hi)) {
            this.A01 = new C2432fp(c1459Be, str, z, null);
        }
    }

    public C5Z(C1618Hi c1618Hi, InterfaceC2884nG interfaceC2884nG, C1459Be c1459Be, String str, Bundle bundle, Map<String, String> map) {
        this(c1618Hi, interfaceC2884nG, c1459Be, str, 0, 0, false, bundle, map);
    }

    @Override // com.facebook.ads.redexgen.X.BR
    public final void A0n(EnumC2393fC enumC2393fC, Map<String, String> map) {
        super.A0n(enumC2393fC, map);
        if (this.A01 == null || enumC2393fC != EnumC2393fC.A09) {
            return;
        }
        map.putAll(this.A01.A06());
    }

    public final void A0p() {
        C1457Bc c1457Bc = new C1457Bc(this);
        if (this.A0C.A0r()) {
            ExecutorC3079qV.A00(c1457Bc);
        } else {
            this.A0C.getStateHandler().post(c1457Bc);
        }
    }
}
